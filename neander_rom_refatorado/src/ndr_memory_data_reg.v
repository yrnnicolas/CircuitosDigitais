`default_nettype none

module ndr_rdm (
    input  wire       clk_i,
    input  wire       rst_i,
    input  wire       load_i,
    input  wire [7:0] memory_i,
    output reg  [7:0] data_o
);

    always @(posedge clk_i or posedge rst_i) begin
        if (rst_i)
            data_o <= 8'h00;
        else if (load_i)
            data_o <= memory_i;
    end

endmodule

`default_nettype wire
