/***************************** Include Files *********************************/

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "xparameters.h"
#include "xparameters_ps.h"
#include "xil_types.h"
#include "lwip/err.h"
#include "lwip/tcp.h"
#include "xil_printf.h"
#include "arch/cc.h"
#include "platform_config.h"
#include "xil_cache.h"
#include "xparameters.h"
#include "lwip/tcp.h"
#include "netif/xadapter.h"

#include "xparameters.h"
#include "xscutimer.h"
#include "xil_exception.h"
#include "xil_printf.h"

#include <stdlib.h>
#include "xil_io.h"
#include "xscugic.h"
#include "xil_util.h"
#include "xplatform_info.h"

#include "xiltimer.h"
#include "xinterrupt_wrap.h"

#include "xgpio_l.h"


#include "xaxidma.h"
#include "xdebug.h"

/************************** Constant Definitions *****************************/

#define TIMER_DEVICE_ID     XPAR_SCUTIMER_DEVICE_ID
#define INTC_DEVICE_ID      XPAR_SCUGIC_SINGLE_DEVICE_ID
#define TIMER_INTR_ID     XPAR_SCUTIMER_INTERRUPTS


#define GPIO_REG_BASEADDR	XPAR_XGPIO_0_BASEADDR

#define INTC_BASE_ADDR XPAR_XSCUGIC_0_BASEADDR
#define INTC_DIST_BASE_ADDR XPAR_SCUGIC_DIST_BASEADDR
#define TIMER_DEVICE_ID XPAR_SCUTIMER_DEVICE_ID

#define RX_INTR_ID XPAR_XAXIDMA_0_INTERRUPTS
#define ETH_LINK_DETECT_INTERVAL 4
#define RESET_TIMEOUT_COUNTER	10000
#define TimerIntrId XPAR_SCUTIMER_INTERRUPTS

#define MEM_BASE_ADDR		XPAR_PS7_DDR_0_BASEADDRESS

#define TX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00300000)
#define RX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00250000)
#define RX_BUFFER_HIGH		(MEM_BASE_ADDR + 0x004FFFFF)


#define DMA_DEV_ID		XPAR_AXIDMA_0_DEVICE_ID
#define DDR_BASE_ADDR		XPAR_AXI_DMA_0_BASEADDR
#define MAX_PKT_LEN		32
#define TIMER_LOAD_VALUE 0x4F790D8



/************************** Variable Definitions *****************************/

static XScuTimer Timer; //Timer driver
static XAxiDma AxiDma; //AXIDMA driver


static void RxIntrHandler(void *Callback);
static void TimerCounterHandler(void *Callback, u32_t TmrCtrNumber);

volatile int RxDone;
volatile int TxAck;
volatile int TxPtrOffset;
volatile u32 Error;
volatile int RxBytes;


volatile int TcpFastTmrFlag = 0;
volatile int TcpSlowTmrFlag = 0;

extern struct netif *echo_netif;


void timer_callback(){
    static int DetectEthLinkStatus = 0;
        /* we need to call tcp_fasttmr & tcp_slowtmr at intervals specified by lwIP.
        * It is not important that the timing is absoluetly accurate.
        */
        static int odd = 1;
        DetectEthLinkStatus++;
        TcpFastTmrFlag = 1;

        odd = !odd;
        if (odd) {
            TcpSlowTmrFlag = 1;
        }

        /* For detecting Ethernet phy link status periodically */
        if (DetectEthLinkStatus == ETH_LINK_DETECT_INTERVAL) {
            eth_link_detect(echo_netif);
            DetectEthLinkStatus = 0;
        }
}

static void TimerCounterHandler(void *CallBackRef, u32_t TmrCtrNumber)
{
	timer_callback();
}




void print_app_header()
{
	xil_printf("\n\r\n\r-----lwIP TCP echo server ------\n\r");

	xil_printf("TCP packets sent to port 6001 will be echoed back\n\r");
}

