`default_nettype none

module ndr_alu (
    input  wire [7:0] a_i,
    input  wire [7:0] b_i,
    input  wire [2:0] mode_i,
    output reg  [7:0] result_o,
    output wire       n_o,
    output wire       z_o
);

    localparam MODE_Y   = 3'd0;
    localparam MODE_ADD = 3'd1;
    localparam MODE_AND = 3'd2;
    localparam MODE_OR  = 3'd3;
    localparam MODE_NOT = 3'd4;

    always @(*) begin
        result_o = 8'h00;
        case (mode_i)
            MODE_Y:   result_o = b_i;
            MODE_ADD: result_o = a_i + b_i;
            MODE_AND: result_o = a_i & b_i;
            MODE_OR:  result_o = a_i | b_i;
            MODE_NOT: result_o = ~a_i;
            default:  result_o = 8'h00;
        endcase
    end

    assign n_o = result_o[7];
    assign z_o = ~(|result_o);

endmodule

`default_nettype wire
