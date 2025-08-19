module mux4 (
	input wire I0, I1,I2,I3, S0, S1,
	output wire Y
);
//assign Y = (S1 == 0 && S1 = 0) ? I0 : (S1 = 0 && S1 = 1) ? I1 : (S1 = 1 && S1 = 0) ? I2 : I3;
always @(*) begin
	case ({S1, S0})
		2'b00: Y = I0;
		2'b01: Y = I1;
		2'b10: Y = I2;
		2'b11: Y = I3;
	endcase
endmodule