static void RxIntrHandler(void *Callback)
{
	u32 IrqStatus;
	int TimeOut;
	XAxiDma *AxiDmaInst = (XAxiDma *)Callback;

	/* Read pending interrupts */
	IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DEVICE_TO_DMA);

	/* Acknowledge pending interrupts */
	XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DEVICE_TO_DMA);

	/*
	 * If no interrupt is asserted, we do not do anything
	 */
	if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) {
		return;
	}

	/*
	 * If error interrupt is asserted, raise error flag, reset the
	 * hardware to recover from the error, and return with no further
	 * processing.
	 */
	if ((IrqStatus & XAXIDMA_IRQ_ERROR_MASK)) {

		Error = 1;

		/* Reset could fail and hang
		 * NEED a way to handle this or do not call it??
		 */
		XAxiDma_Reset(AxiDmaInst);

		TimeOut = RESET_TIMEOUT_COUNTER;

		while (TimeOut) {
			if (XAxiDma_ResetIsDone(AxiDmaInst)) {
				break;
			}

			TimeOut -= 1;
		}

		return;
	}

	/*
	 * If completion interrupt is asserted, then set RxDone flag
	 */
	if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) {

		RxDone = 1;
        RxBytes=RxBytes+32;
        //xil_printf("Transfer completed!\n");
	}
}


err_t recv_callback(void *arg, struct tcp_pcb *tpcb,
                               struct pbuf *p, err_t err)
{

    int Status;
    int BytesLeft;
    RxDone=0;
    u16 *RxBufferPtr;
    RxBufferPtr = (u16 *)RX_BUFFER_BASE;
    u16 Index = 0;
    static u32 select = 0;
    int result = 0;
    int i = 0;
    RxBytes=0;
    int TimeOut;

	/* do not read the packet if we are not in ESTABLISHED state */
	if (!p) {
		tcp_close(tpcb);
		tcp_recv(tpcb, NULL);
		return ERR_OK;
	}
        /*
    	XAxiDma_Reset(&AxiDma);

		TimeOut = RESET_TIMEOUT_COUNTER;

		while (TimeOut) {
			if (XAxiDma_ResetIsDone(&AxiDma)) {
				break;
			}

			TimeOut -= 1;
		}*/


	/* indicate that the packet has been received */
	tcp_recved(tpcb, p->len);

    
    if (p != NULL) {
        unsigned char *data = (unsigned char *)p->payload; // Your byte array
        int length = p->len; // Number of bytes

        result = 0;
        for (int i = 0; i < length; i++) {
            result = (result << 8) | data[i];
        }
    }

    pbuf_free(p);
    //xil_printf("Size of DAS_v0 %d \n",result);
    i=0;

    
    select =  (select + 1) % 2; 
    XGpio_WriteReg((GPIO_REG_BASEADDR),
	XGPIO_DATA_OFFSET, (select));
   

    while (i<result) {
        /*Read data from PL */
	    Status = XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR) RxBufferPtr+i,
						32, XAXIDMA_DEVICE_TO_DMA);

        Xil_DCacheInvalidateRange((UINTPTR)RxBufferPtr+i, 32);

        if (Status != XST_SUCCESS) {
            xil_printf("DMA FAIL %d \n\r",Status);
	    }
        
        else {
            i+=32;
        }


    }
    

    /*
    for (Index = 0; Index < result/2; Index=Index+1) {

		xil_printf("%d: %x\r\n",
				   Index,  RxBufferPtr[Index]);
	}*/


    
    while (RxBytes<result) {
    }

    select =  (select + 1) % 2; 
    XGpio_WriteReg((GPIO_REG_BASEADDR),
	XGPIO_DATA_OFFSET, (select));

    TxAck=0;
    TxPtrOffset=0;
   
    
    err = tcp_write(tpcb, RxBufferPtr+TxPtrOffset,32, 1);
    tcp_output(tpcb);
   




	return ERR_OK;
}


err_t sent_callback(void *arg, struct tcp_pcb *tpcb,uint16_t length)
{

    err_t err;
    u16 *RxBufferPtr;
    RxBufferPtr = (u16 *)RX_BUFFER_BASE;
    TxPtrOffset=TxPtrOffset+length;

    if (TxPtrOffset<RxBytes){
        if ((RxBytes-TxPtrOffset)>256){
            err = tcp_write(tpcb, RxBufferPtr+TxPtrOffset,256, 1);
            tcp_output(tpcb);
        }
        else {
            err = tcp_write(tpcb, RxBufferPtr+TxPtrOffset,(RxBytes-TxPtrOffset), 1);
            tcp_output(tpcb);
        }
    }

	return ERR_OK;
}


