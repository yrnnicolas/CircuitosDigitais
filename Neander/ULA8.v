module ULA8(

	input [7:0]a,b,
	input [2:0]Sel,
	output [7:0]S,
	output N,Z
);

wire cb;

wire [7:0]op1, op2, op3, op4, op5, op6, op7;

assign op1 = a ^ b;
assign op2 = a | b;
assign op3 = a & b;
assign op4 = ~a;
assign op5 = b;

SomadorSubtrator somaSubInstancia(

	.A(a),
	.B(b),
	.Sel(Sel[0]),
	.S(op6),
	.CB(cb)
);

mult multInstacia(
	
	.A(a[3:0]),
	.B(b[3:0]),
	.S(op7)
);


mux8 muxInstancia(

	.A(op1), //xor
	.B(op2), //or
	.C(op3), //a and b
	.D(op4), // ~a
	.E(op5), // b
	.F(op6), // a - b
	.G(op6), // a + b
	.H(op7), // a * b
	.Sel(Sel),
	.S(S)
);

assign N = S[7];

assign Z = (8'b00000000 == S);


endmodule