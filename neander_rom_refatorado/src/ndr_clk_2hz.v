`default_nettype none

module ndr_clk_2hz #(
    parameter HALF_CYCLES = 12500000
) (
    input  wire clk_i,
    input  wire rst_i,
    output reg  clk_o
);

    reg [24:0] counter;
    wire       last_count = (counter == HALF_CYCLES - 1);

    always @(posedge clk_i or posedge rst_i) begin
        if (rst_i) begin
            counter <= 25'd0;
            clk_o   <= 1'b0;
        end else begin
            counter <= last_count ? 25'd0 : (counter + 25'd1);
            clk_o   <= last_count ? ~clk_o : clk_o;
        end
    end

endmodule

`default_nettype wire