err_t accept_callback(void *arg,struct tcp_pcb *newpcb, err_t err)
{

	/* Sets the callback function that will be called when new data
  arrives. The callback function will be passed a NULL pbuf to
  indicate that the remote host has closed the connection. If
  there are no errors and the callback function is to return
  ERR_OK, then it must free the pbuf. Otherwise, it must not
  free the pbuf so that lwIP core code can store it. */
	tcp_recv(newpcb, recv_callback);


    /* Specifies the callback function that should be called when data
     has successfully been received (i.e., acknowledged) by the remote host.
      The len argument passed to the callback function gives the amount bytes
       that was acknowledged by the last acknowledgment. */
    tcp_sent(newpcb,sent_callback);

	/* just use an integer number indicating the connection id as the
	   callback argument */
	tcp_arg(newpcb, NULL);
	return ERR_OK;
}




void init_timer()
{
	/* Calibrate the platform timer for 250 ms */
	XTimer_SetInterval(250);
	XTimer_SetHandler(TimerCounterHandler, 0, XINTERRUPT_DEFAULT_PRIORITY);
}





err_t platform_setup_DMA(){
    int Status;
    XAxiDma_Config *Config;
    u16 *RxBufferPtr;
	RxBufferPtr = (u16 *)RX_BUFFER_BASE;

    
	Config = XAxiDma_LookupConfig(XPAR_XAXIDMA_0_BASEADDR);
	if (!Config) {
		xil_printf("No config found for %d\r\n", XPAR_XAXIDMA_0_BASEADDR);

		return XST_FAILURE;
	}

	/* Initialize DMA engine */
	Status = XAxiDma_CfgInitialize(&AxiDma, Config);

	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed %d\r\n", Status);
		return XST_FAILURE;
	}

	if (XAxiDma_HasSg(&AxiDma)) {
		xil_printf("Device configured as SG mode \r\n");
		return XST_FAILURE;
	}

	/* Set up Interrupt system  */
	Status = XSetupInterruptSystem(&AxiDma, &RxIntrHandler,
				       Config->IntrId[0], Config->IntrParent,
				       XINTERRUPT_DEFAULT_PRIORITY);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/* Disable all interrupts before setup */
	XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
			    XAXIDMA_DEVICE_TO_DMA);

	/* Enable all interrupts */
	
	XAxiDma_IntrEnable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
			   XAXIDMA_DEVICE_TO_DMA);

    /* Flush the buffers before the DMA transfer, in case the Data Cache
	 * is enabled
	 */
	Xil_DCacheFlushRange((UINTPTR)RxBufferPtr, MAX_PKT_LEN);
}

int init_platform()
{
    int Status;

    xil_printf("Setting up timer!\n\r");
	init_timer();

    xil_printf("Setting up DMA!\n\r");
    platform_setup_DMA();
	return XST_SUCCESS;

}


err_t start_application() {

    struct tcp_pcb *pcb;
	err_t err;
	unsigned port = 7;
  

    xil_printf("\r\n--- Initialzing  THIS IS DAS!!! --- \r\n");
	    
	/* A new TCP connection identifier (i.e., a protocol control block - PCB) is created with the
    tcp_new(). This PCB can then be either set to listen for new incoming connections or be explicitly connected to another host.*/
	pcb = tcp_new_ip_type(IPADDR_TYPE_ANY);
	if (!pcb) {
		xil_printf("Error creating PCB. Out of Memory\n\r");
		return -1;
	}

	/* Binds the pcb to a local IP address and port number. The IP address can be specified as IP_ADDR_ANY in order to bind the connection to all local IP addresses.
     If another connection is bound to the same port, the function will return ERR_USE, otherwise ERR_OK is returned. */
	err = tcp_bind(pcb, IP_ANY_TYPE, port);
	if (err != ERR_OK) {
		xil_printf("Unable to bind to port %d: err = %d\n\r", port, err);
		return -2;
	}

	/* we do not need any arguments to callback functions */
	tcp_arg(pcb, NULL);


	/* listen for connections */
	pcb = tcp_listen(pcb);
	if (!pcb) {
		xil_printf("Out of memory while tcp_listen\n\r");
		return -3;
	}

	/* Specified the callback function that should be called when a new connection arrives on a listening connection. */
	tcp_accept(pcb,accept_callback);


	xil_printf("TCP echo server started @ port %d\n\r", port);

	return 0;
}


