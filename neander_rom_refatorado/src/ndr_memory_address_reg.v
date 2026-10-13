`default_nettype none

module ndr_rem (
    input  wire       clk_i,
    input  wire       rst_i,
    input  wire       load_i,
    input  wire [7:0] data_i,
    output reg  [7:0] data_o
);

    always @(posedge clk_i or posedge rst_i) begin
        if (rst_i)
            data_o <= 8'h00;
        else
            data_o <= load_i ? data_i : data_o;
    end

endmodule

`default_nettype wire
