// testbench for or_2.v; recreate the truth table 
`timescale 1ns/1ps // setting time unit as 1ns and time precision as 1ps

module tb_or_2 (); //instantiating verilog testbench

reg a,b;  // outputs to be sent to design environment; stored in testbench
wire c;   // input received from design environment;

// or_2 dut (a, b, c); // calling verilog module or_2
or_2 dut (.a(a), .c(c), .b(b));
initial 
	begin
		$monitor("time = %d ,a = %b, b = %b, c = %b ", $time, a, b, c);
	end
	
initial
	begin
		a = 0; b = 0; // at time interval 0 ns
		#10 //assign after 10ns delay
		a = 0; b = 1; // at time interval 10 ns
		#10
		a = 1; b = 0; // at time interval 20 ns
		#10 
		a = 1; b = 1; // at time interval 30 ns
		#10
		$finish;      // at time interval 40 ns
	end

initial
	begin
		$dumpfile("or_2.vcd"); // create a file called "or_2.vcd" which contains results stored to be displayed by waveform (gtkwave)
		$dumpvars; // dump variables a, b, c into dumpfile "or_2.vcd"
	end
endmodule
	
	
