module para_adder_4 (
	input [3:0] a,
	input [3:0] b,
	input cin,
	output [3:0] sum,
	output [3:0] cout
);

fa i0 (.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(cout[0]));
fa i1 (.a(a[1]), .b(b[1]), .cin(cout[0]), .sum(sum[1]), .cout(cout[1]));
fa i2 (.a(a[2]), .b(b[2]), .cin(cout[1]), .sum(sum[2]), .cout(cout[2]));
fa i3 (.a(a[3]), .b(b[3]), .cin(cout[2]), .sum(sum[3]), .cout(cout[3]));

endmodule
