`default_nettype none

module ndr_run_step (
    input  wire run_clk_i,
    input  wire step_i,
    input  wire run_i,
    output wire clk_o
);

    assign clk_o = (run_i == 1'b1) ? run_clk_i : ~step_i;

endmodule

`default_nettype wire
