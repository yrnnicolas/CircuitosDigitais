`default_nettype none

module ndr_pc (
    input  wire       clk_i,
    input  wire       rst_i,
    input  wire       load_i,
    input  wire       inc_i,
    input  wire [7:0] data_i,
    output reg  [7:0] data_o
);

    wire [7:0] pc_plus_one = data_o + 8'h01;

    always @(posedge clk_i or posedge rst_i) begin
        if (rst_i)
            data_o <= 8'h00;
        else begin
            case ({load_i, inc_i})
                2'b10,
                2'b11: data_o <= data_i;
                2'b01: data_o <= pc_plus_one;
                default: data_o <= data_o;
            endcase
        end
    end

endmodule

`default_nettype wire
