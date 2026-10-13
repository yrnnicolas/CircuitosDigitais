`default_nettype none

module neander (
    input  wire       CLOCK_50,
    input  wire       KEY0,
    input  wire       step_btn,
    input  wire       run_debug,
    output wire       LED_N,
    output wire       LED_Z,
    output wire       LED_HLT,
    output wire [6:0] HEX0,
    output wire [6:0] HEX1,
    output wire [6:0] HEX2,
    output wire [6:0] HEX3
);

    wire rst = ~KEY0;

    wire tick_2hz;
    wire cpu_clk;

    ndr_clk_2hz #(
        .HALF_CYCLES(25'd12_500_000)
    ) u_clock_slow (
        .clk_i (CLOCK_50),
        .rst_i (rst),
        .clk_o (tick_2hz)
    );

    ndr_run_step u_clock_select (
        .run_clk_i (tick_2hz),
        .step_i    (step_btn),
        .run_i     (run_debug),
        .clk_o     (cpu_clk)
    );

    wire [10:0] phase;
    wire        restart_cycle;
    wire        stopped;

    wire [7:0] pc_bus;
    wire [7:0] mar_next;
    wire [7:0] mar_bus;
    wire [7:0] mem_data;
    wire [7:0] data_bus;
    wire [7:0] instr_bus;
    wire [7:0] acc_bus;
    wire [7:0] alu_bus;

    wire [3:0] op_code;
    wire       is_nop;
    wire       is_sta;
    wire       is_lda;
    wire       is_add;
    wire       is_or;
    wire       is_and;
    wire       is_not;
    wire       is_jmp;
    wire       is_jn;
    wire       is_jz;
    wire       is_hlt;

    wire       mar_sel;
    wire       mar_load;
    wire       mdr_load;
    wire       ir_load;
    wire       acc_load;
    wire       nz_load;
    wire       pc_load;
    wire       pc_inc;
    wire       alu_pass_y;
    wire       alu_add;
    wire       alu_or;
    wire       alu_and;
    wire       alu_not;
    wire [2:0] alu_mode;
    wire       alu_n;
    wire       alu_z;
    wire       flag_n;
    wire       flag_z;

    ndr_phase_timer u_phase (
        .clk_i     (cpu_clk),
        .rst_i     (rst),
        .restart_i (restart_cycle),
        .hold_i    (stopped),
        .phase_o   (phase)
    );

    ndr_pc u_pc (
        .clk_i    (cpu_clk),
        .rst_i    (rst),
        .load_i   (pc_load),
        .inc_i    (pc_inc),
        .data_i   (data_bus),
        .data_o   (pc_bus)
    );

    ndr_addr_mux u_mar_mux (
        .pc_i      (pc_bus),
        .operand_i (data_bus),
        .select_i  (mar_sel),
        .addr_o    (mar_next)
    );

    ndr_rem u_rem (
        .clk_i  (cpu_clk),
        .rst_i  (rst),
        .load_i (mar_load),
        .data_i (mar_next),
        .data_o (mar_bus)
    );

    ndr_rom u_program (
        .addr_i (mar_bus),
        .clk_i  (cpu_clk),
        .data_o (mem_data)
    );

    ndr_rdm u_rdm (
        .clk_i    (cpu_clk),
        .rst_i    (rst),
        .load_i   (mdr_load),
        .memory_i (mem_data),
        .data_o   (data_bus)
    );

    ndr_ri u_ri (
        .clk_i    (cpu_clk),
        .rst_i    (rst),
        .load_i   (ir_load),
        .data_i   (data_bus),
        .data_o   (instr_bus),
        .opcode_o (op_code)
    );

    ndr_opcode_decode u_decode (
        .opcode_i (op_code),
        .nop_o    (is_nop),
        .sta_o    (is_sta),
        .lda_o    (is_lda),
        .add_o    (is_add),
        .or_o     (is_or),
        .and_o    (is_and),
        .not_o    (is_not),
        .jmp_o    (is_jmp),
        .jn_o     (is_jn),
        .jz_o     (is_jz),
        .hlt_o    (is_hlt)
    );

    ndr_control_unit u_control (
        .nop_i        (is_nop),
        .sta_i        (is_sta),
        .lda_i        (is_lda),
        .add_i        (is_add),
        .or_i         (is_or),
        .and_i        (is_and),
        .not_i        (is_not),
        .jmp_i        (is_jmp),
        .jn_i         (is_jn),
        .jz_i         (is_jz),
        .hlt_i        (is_hlt),
        .n_i          (flag_n),
        .z_i          (flag_z),
        .phase_i      (phase),
        .mar_sel_o    (mar_sel),
        .mar_load_o   (mar_load),
        .mdr_load_o   (mdr_load),
        .ir_load_o    (ir_load),
        .acc_load_o   (acc_load),
        .nz_load_o    (nz_load),
        .pc_load_o    (pc_load),
        .pc_inc_o     (pc_inc),
        .alu_y_o      (alu_pass_y),
        .alu_add_o    (alu_add),
        .alu_or_o     (alu_or),
        .alu_and_o    (alu_and),
        .alu_not_o    (alu_not),
        .cycle_end_o  (restart_cycle),
        .halt_o       (stopped)
    );

    ndr_alu_code u_alu_code (
        .pass_y_i (alu_pass_y),
        .add_i    (alu_add),
        .and_i    (alu_and),
        .or_i     (alu_or),
        .not_i    (alu_not),
        .mode_o   (alu_mode)
    );

    ndr_alu u_alu (
        .a_i      (acc_bus),
        .b_i      (data_bus),
        .mode_i   (alu_mode),
        .result_o (alu_bus),
        .n_o      (alu_n),
        .z_o      (alu_z)
    );

    ndr_ac u_ac (
        .clk_i  (cpu_clk),
        .rst_i  (rst),
        .load_i (acc_load),
        .data_i (alu_bus),
        .data_o (acc_bus)
    );

    ndr_flags_nz u_flags (
        .clk_i  (cpu_clk),
        .rst_i  (rst),
        .load_i (nz_load),
        .n_i    (alu_n),
        .z_i    (alu_z),
        .n_o    (flag_n),
        .z_o    (flag_z)
    );

    ndr_hex_digit u_hex0 (.value_i(acc_bus[3:0]), .enable_i(1'b1), .dot_i(1'b0), .hex_o(HEX0), .dot_o());
    ndr_hex_digit u_hex1 (.value_i(acc_bus[7:4]), .enable_i(1'b1), .dot_i(1'b0), .hex_o(HEX1), .dot_o());
    ndr_hex_digit u_hex2 (.value_i(pc_bus[3:0]),  .enable_i(1'b1), .dot_i(1'b0), .hex_o(HEX2), .dot_o());
    ndr_hex_digit u_hex3 (.value_i(pc_bus[7:4]),  .enable_i(1'b1), .dot_i(1'b0), .hex_o(HEX3), .dot_o());

    assign LED_N   = flag_n;
    assign LED_Z   = flag_z;
    assign LED_HLT = stopped;

endmodule

`default_nettype wire
