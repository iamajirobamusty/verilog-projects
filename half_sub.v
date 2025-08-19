module half_sub (
	input wire A,
	input wire B,
	output wire D,
	output wire Bout
);
assign D = A ^ B;
assign Bout = ~A & B;
endmodule
