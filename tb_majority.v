module tb_majority;
	reg A, B, C;	//input is reg in test bench
	wire Y;	//output is wire in test bench

	//instantiate the design under test (dut)
	majority dut(
		.A(A),
		.B(B),
		.C(C),
		.Y(Y)
	);

	//stimulus block
	initial begin
		$display("A B C | Y");
		$display("---------------------");

		//Apply all 8 input combinations
		A=0; B=0; C=0; #10 $display("%b %b %b | %b", A,B,C,Y);
		A=0; B=0; C=1; #10 $display("%b %b %b | %b", A,B,C,Y);
		A=0; B=1; C=0; #10 $display("%b %b %b | %b", A,B,C,Y);
		A=0; B=1; C=1; #10 $display("%b %b %b | %b", A,B,C,Y);
		A=1; B=0; C=0; #10 $display("%b %b %b | %b", A,B,C,Y);
		A=1; B=0; C=1; #10 $display("%b %b %b | %b", A,B,C,Y);
		A=1; B=1; C=0; #10 $display("%b %b %b | %b", A,B,C,Y);
		A=1; B=1; C=1; #10 $display("%b %b %b | %b", A,B,C,Y);
		$finish; //end simulation
	end
endmodule
