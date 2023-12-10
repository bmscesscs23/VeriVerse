// AND gate with 2 inputs and 1 output

module and_2 (
	input a,
	input b,
	output c
);

// c = a & b

and a1 (c, a, b); // in-built-module-name module-instance-name (out, in1, in2); 

endmodule  
