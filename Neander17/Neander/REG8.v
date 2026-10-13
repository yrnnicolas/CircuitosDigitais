module REG8 #(parameter WIDTH = 8)
(
	input clk,
	input rst,
	input ena,
	input [WIDTH-1:0]data_i,
	
	output [WIDTH-1:0]data_o
);

reg [WIDTH-1:0]data;

always @(posedge clk)
begin

if(rst == 1)
	data = {WIDTH{1'b0}};
else if(ena == 1)
	data = data_i;
else 
	data = data;
end 

assign data_o = data;


endmodule

