// testbench for nand_3.v; recreate the truth table 
`timescale 1ns/1ps // setting time unit as 1ns and time precision as 1ps

module tb_nand_3 (); //instantiating verilog testbench

reg a, b, c;  // outputs to be sent to design environment; stored in testbench
wire d;   // input received from design environment;

// or_2 dut (a, b, c); // calling verilog module nand_3
nand_3 dut (.a(a), .c(c), .b(b), .d(d));
initial 
	begin
		$monitor("time = %d ,a = %b, b = %b, c = %b, d = %b", $time, a, b, c, d);
	end
	
initial
	begin
		a = 0; b = 0; c = 0; // at time interval 0 ns
		#10 //assign after 10ns delay
		a = 0; b = 1; c = 1; // at time interval 10 ns
		#10
		a = 1; b = 0; c = 0; // at time interval 20 ns
		#10 
		a = 1; b = 1; c = 1;// at time interval 30 ns
		#10
		$finish;      // at time interval 40 ns
	end

initial
	begin
		$dumpfile("nand_3.vcd"); // create a file called "nand_3.vcd" which contains results stored to be displayed by waveform (gtkwave)
		$dumpvars; // dump variables a, b, c, d into dumpfile "nand_3.vcd"
	end
endmodule
	
	
