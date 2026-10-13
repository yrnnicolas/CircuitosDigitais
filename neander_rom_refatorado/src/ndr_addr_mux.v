`default_nettype none

module ndr_addr_mux (
    input  wire [7:0] pc_i,
    input  wire [7:0] operand_i,
    input  wire       select_i,
    output reg  [7:0] addr_o
);

    always @(*) begin
        if (select_i)
            addr_o = operand_i;
        else
            addr_o = pc_i;
    end

endmodule

`default_nettype wire
