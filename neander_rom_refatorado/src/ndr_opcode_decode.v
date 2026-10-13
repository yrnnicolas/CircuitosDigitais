`default_nettype none

module ndr_opcode_decode (
    input  wire [3:0] opcode_i,
    output wire       nop_o,
    output wire       sta_o,
    output wire       lda_o,
    output wire       add_o,
    output wire       or_o,
    output wire       and_o,
    output wire       not_o,
    output wire       jmp_o,
    output wire       jn_o,
    output wire       jz_o,
    output wire       hlt_o
);

    localparam OP_NOP = 4'h0;
    localparam OP_STA = 4'h1;
    localparam OP_LDA = 4'h2;
    localparam OP_ADD = 4'h3;
    localparam OP_OR  = 4'h4;
    localparam OP_AND = 4'h5;
    localparam OP_NOT = 4'h6;
    localparam OP_JMP = 4'h8;
    localparam OP_JN  = 4'h9;
    localparam OP_JZ  = 4'hA;
    localparam OP_HLT = 4'hF;

    assign nop_o = (opcode_i == OP_NOP);
    assign sta_o = (opcode_i == OP_STA);
    assign lda_o = (opcode_i == OP_LDA);
    assign add_o = (opcode_i == OP_ADD);
    assign or_o  = (opcode_i == OP_OR);
    assign and_o = (opcode_i == OP_AND);
    assign not_o = (opcode_i == OP_NOT);
    assign jmp_o = (opcode_i == OP_JMP);
    assign jn_o  = (opcode_i == OP_JN);
    assign jz_o  = (opcode_i == OP_JZ);
    assign hlt_o = (opcode_i == OP_HLT);

endmodule

`default_nettype wire
