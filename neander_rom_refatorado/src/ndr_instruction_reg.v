`default_nettype none

module ndr_ri (
    input  wire       clk_i,
    input  wire       rst_i,
    input  wire       load_i,
    input  wire [7:0] data_i,
    output reg  [7:0] data_o,
    output wire [3:0] opcode_o
);

    assign opcode_o = data_o[7:4];

    always @(posedge clk_i or posedge rst_i) begin
        if (rst_i)
            data_o <= 8'h00;
        else if (load_i)
            data_o <= data_i;
    end

endmodule

`default_nettype wire
