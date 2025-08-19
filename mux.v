module mux2to1 (
	input wire I0,
	input wire I1,
	input wire S,
	output wire Y
);
assign Y = (S) ? I0 : I1;
endmodule
