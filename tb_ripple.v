module tb_ripple;
	reg [3:0] A, B;
	reg Cin;
	wire [3:0] sum;
	wire Cout;

	ripple_adder dut (
		.A(A),
		.B(B),
		.Cin(Cin),
		.sum(sum),
		.Cout(Cout)
	);

	initial begin
		//monitor prints whenever a value changes
		$monitor("Time=%0t | A=%b B=%B CIN=%B || SUM=%B COUT=%B", $time, A,B,Cin,sum,Cout);

		//Test1
		A = 4'B0000; B = 4'B0000; Cin = 4'B0000; #10;

		//Test2
		A = 4'B0101; B = 4'B0011; Cin = 0; #10;
		//Expected output 0101 + 0011 = 100
		
		//Test3
		A = 4'B1111; B = 4'B0001; Cin = 0; #10;
		//Expected output 1111 + 0001 = 0000 

		//Test 4
		A = 4'B1010; B = 4'b0101; Cin = 1; #10;


		//Test5
		A = 4'B1111; B = 4'B1111; Cin = 1; #10;
		//Expected output 1111 + 1111 + 1 = 1111 + 1111 = 1111 (Sum
		//= 1111, count = 1

		$finish;
	end
endmodule
