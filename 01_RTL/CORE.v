module CORE(
  clk,
  rst_n,
  in_valid,
  in_data,
  out_valid,
  out_data
);
input             clk;
input             rst_n;
input             in_valid;
input       [7:0] in_data;
output  reg       out_valid;
output  reg [7:0] out_data;

endmodule 