`default_nettype none

module ndr_hex_core (
    input  wire       enable_i,
    input  wire [3:0] value_i,
    input  wire       dot_i,
    output reg        dot_o,
    output reg  [6:0] segments_o
);

    function [6:0] glyph;
        input [3:0] value;
        begin
            case (value)
                4'h0: glyph = 7'b0111111;
                4'h1: glyph = 7'b0000110;
                4'h2: glyph = 7'b1011011;
                4'h3: glyph = 7'b1001111;
                4'h4: glyph = 7'b1100110;
                4'h5: glyph = 7'b1101101;
                4'h6: glyph = 7'b1111101;
                4'h7: glyph = 7'b0000111;
                4'h8: glyph = 7'b1111111;
                4'h9: glyph = 7'b1101111;
                4'hA: glyph = 7'b1110111;
                4'hB: glyph = 7'b1111100;
                4'hC: glyph = 7'b0111001;
                4'hD: glyph = 7'b1011110;
                4'hE: glyph = 7'b1111001;
                4'hF: glyph = 7'b1110001;
                default: glyph = 7'b0000000;
            endcase
        end
    endfunction

    always @(*) begin
        dot_o      = enable_i & dot_i;
        segments_o = enable_i ? glyph(value_i) : 7'b0000000;
    end

endmodule

`default_nettype wire
