`timescale 1ns/1ps // setting time unit as 1ns and time precision as 1ps

module tb_ha (); //instantiating verilog testbench

reg a, b;  // outputs to be sent to design environment; stored in testbench
wire sum, carry;   // input received from design environment;

ha dut (.a(a), .carry(carry), .b(b), .sum(sum));
initial 
	begin
		$monitor("time = %d ,a = %b, b = %b, sum = %b, carry = %b ", $time, a, b, sum, carry);
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
		$dumpfile("ha.vcd");
		$dumpvars;
	end
endmodule
	
	
