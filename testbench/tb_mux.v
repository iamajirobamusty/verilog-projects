module rp_mux2to1;
	reg I0, I1, S;
	wire Y;

	mux2to1 uut (
		.I0(I0),
		.I1(I1),
		.S(S),
		.Y(Y)
	);

	initial begin
		$display("S I0 I1 Y");
		$display("---------");

		I0=0; I1=0; S=0; #10;
		$display("%b %b %b | %b", S, I0, I1, Y);

		I0=0; I1=1; S=0; #10;
		$display("%b %b %b | %b", S, I0, I1, Y);

		I0=1; I1=0; S=0; #10;
		$display("%b %b %b | %b", S, I0, I1, Y);

		I0=1; I1=1; S=0; #10;
		$display("%b %b %b | %b", S, I0, I1, Y);

		I0=0; I1=0; S=1; #10;
		$display("%b %b %b | %b", S, I0, I1, Y);

		I0=0; I1=1; S=1; #10;
		$display("%b %b %b | %b", S, I0, I1, Y);

		I0=1; I1=0; S=1; #10;
		$display("%b %b %b | %b", S, I0, I1, Y);

		I0=1; I1=1; S=1; #10;
		$display("%b %b %b | %b", S, I0, I1, Y);

		$finish;

	end
endmodule
