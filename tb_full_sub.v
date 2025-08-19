module tb_full_sub;
	reg A, B, Bin;
	wire D,Bout;

	full_sub dut (
		.A(A),
		.B(B),
		.Bin(Bin),
		.D(D),
		.Bout(Bout)
	);

	initial begin
		$display("A B BIN | D BOUT");
		$display("------------------");

		A = 0; B = 0; Bin = 0; #10 $display("%B %B %B %B %B", A,B,Bin,D,Bout);
		A = 0; B = 0; Bin = 1; #10 $display("%B %B %B %B %B", A,B,Bin,D,Bout);
		A = 0; B = 1; Bin = 0; #10 $display("%B %B %B %B %B", A,B,Bin,D,Bout);
		A = 0; B = 1; Bin = 1; #10 $display("%B %B %B %B %B", A,B,Bin,D,Bout);
		A = 1; B = 0; Bin = 0; #10 $display("%B %B %B %B %B", A,B,Bin,D,Bout);
		A = 1; B = 0; Bin = 1; #10 $display("%B %B %B %B %B", A,B,Bin,D,Bout);
		A = 1; B = 1; Bin = 0; #10 $display("%B %B %B %B %B", A,B,Bin,D,Bout);
		A = 1; B = 1; Bin = 1; #10 $display("%B %B %B %B %B", A,B,Bin,D,Bout);
		$finish;
	end
endmodule
