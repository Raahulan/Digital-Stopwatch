module digital_clock_tb;
	reg clk = 0;
	reg rst = 0;
	wire [6:0] seg_sec_unit;
	wire [6:0] seg_sec_tens;
	wire [6:0] seg_min_unit;
	wire [6:0] seg_min_tens;
	wire [6:0] seg_hour_unit;
	wire [6:0] seg_hour_tens;
	digital_clock_top dut(
		.clk(clk),
		.rst(rst),
		.seg_sec_unit(seg_sec_unit),
		.seg_sec_tens(seg_sec_tens),
		.seg_min_unit(seg_min_unit),
		.seg_min_tens(seg_min_tens),
		.seg_hour_unit(seg_hour_unit),
		.seg_hour_tens(seg_hour_tens)
	);
	localparam CLK_PERIOD = 10;
	initial forever #(5) clk = ~clk;
	initial begin
		$dumpfile("digital_clock.vcd");
		$dumpvars(0, dut);
		rst = 1;
		#(50)
			;
		rst = 0;
		#(10000000)
			;
		$finish;
	end
endmodule
