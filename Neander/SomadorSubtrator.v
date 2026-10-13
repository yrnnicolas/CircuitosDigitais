module SomadorSubtrator(

	input [7:0]A,B,
	input Sel,
	output [7:0]S,
	output CB
);



assign {CB, S} = Sel ? (A - B) : (A + B);



endmodule