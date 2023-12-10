// OR gate with 2 inputs and 1 output

module or_2 (
	input a,
	input b,
	output c
);

// c = a | b  or  c = a + b

or i1 (c, a, b); // in-built-module-name module-instance-name (out, in1, in2); 

endmodule  
