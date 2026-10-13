`default_nettype none

module ndr_control_unit (
    input  wire       nop_i,
    input  wire       sta_i,
    input  wire       lda_i,
    input  wire       add_i,
    input  wire       or_i,
    input  wire       and_i,
    input  wire       not_i,
    input  wire       jmp_i,
    input  wire       jn_i,
    input  wire       jz_i,
    input  wire       hlt_i,
    input  wire       n_i,
    input  wire       z_i,
    input  wire [10:0] phase_i,
    output reg        mar_sel_o,
    output reg        mar_load_o,
    output reg        mdr_load_o,
    output reg        ir_load_o,
    output reg        acc_load_o,
    output reg        nz_load_o,
    output reg        pc_load_o,
    output reg        pc_inc_o,
    output reg        alu_y_o,
    output reg        alu_add_o,
    output reg        alu_or_o,
    output reg        alu_and_o,
    output reg        alu_not_o,
    output reg        cycle_end_o,
    output reg        halt_o
);

    wire t0  = phase_i[0];
    wire t1  = phase_i[1];
    wire t2  = phase_i[2];
    wire t3  = phase_i[3];
    wire t4  = phase_i[4];
    wire t5  = phase_i[5];
    wire t6  = phase_i[6];
    wire t7  = phase_i[7];
    wire t9  = phase_i[9];
    wire t10 = phase_i[10];

    wire mem_operand = lda_i | add_i | or_i | and_i;
    wire jump_true   = jmp_i | (jn_i & n_i) | (jz_i & z_i);
    wire jump_false  = (jn_i & ~n_i) | (jz_i & ~z_i);

    always @(*) begin
        mar_sel_o   = 1'b0;
        mar_load_o  = 1'b0;
        mdr_load_o  = 1'b0;
        ir_load_o   = 1'b0;
        acc_load_o  = 1'b0;
        nz_load_o   = 1'b0;
        pc_load_o   = 1'b0;
        pc_inc_o    = 1'b0;
        alu_y_o     = 1'b0;
        alu_add_o   = 1'b0;
        alu_or_o    = 1'b0;
        alu_and_o   = 1'b0;
        alu_not_o   = 1'b0;
        cycle_end_o = 1'b0;
        halt_o      = 1'b0;

        mar_sel_o  = t7 & mem_operand;
        mar_load_o = t0 | (t4 & (mem_operand | jump_true)) | (t7 & mem_operand);
        mdr_load_o = t2 | (t6 & (mem_operand | jump_true)) | (t9 & mem_operand);
        ir_load_o  = t3;
        pc_inc_o   = t1 | (t5 & mem_operand) | (t4 & (jump_false | sta_i));
        pc_load_o  = t7 & jump_true;

        alu_y_o    = t10 & lda_i;
        alu_add_o  = t10 & add_i;
        alu_or_o   = t10 & or_i;
        alu_and_o  = t10 & and_i;
        alu_not_o  = t4  & not_i;

        acc_load_o = (t10 & mem_operand) | (t4 & not_i);
        nz_load_o  = acc_load_o;

        cycle_end_o = (t10 & mem_operand) |
                      (t4  & (nop_i | not_i | jump_false | sta_i)) |
                      (t7  & jump_true);
        halt_o = t4 & hlt_i;
    end

endmodule

`default_nettype wire
