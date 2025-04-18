//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
//Date        : Fri Apr 18 10:34:02 2025
//Host        : edabk running 64-bit CentOS Linux release 7.9.2009 (Core)
//Command     : generate_target memory_system_top_wrapper.bd
//Design      : memory_system_top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module memory_system_top_wrapper
   (SYSCLK0_300_N,
    SYSCLK0_300_P,
    USB_UART_RX,
    USB_UART_TX,
    c0_ddr4_act_n,
    c0_ddr4_adr,
    c0_ddr4_ba,
    c0_ddr4_bg,
    c0_ddr4_ck_c,
    c0_ddr4_ck_t,
    c0_ddr4_cke,
    c0_ddr4_cs_n,
    c0_ddr4_dq,
    c0_ddr4_dqs_c,
    c0_ddr4_dqs_t,
    c0_ddr4_odt,
    c0_ddr4_parity,
    c0_ddr4_reset_n);
  input SYSCLK0_300_N;
  input SYSCLK0_300_P;
  input USB_UART_RX;
  output USB_UART_TX;
  output c0_ddr4_act_n;
  output [16:0]c0_ddr4_adr;
  output [1:0]c0_ddr4_ba;
  output [1:0]c0_ddr4_bg;
  output c0_ddr4_ck_c;
  output c0_ddr4_ck_t;
  output c0_ddr4_cke;
  output c0_ddr4_cs_n;
  inout [71:0]c0_ddr4_dq;
  inout [17:0]c0_ddr4_dqs_c;
  inout [17:0]c0_ddr4_dqs_t;
  output c0_ddr4_odt;
  output c0_ddr4_parity;
  output c0_ddr4_reset_n;

  wire SYSCLK0_300_N;
  wire SYSCLK0_300_P;
  wire USB_UART_RX;
  wire USB_UART_TX;
  wire c0_ddr4_act_n;
  wire [16:0]c0_ddr4_adr;
  wire [1:0]c0_ddr4_ba;
  wire [1:0]c0_ddr4_bg;
  wire c0_ddr4_ck_c;
  wire c0_ddr4_ck_t;
  wire c0_ddr4_cke;
  wire c0_ddr4_cs_n;
  wire [71:0]c0_ddr4_dq;
  wire [17:0]c0_ddr4_dqs_c;
  wire [17:0]c0_ddr4_dqs_t;
  wire c0_ddr4_odt;
  wire c0_ddr4_parity;
  wire c0_ddr4_reset_n;
  wire c0_ddr4_ui_clk;
  reg rst_n = 0;
  reg [63:0] clk_counter = 0;

  always @(posedge c0_ddr4_ui_clk) begin
    clk_counter <= clk_counter + 1;
    if (clk_counter == 64'h10) begin
      rst_n <= 1;
    end
    if (clk_counter == 64'hFFFFFFFFFFFFFFFF) begin
      clk_counter <= 64'h11;
    end
  end

  memory_system_top memory_system_top_i
       (.SYSCLK0_300_N(SYSCLK0_300_N),
        .SYSCLK0_300_P(SYSCLK0_300_P),
        .USB_UART_RX(USB_UART_RX),
        .USB_UART_TX(USB_UART_TX),
        .c0_ddr4_act_n(c0_ddr4_act_n),
        .c0_ddr4_adr(c0_ddr4_adr),
        .c0_ddr4_ba(c0_ddr4_ba),
        .c0_ddr4_bg(c0_ddr4_bg),
        .c0_ddr4_ck_c(c0_ddr4_ck_c),
        .c0_ddr4_ck_t(c0_ddr4_ck_t),
        .c0_ddr4_cke(c0_ddr4_cke),
        .c0_ddr4_cs_n(c0_ddr4_cs_n),
        .c0_ddr4_dq(c0_ddr4_dq),
        .c0_ddr4_dqs_c(c0_ddr4_dqs_c),
        .c0_ddr4_dqs_t(c0_ddr4_dqs_t),
        .c0_ddr4_odt(c0_ddr4_odt),
        .c0_ddr4_parity(c0_ddr4_parity),
        .c0_ddr4_reset_n(c0_ddr4_reset_n),
        .c0_ddr4_ui_clk(c0_ddr4_ui_clk),
        .rst_n(rst_n));
endmodule
