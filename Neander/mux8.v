module mux8(

	input [7:0]A,B,C,D,E,F,G,H,
	input [2:0]Sel,
	output [7:0]S
);

assign S = Sel[2] ? (Sel[1] ? (Sel[0] ? H : G) : (Sel[0] ? F : E)) : (Sel[1] ? (Sel[0] ? D : C) : (Sel[0] ? B : A));


endmodule