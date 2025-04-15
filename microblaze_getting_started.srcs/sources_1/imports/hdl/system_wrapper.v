//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
//Date        : Tue Apr 15 04:18:11 2025
//Host        : edabk running 64-bit CentOS Linux release 7.9.2009 (Core)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (clk_clk_n,
    clk_clk_p,
    clk_out,
    rs232_uart_rxd,
    rs232_uart_txd,
    rst_n);
  input clk_clk_n;
  input clk_clk_p;
  output clk_out;
  input rs232_uart_rxd;
  output rs232_uart_txd;
  input rst_n;

  wire clk_clk_n;
  wire clk_clk_p;
  wire clk_out;
  wire rs232_uart_rxd;
  wire rs232_uart_txd;
  wire rst_n;

  system system_i
       (.clk_clk_n(clk_clk_n),
        .clk_clk_p(clk_clk_p),
        .clk_out(clk_out),
        .rs232_uart_rxd(rs232_uart_rxd),
        .rs232_uart_txd(rs232_uart_txd),
        .rst_n(rst_n));
endmodule
