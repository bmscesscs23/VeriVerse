module fa (
	input a,
	input b,
	input cin,
	output sum,
	output cout
);

wire ha_sum;
wire ha_carry;
wire temp;

ha i1 (.a(a),.b(b),.sum(ha_sum),.carry(ha_carry));

assign sum = ha_sum ^ cin;
assign temp = ha_sum & cin;
assign cout = temp | ha_carry;

endmodule 
