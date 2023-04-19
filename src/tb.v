`timescale 1ns/1ps
`default_nettype none
module tb(
    input clk,
    input reset,
    input [3:0] din,
    input valid,
    input toggle,
    output [7:0] dout
  );

  initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0, tb);
  end

  my_design dut(
    `ifdef GL_TEST
            .vccd1( 1'b1),
            .vssd1( 1'b0),
        `endif
              .io_in({toggle, valid, reset, clk, din}),
              .io_out(dout)
            );


endmodule
