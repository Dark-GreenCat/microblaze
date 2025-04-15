`timescale 1ns / 1ps

module top_u250 (
    input  SYSCLK0_300_N,
    input  SYSCLK0_300_P,
    input  USB_UART_RX,
    output USB_UART_TX
);
  wire clk_out;
  reg rst_n = 1'b0;
  reg [31:0] counter = 32'd0;
  
  always @(posedge clk_out) begin
    if (counter == 32'd10) begin
      rst_n <= 1'b1;
    end else begin
      counter <= counter + 1;
    end
  end

  system_wrapper system_wrapper_i (
      .clk_clk_n(SYSCLK0_300_N),
      .clk_clk_p(SYSCLK0_300_P),
      .clk_out(clk_out),
      .rs232_uart_rxd(USB_UART_RX),
      .rs232_uart_txd(USB_UART_TX),
      .rst_n(rst_n)
  );
endmodule
