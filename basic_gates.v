module basic_gates (
	input wire A, B,
	output wire AND_out,
	output wire OR_out,
	output wire NOTA_out,
	output wire NAND_out,
	output wire NOR_out,
	output wire XOR_out,
	output wire XNOR_out
);
assign AND_out = A & B;
assign OR_out = A | B;
assign NOTA_out = ~A;
assign NAND_out = ~(A & B);
assign NOR_out = ~(A | B);
assign XOR_out = A ^ B;
assign XNOR_out = ~(A ^ B);

endmodule
