module ha (
	input a,
	input b,
	output sum,
	output carry
);

assign sum = a ^ b;  // sum is xor of both inputs
assign carry = a & b;

endmodule
