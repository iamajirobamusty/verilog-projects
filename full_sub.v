module full_sub (
	input wire A,
	input wire B,
	input wire Bin,
	output wire D,
	output wire Bout
);
assign D = A ^ B ^ Bin;
assign Bout = (~A & B) | (~(A ^ B) & Bin);
endmodule
