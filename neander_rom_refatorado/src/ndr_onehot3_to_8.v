`default_nettype none

module ndr_onehot3_to_8 (
    input  wire [2:0] value_i,
    output reg  [7:0] mask_o
);

    always @(*) begin
        case (value_i)
            3'd0: mask_o = 8'b0000_0001;
            3'd1: mask_o = 8'b0000_0010;
            3'd2: mask_o = 8'b0000_0100;
            3'd3: mask_o = 8'b0000_1000;
            3'd4: mask_o = 8'b0001_0000;
            3'd5: mask_o = 8'b0010_0000;
            3'd6: mask_o = 8'b0100_0000;
            3'd7: mask_o = 8'b1000_0000;
            default: mask_o = 8'b0000_0000;
        endcase
    end

endmodule

`default_nettype wire
