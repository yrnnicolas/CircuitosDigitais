module Memoria (
    input clk,
    input [7:0] addr,
    input [7:0] data_in,
    input re,
    input we,
    output reg [7:0] data_out
);

reg [7:0] mem [0:255];

always @(posedge clk) begin
    if (we)
        mem[addr] <= data_in;

    if (re)
        data_out <= mem[addr];
end

endmodule