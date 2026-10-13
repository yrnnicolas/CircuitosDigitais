module Controle(
    input n,
    input z,
    input [7:4] RI,
    input [7:0] tempo,

    output r,
	 output w,
    output goto,
    output en_pc,
    output inc_pc,
    output en_ac,
    output en_rem,
    output en_rdm,
    output en_ri,
    output en_nz,
    output [2:0]sel_ula,
    output sel_rem
);

    wire t0 = tempo[0];
    wire t1 = tempo[1];
    wire t2 = tempo[2];
    wire t3 = tempo[3];
    wire t4 = tempo[4];
    wire t5 = tempo[5];
    wire t6 = tempo[6];
    wire t7 = tempo[7];

    wire is_NOP = (RI == 4'b0000);
    wire is_STA = (RI == 4'b0001);
    wire is_LDA = (RI == 4'b0010);
    wire is_ADD = (RI == 4'b0011);
    wire is_OR  = (RI == 4'b0100);
    wire is_AND = (RI == 4'b0101);
    wire is_NOT = (RI == 4'b0110);
    wire is_JMP = (RI == 4'b1000);
    wire is_JN  = (RI == 4'b1001);
    wire is_JZ  = (RI == 4'b1010);

    wire ALU_OP = is_LDA | is_ADD | is_OR | is_AND;

    // -----------------------
    // CONTROLE PRINCIPAL
    // -----------------------

    assign en_ri  = t2;

    assign en_rem  = t0 |
                     (t3 & (is_STA|is_LDA|is_ADD|is_OR|is_AND|is_JMP|
                            (is_JN & ~n) | (is_JZ & ~z))) |
                     (t5 & ALU_OP);

    assign inc_pc = t1 |
                    (t4 & ALU_OP) |
                    (t3 & ((is_JN & ~n) | (is_JZ & ~z)));

    assign sel_rem = t5 & ALU_OP;

    assign en_rdm  = t6 & is_STA;

	 assign r = t1 |
               (t4 & (is_STA | is_LDA | is_ADD | is_OR | is_AND |
                      is_JMP | (is_JN & n) | (is_JZ & z))) |
               (t6 & ALU_OP);
	
	 assign w = t7 & is_STA;

    
	wire ula_not = t3 & is_NOT;
	wire ula_add = t7 & is_ADD;
	wire ula_or  = t7 & is_OR;
	wire ula_and = t7 & is_AND;
	wire ula_lda = t7 & is_LDA;
	 
	assign sel_ula =
    ula_lda ? 3'b100 :
    ula_add ? 3'b110 :
    ula_or  ? 3'b001 :
    ula_and ? 3'b010 :
    ula_not ? 3'b011 :
              3'b000;

    assign en_ac = (t7 & ALU_OP) | (t3 & is_NOT);

    assign en_nz = en_ac;

    assign en_pc = t5 & (is_JMP | (is_JN & n) | (is_JZ & z));

    assign goto = (t7 & (is_STA | is_LDA | is_ADD | is_OR | is_AND)) |
                  (t3 & (is_NOP | is_NOT | (is_JN & ~n) | (is_JZ & ~z))) |
                  (t5 & (is_JMP | (is_JN & n) | (is_JZ & z)));

endmodule