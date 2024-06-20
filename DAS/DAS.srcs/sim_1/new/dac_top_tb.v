`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2024 10:20:03 PM
// Design Name: 
// Module Name: dac_top_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module dac_top_tb;

// Testbench uses reg for inputs and wire for outputs
reg clk_tb;
reg reset_n_tb;
// Uncomment if send_en is used in your implementation
reg send_en_tb;

// Outputs to monitor
wire ldac_n_tb;
wire mosi_tb;
wire sclk_tb;
wire [0:0] ss_n_tb;

// Instantiate the Unit Under Test (UUT)
dac_top uut (
    .clk(clk_tb),
    .reset_n(reset_n_tb),
    .send_en(send_en_tb), // Uncomment if used
    .ldac_n(ldac_n_tb),
    .mosi(mosi_tb),
    .sclk(sclk_tb),
    .ss_n(ss_n_tb)
);

// Clock generation
initial begin
    clk_tb = 0;
    forever #5 clk_tb = ~clk_tb; // Generate a clock with a period of 10ns
end

// Test sequence
initial begin
    // Initialize Inputs
    reset_n_tb = 0;
    send_en_tb = 0; // Uncomment if used

    // Wait 100 ns for global reset to finish
    #100;
    
    // De-assert reset
    reset_n_tb = 1;

    // Add further test commands here
    // e.g., Toggle send_en, if it's part of your design
    // Infinite loop to keep the testbench running
    forever begin
        // Wait for 1000 clock cycles - Assumes clk period is already defined
        #(1000); // 10 is the clock period in time units, adjust if different

        // Toggle send_en_tb to high
        send_en_tb = 1'b1;

        // Short pulse or period for which send_en_tb remains high
        #(50); // send_en_tb high for one clock period, adjust if needed

        // Reset send_en_tb to low
        send_en_tb = 1'b0;
    end
    

    // Finish simulation after some time
    #1000000000;
    $finish;
end

// Optionally, add initial block for dumping waveforms
//initial begin
//    $dumpfile("dac_top_tb.vcd");
//    $dumpvars(0, dac_top_tb);
//end

endmodule

