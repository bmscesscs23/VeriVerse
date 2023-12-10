// NAND gate with 3 inputs and 1 output

module nand_3 (
	input a,
	input b,
	input c,
	output d
);

// d = !(a.b.c)

assign d = !(a & b & c);

endmodule  
