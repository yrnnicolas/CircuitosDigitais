`default_nettype none

module ndr_alu_code (
    input  wire       pass_y_i,
    input  wire       add_i,
    input  wire       and_i,
    input  wire       or_i,
    input  wire       not_i,
    output reg  [2:0] mode_o
);

    localparam ALU_Y   = 3'd0;
    localparam ALU_ADD = 3'd1;
    localparam ALU_AND = 3'd2;
    localparam ALU_OR  = 3'd3;
    localparam ALU_NOT = 3'd4;

    always @(*) begin
        casez ({not_i, or_i, and_i, add_i, pass_y_i})
            5'b1????: mode_o = ALU_NOT;
            5'b01???: mode_o = ALU_OR;
            5'b001??: mode_o = ALU_AND;
            5'b0001?: mode_o = ALU_ADD;
            default:  mode_o = ALU_Y;
        endcase
    end

endmodule

`default_nettype wire
