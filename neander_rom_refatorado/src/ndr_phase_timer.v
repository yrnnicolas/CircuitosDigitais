`default_nettype none

module ndr_phase_timer (
    input  wire        clk_i,
    input  wire        rst_i,
    input  wire        restart_i,
    input  wire        hold_i,
    output wire [10:0] phase_o
);

    reg [3:0] phase_index;

    always @(posedge clk_i or posedge rst_i) begin
        if (rst_i)
            phase_index <= 4'd0;
        else if (hold_i)
            phase_index <= phase_index;
        else if (restart_i)
            phase_index <= 4'd0;
        else if (phase_index != 4'd10)
            phase_index <= phase_index + 4'd1;
    end

    wire [7:0] low_phase_mask;

    ndr_onehot3_to_8 u_low_decoder (
        .value_i (phase_index[2:0]),
        .mask_o  (low_phase_mask)
    );

    assign phase_o[7:0] = phase_index[3] ? 8'h00 : low_phase_mask;
    assign phase_o[8]   = (phase_index == 4'd8);
    assign phase_o[9]  = (phase_index == 4'd9);
    assign phase_o[10] = (phase_index == 4'd10);

endmodule

`default_nettype wire
