`timescale 1ns/1ps // setting time unit as 1ns and time precision as 1ps

module tb_para_adder_4 (); //instantiating verilog testbench

reg [3:0] a, b;  // outputs to be sent to design environment; stored in testbench
reg cin;  
wire [3:0] sum, cout;   // input received from design environment;

para_adder_4 dut (.a(a), .cout(cout), .b(b), .sum(sum), .cin(cin));
initial 
	begin
		$monitor("time = %d, a = %d, b = %d, cin = %d, sum = %d, cout = %d ", $time, a, b, cin, sum, cout);
	end
	
initial
	begin
		a = 0; b = 0; cin = 0; // at time interval 0 ns
		#10 //assign after 10ns delay
		a = 1; b = 1; // at time interval 10 ns
		#10
		a = 2; b = 2;// at time interval 20 ns
		#10 
		a = 4 ; b = 4;// at time interval 30 ns
		#10
		a = 5 ; b = 5;
		#10
		a = 6 ; b = 6;
		#10
		a = 7 ; b = 7;
		#10
		a = 8 ; b = 8;
		#10
		a = 9 ; b = 9;
		#10
		$finish;      // at time interval 40 ns
	end

initial
	begin
		$dumpfile("para_adder_4.vcd");
		$dumpvars;
	end
endmodule
	
	
