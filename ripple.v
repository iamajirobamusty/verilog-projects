module ripple_adder (
	input wire [3:0] A,
	input wire [3:0] B,
	input wire Cin,
	output wire [3:0] sum,
	output wire Cout
);
wire c1, c2, c3;
full_adder FA0(.A(A[0]), .B(B[0]), .Cin(Cin), .sum(sum[0]), .Cout(c1));
full_adder FA1(.A(A[1]), .B(B[1]), .Cin(c1), .sum(sum[1]), .Cout(c2));
full_adder FA2(.A(A[2]), .B(B[2]), .Cin(c2), .sum(sum[2]), .Cout(c3));
full_adder FA3(.A(A[3]), .B(B[3]), .Cin(c3), .sum(sum[3]), .Cout(Cout));
endmodule 
