
#include <stdio.h>
#include "xparameters.h"
#include "netif/xadapter.h"
#include "platform_config.h"
#include "xaxidma.h"
#include "xil_exception.h"
#include "xdebug.h"
#include "xil_util.h"
#include "xinterrupt_wrap.h"
#include "xscugic.h"
#include "xil_printf.h"
#include "lwip/tcp.h"
#include "xil_cache.h"

#ifdef XPAR_UARTNS550_0_BASEADDR
    #include "xuartns550_l.h"       /* to use uartns550 */
#endif


/* defined by each RAW mode application */
void print_app_header();
int init_platform();
int transfer_data();
err_t start_application();

void init_timer();
void tcp_fasttmr(void);
void tcp_slowtmr(void);

/* missing declaration in lwIP */
void lwip_init();


extern volatile int TcpFastTmrFlag;
extern volatile int TcpSlowTmrFlag;
static struct netif server_netif;
struct netif *echo_netif;


void print_ip(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf("%d.%d.%d.%d\n\r", ip4_addr1(ip), ip4_addr2(ip),
		   ip4_addr3(ip), ip4_addr4(ip));
}

void print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{

	print_ip("Board IP: ", ip);
	print_ip("Netmask : ", mask);
	print_ip("Gateway : ", gw);
}


#if defined (__arm__) && !defined (ARMR5)
#if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
int ProgramSi5324(void);
int ProgramSfpPhy(void);
#endif
#endif


int main()
    {
    ip_addr_t ipaddr, netmask, gw;
    echo_netif = &server_netif;
    xil_printf("In main!\n\r");

    /* the mac address of the board. this should be unique per board */
	unsigned char mac_ethernet_address[] =
	{ 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };

    #if defined (__arm__) && !defined (ARMR5)
    #if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
	ProgramSi5324();
	ProgramSfpPhy();
    #endif
    #endif

	/* initialize IP addresses to be used */
	IP4_ADDR(&ipaddr,  192, 168,   1, 10);
	IP4_ADDR(&netmask, 255, 255, 255,  0);
	IP4_ADDR(&gw,      192, 168,   1,  1);

	print_app_header();

	lwip_init();
    init_platform();

	/* Add network interface to the netif_list, and set it as default */
    if (!xemac_add(echo_netif, &ipaddr, &netmask, &gw, mac_ethernet_address,0xe000b000)) {
          xil_printf("Error adding N/W interface\n\r");
          return -1;
    }

    netif_set_default(echo_netif);

	/* specify that the network if is up */
	netif_set_up(echo_netif);

	print_ip_settings(&ipaddr, &netmask, &gw);

    start_application();

	/* receive and process packets */
	while (1) {
		if (TcpFastTmrFlag) {
			tcp_fasttmr();
			TcpFastTmrFlag = 0;
		}
		if (TcpSlowTmrFlag) {
			tcp_slowtmr();
			TcpSlowTmrFlag = 0;
		}
		xemacif_input(echo_netif);
	}


	return 0;
}
