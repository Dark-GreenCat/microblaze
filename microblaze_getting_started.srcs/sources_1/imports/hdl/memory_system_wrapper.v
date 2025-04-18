//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
//Date        : Fri Apr 18 10:20:05 2025
//Host        : edabk running 64-bit CentOS Linux release 7.9.2009 (Core)
//Command     : generate_target memory_system_wrapper.bd
//Design      : memory_system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module memory_system_wrapper
   (MATRIX_REGFILE_PORT_addr,
    MATRIX_REGFILE_PORT_clk,
    MATRIX_REGFILE_PORT_din,
    MATRIX_REGFILE_PORT_dout,
    MATRIX_REGFILE_PORT_en,
    MATRIX_REGFILE_PORT_we,
    UART_rxd,
    UART_txd,
    VECTOR_REGFILE_PORT_addr,
    VECTOR_REGFILE_PORT_clk,
    VECTOR_REGFILE_PORT_din,
    VECTOR_REGFILE_PORT_dout,
    VECTOR_REGFILE_PORT_en,
    VECTOR_REGFILE_PORT_we,
    c0_ddr4_ui_clk,
    clk_clk_n,
    clk_clk_p,
    ddr4_sdram_c0_act_n,
    ddr4_sdram_c0_adr,
    ddr4_sdram_c0_ba,
    ddr4_sdram_c0_bg,
    ddr4_sdram_c0_ck_c,
    ddr4_sdram_c0_ck_t,
    ddr4_sdram_c0_cke,
    ddr4_sdram_c0_cs_n,
    ddr4_sdram_c0_dq,
    ddr4_sdram_c0_dqs_c,
    ddr4_sdram_c0_dqs_t,
    ddr4_sdram_c0_odt,
    ddr4_sdram_c0_par,
    ddr4_sdram_c0_reset_n,
    dst_vector_reg_addr,
    rst_n,
    src_matrix_reg_addr,
    src_vector_reg_addr,
    start_matrix_mult_request);
  input [1:0]MATRIX_REGFILE_PORT_addr;
  input MATRIX_REGFILE_PORT_clk;
  input [4095:0]MATRIX_REGFILE_PORT_din;
  output [4095:0]MATRIX_REGFILE_PORT_dout;
  input MATRIX_REGFILE_PORT_en;
  input [511:0]MATRIX_REGFILE_PORT_we;
  input UART_rxd;
  output UART_txd;
  input [3:0]VECTOR_REGFILE_PORT_addr;
  input VECTOR_REGFILE_PORT_clk;
  input [1023:0]VECTOR_REGFILE_PORT_din;
  output [1023:0]VECTOR_REGFILE_PORT_dout;
  input VECTOR_REGFILE_PORT_en;
  input [127:0]VECTOR_REGFILE_PORT_we;
  output c0_ddr4_ui_clk;
  input clk_clk_n;
  input clk_clk_p;
  output ddr4_sdram_c0_act_n;
  output [16:0]ddr4_sdram_c0_adr;
  output [1:0]ddr4_sdram_c0_ba;
  output [1:0]ddr4_sdram_c0_bg;
  output ddr4_sdram_c0_ck_c;
  output ddr4_sdram_c0_ck_t;
  output ddr4_sdram_c0_cke;
  output ddr4_sdram_c0_cs_n;
  inout [71:0]ddr4_sdram_c0_dq;
  inout [17:0]ddr4_sdram_c0_dqs_c;
  inout [17:0]ddr4_sdram_c0_dqs_t;
  output ddr4_sdram_c0_odt;
  output ddr4_sdram_c0_par;
  output ddr4_sdram_c0_reset_n;
  output [3:0]dst_vector_reg_addr;
  input rst_n;
  output [3:0]src_matrix_reg_addr;
  output [3:0]src_vector_reg_addr;
  output [0:0]start_matrix_mult_request;

  wire [1:0]MATRIX_REGFILE_PORT_addr;
  wire MATRIX_REGFILE_PORT_clk;
  wire [4095:0]MATRIX_REGFILE_PORT_din;
  wire [4095:0]MATRIX_REGFILE_PORT_dout;
  wire MATRIX_REGFILE_PORT_en;
  wire [511:0]MATRIX_REGFILE_PORT_we;
  wire UART_rxd;
  wire UART_txd;
  wire [3:0]VECTOR_REGFILE_PORT_addr;
  wire VECTOR_REGFILE_PORT_clk;
  wire [1023:0]VECTOR_REGFILE_PORT_din;
  wire [1023:0]VECTOR_REGFILE_PORT_dout;
  wire VECTOR_REGFILE_PORT_en;
  wire [127:0]VECTOR_REGFILE_PORT_we;
  wire c0_ddr4_ui_clk;
  wire clk_clk_n;
  wire clk_clk_p;
  wire ddr4_sdram_c0_act_n;
  wire [16:0]ddr4_sdram_c0_adr;
  wire [1:0]ddr4_sdram_c0_ba;
  wire [1:0]ddr4_sdram_c0_bg;
  wire ddr4_sdram_c0_ck_c;
  wire ddr4_sdram_c0_ck_t;
  wire ddr4_sdram_c0_cke;
  wire ddr4_sdram_c0_cs_n;
  wire [71:0]ddr4_sdram_c0_dq;
  wire [17:0]ddr4_sdram_c0_dqs_c;
  wire [17:0]ddr4_sdram_c0_dqs_t;
  wire ddr4_sdram_c0_odt;
  wire ddr4_sdram_c0_par;
  wire ddr4_sdram_c0_reset_n;
  wire [3:0]dst_vector_reg_addr;
  wire rst_n;
  wire [3:0]src_matrix_reg_addr;
  wire [3:0]src_vector_reg_addr;
  wire [0:0]start_matrix_mult_request;

  memory_system memory_system_i
       (.MATRIX_REGFILE_PORT_addr(MATRIX_REGFILE_PORT_addr),
        .MATRIX_REGFILE_PORT_clk(MATRIX_REGFILE_PORT_clk),
        .MATRIX_REGFILE_PORT_din(MATRIX_REGFILE_PORT_din),
        .MATRIX_REGFILE_PORT_dout(MATRIX_REGFILE_PORT_dout),
        .MATRIX_REGFILE_PORT_en(MATRIX_REGFILE_PORT_en),
        .MATRIX_REGFILE_PORT_we(MATRIX_REGFILE_PORT_we),
        .UART_rxd(UART_rxd),
        .UART_txd(UART_txd),
        .VECTOR_REGFILE_PORT_addr(VECTOR_REGFILE_PORT_addr),
        .VECTOR_REGFILE_PORT_clk(VECTOR_REGFILE_PORT_clk),
        .VECTOR_REGFILE_PORT_din(VECTOR_REGFILE_PORT_din),
        .VECTOR_REGFILE_PORT_dout(VECTOR_REGFILE_PORT_dout),
        .VECTOR_REGFILE_PORT_en(VECTOR_REGFILE_PORT_en),
        .VECTOR_REGFILE_PORT_we(VECTOR_REGFILE_PORT_we),
        .c0_ddr4_ui_clk(c0_ddr4_ui_clk),
        .clk_clk_n(clk_clk_n),
        .clk_clk_p(clk_clk_p),
        .ddr4_sdram_c0_act_n(ddr4_sdram_c0_act_n),
        .ddr4_sdram_c0_adr(ddr4_sdram_c0_adr),
        .ddr4_sdram_c0_ba(ddr4_sdram_c0_ba),
        .ddr4_sdram_c0_bg(ddr4_sdram_c0_bg),
        .ddr4_sdram_c0_ck_c(ddr4_sdram_c0_ck_c),
        .ddr4_sdram_c0_ck_t(ddr4_sdram_c0_ck_t),
        .ddr4_sdram_c0_cke(ddr4_sdram_c0_cke),
        .ddr4_sdram_c0_cs_n(ddr4_sdram_c0_cs_n),
        .ddr4_sdram_c0_dq(ddr4_sdram_c0_dq),
        .ddr4_sdram_c0_dqs_c(ddr4_sdram_c0_dqs_c),
        .ddr4_sdram_c0_dqs_t(ddr4_sdram_c0_dqs_t),
        .ddr4_sdram_c0_odt(ddr4_sdram_c0_odt),
        .ddr4_sdram_c0_par(ddr4_sdram_c0_par),
        .ddr4_sdram_c0_reset_n(ddr4_sdram_c0_reset_n),
        .dst_vector_reg_addr(dst_vector_reg_addr),
        .rst_n(rst_n),
        .src_matrix_reg_addr(src_matrix_reg_addr),
        .src_vector_reg_addr(src_vector_reg_addr),
        .start_matrix_mult_request(start_matrix_mult_request));
endmodule
