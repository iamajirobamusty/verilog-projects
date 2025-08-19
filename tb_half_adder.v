module tb_half_adder;
	reg A, B;
	wire sum, carry;

	half_adder dut (
		.A(A),
		.B(B),
		.sum(sum),
		.carry(carry)
	);

	initial begin
		$display("A B | SUM CARRY");

		A = 0; B = 0; #10;$display("A=%b B=%b SUM=%b CARRY=%b", A,B,sum,carry);
		A = 0; B = 1; #10;$display("A=%b B=%b SUM=%b CARRY=%b", A,B,sum,carry);
		A = 1; B = 0; #10;$display("A=%b B=%b SUM=%b CARRY=%b", A,B,sum,carry);
		A = 1; B = 1; #10;$display("A=%b B=%b SUM=%b CARRY=%b", A,B,sum,carry);

		$finish;
	end

endmodule
