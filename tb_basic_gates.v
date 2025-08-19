module tb_basic_gates;
	reg A, B;
	wire AND_out, OR_out, NOTA_out, NAND_out, NOR_out, XOR_out, XNOR_out;

	//instantiate the gates module
	basic_gates uut (
		.A(A), .B(B),
		.AND_out(AND_out),
		.OR_out(OR_out),
		.NOTA_out(NOTA_out),
		.NAND_out(NAND_out),
		.NOR_out(NOR_out),
		.XOR_out(XOR_out),
		.XNOR_out(XNOR_out)
	);

	initial begin
		$monitor("A=%B B=%B | AND=%B OR=%B NOTA=%B NAND=%B NOR=%B XOR=%B XNOR=%B",
			A, B, AND_out, OR_out, NOTA_out, NAND_out, NOR_out, XOR_out, XNOR_out);

		//test all combinations
		A = 0; B = 0; #10;
		A = 0; B = 1; #10;
		A = 1; B = 0; #10;
		A = 1; B = 1; #10;

		$finish;
	end
endmodule

