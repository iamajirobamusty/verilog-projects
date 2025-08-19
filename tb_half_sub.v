module tb_half_sub;
	reg A, B;
	wire D, Bout;

	half_sub dut (
		.A(A),
		.B(B),
		.D(D),
		.Bout(Bout)
	);

	initial begin
		$display("A B | D BOUT");
		$display("---------------");

		A = 0; B = 0; #10; $display("%B %B | %B %B", A,B,D,Bout);
		A = 0; B = 1; #10; $display("%B %B | %B %B", A,B,D,Bout);
		A = 1; B = 0; #10; $display("%B %B | %B %B", A,B,D,Bout);
		A = 1; B = 1; #10; $display("%B %B | %B %B", A,B,D,Bout);
		$finish;
	end
endmodule
