`default_nettype none

module ndr_flags_nz (
    input  wire clk_i,
    input  wire rst_i,
    input  wire load_i,
    input  wire n_i,
    input  wire z_i,
    output reg  n_o,
    output reg  z_o
);

    always @(posedge clk_i or posedge rst_i) begin
        if (rst_i) begin
            n_o <= 1'b0;
            z_o <= 1'b0;
        end else if (load_i) begin
            n_o <= n_i;
            z_o <= z_i;
        end
    end

endmodule

`default_nettype wire
