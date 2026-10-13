module Temporizador (
    input clk,
    input rst,
    input goto,
	 
    output reg [7:0]tempo
);

reg [2:0] t;

always @(posedge clk) 
begin

    if (rst | goto)
        t <= 3'b0;
    else
        t <= t + 1'b1;  
end

always @(*) begin
    case(t)
        3'h0: tempo = 8'b00000001;
        3'h1: tempo = 8'b00000010;
        3'h2: tempo = 8'b00000100;
        3'h3: tempo = 8'b00001000;
        3'h4: tempo = 8'b00010000;
        3'h5: tempo = 8'b00100000;
        3'h6: tempo = 8'b01000000;
        3'h7: tempo = 8'b10000000;
    endcase
end


endmodule