`timescale 1ns / 1ps

module sim_top_u250 ();

  reg  sys_clk_p;
  reg  sys_clk_n;
  wire uart_tx;
  wire uart_rx;

  initial begin
    sys_clk_p = 1'b0;
    sys_clk_n = 1'b1;
    #5;
    forever begin
      #5 sys_clk_p = ~sys_clk_p;
      #5 sys_clk_n = ~sys_clk_n;
    end
  end

  top_u250 top_u250_i (
      .SYSCLK0_300_N(sys_clk_n),
      .SYSCLK0_300_P(sys_clk_p),
      .USB_UART_RX  (uart_rx),
      .USB_UART_TX  (uart_tx)
  );
endmodule
