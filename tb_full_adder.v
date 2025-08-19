module tb_full_adder;
	reg A, B, Cin;
	wire Cout, sum;

	full_adder dut (
		.A(A),
		.B(B),
		.Cin(Cin),
		.sum(sum),
		.Cout(Cout)
	);

	initial begin
		$display("A B Cin | SUM COUT ");
		$display("___________________");

		A = 0; B = 0; Cin = 0; #10 $display("%b %b %b | %b %b", A,B,Cin,sum,Cout);
		A = 0; B = 0; Cin = 1; #10 $display("%b %b %b | %b %b", A,B,Cin,sum,Cout);
	 	A = 0; B = 1; Cin = 0; #10 $display("%b %b %b | %b %b", A,B,Cin,sum,Cout);
		A = 0; B = 1; Cin = 1; #10 $display("%b %b %b | %b %b", A,B,Cin,sum,Cout);
		A = 1; B = 0; Cin = 0; #10 $display("%b %b %b | %b %b", A,B,Cin,sum,Cout);
		A = 1; B = 0; Cin = 1; #10 $display("%b %b %b | %b %b", A,B,Cin,sum,Cout);
		A = 1; B = 1; Cin = 0; #10 $display("%b %b %b | %b %b", A,B,Cin,sum,Cout);
		A = 1; B = 1; Cin = 1; #10 $display("%b %b %b | %b %b", A,B,Cin,sum,Cout);
		
		$finish;
	end
endmodule

