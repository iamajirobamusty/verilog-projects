module majority (
	input wire A,
	input wire B,
	input wire C,
	output wire Y
);
assign Y = (A & B) | (A & C) | (B & C);
endmodule
