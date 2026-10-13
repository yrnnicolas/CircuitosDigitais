`default_nettype none

module ndr_hex_invert (
    input  wire [6:0] segments_i,
    input  wire       dot_i,
    output wire [6:0] segments_o,
    output wire       dot_o
);

    assign segments_o = ~segments_i;
    assign dot_o      = ~dot_i;

endmodule

`default_nettype wire
