`timescale 1ns/1ps // setting time unit as 1ns and time precision as 1ps

module tb_fa (); //instantiating verilog testbench

reg a, b, cin;  // outputs to be sent to design environment; stored in testbench
wire sum, cout;   // input received from design environment;

fa dut (.a(a), .cout(cout), .b(b), .sum(sum), .cin(cin));
initial 
	begin
		$monitor("time = %d, a = %b, b = %b, cin = %b, sum = %b, cout = %b ", $time, a, b, cin, sum, cout);
	end
	
initial
	begin
		a = 0; b = 0; cin = 0; // at time interval 0 ns
		#10 //assign after 10ns delay
		a = 0; b = 1; cin = 1;// at time interval 10 ns
		#10
		a = 1; b = 0; cin = 0;// at time interval 20 ns
		#10 
		a = 1; b = 1; cin = 1;// at time interval 30 ns
		#10
		$finish;      // at time interval 40 ns
	end

initial
	begin
		$dumpfile("fa.vcd");
		$dumpvars;
	end
endmodule
	
	
