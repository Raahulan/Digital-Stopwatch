module clk_divider (
	clk,
	rst,
	clk_out
);
	parameter N = 26;
	input wire clk;
	input wire rst;
	output wire clk_out;
	reg [N - 1:0] count;
	always @(posedge clk or posedge rst)
		if (rst)
			count <= 0;
		else
			count <= count + 1;
	assign clk_out = count[N - 1];
endmodule
