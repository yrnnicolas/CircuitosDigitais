`default_nettype none

module ndr_hex_digit (
    input  wire [3:0] value_i,
    input  wire       enable_i,
    input  wire       dot_i,
    output wire [6:0] hex_o,
    output wire       dot_o
);

    wire [6:0] lit_segments;
    wire       lit_dot;

    ndr_hex_core u_core (
        .enable_i   (enable_i),
        .value_i    (value_i),
        .dot_i      (dot_i),
        .dot_o      (lit_dot),
        .segments_o (lit_segments)
    );

    ndr_hex_invert u_polarity (
        .segments_i (lit_segments),
        .dot_i      (lit_dot),
        .segments_o (hex_o),
        .dot_o      (dot_o)
    );

endmodule

`default_nettype wire
