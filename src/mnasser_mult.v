`default_nettype none

module mnasser_mult(
    input [7:0] io_in,
    output [7:0] io_out
  );


  wire clk = io_in[0];
  wire reset = io_in[1];
  wire data = io_in[7:2];
  reg [7:0] count_reg;

  always @(posedge clk) begin
    if (reset) begin
        count_reg <= {2'b00,data};
    end
    else begin
        count_reg <= count_reg + 1;
    end
  end


  seg7 seg7(.counter(count_reg[3:0]), .segments(io_out[6:0]));

endmodule
