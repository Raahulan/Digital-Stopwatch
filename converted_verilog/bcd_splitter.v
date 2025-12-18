module bcd_splitter (
	binary_in,
	tens,
	units
);
	input wire [5:0] binary_in;
	output wire [3:0] tens;
	output wire [3:0] units;
	assign tens = binary_in / 10;
	assign units = binary_in % 10;
endmodule
