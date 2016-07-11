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

wire		[7:0] bubble_out_data;
wire			  bubble_out_valid;

Bubble_Sort_FSM bs(
	.clk(clk),
	.rst_n(rst_n),
	.in_valid(in_valid),
	.in_data(in_data),
	.out_valid(bubble_out_valid),
	.out_data(bubble_out_data)
	);

always @(posedge clk) begin
	if (!rst_n) begin
		out_valid <= 'd0;
		out_data <= 'd0;
	end
	else begin
		out_valid <= bubble_out_valid;
		out_data <= bubble_out_data;
	end
end


endmodule 