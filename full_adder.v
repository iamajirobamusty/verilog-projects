module full_adder (
	input wire A,
	input wire B,
	input wire Cin,
	output wire sum,
	output wire Cout
);
assign sum = A ^ B ^ Cin;
assign Cout = (A & B) | (A & Cin) | (B & Cin);

endmodule
