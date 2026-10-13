module PC (
    input clk,
    input rst,

    input cargaPC,
    input incrementaPC,

    input [7:0] RDM,

    output [7:0] PC_out
);

wire [7:0] pc_atual;
reg  [7:0] prox_pc;
wire ena_pc;


REG8 #(8) reg_pc (
    .clk(clk),
    .rst(rst),
    .ena(ena_pc),
    .data_i(prox_pc),
    .data_o(pc_atual)
);

assign PC_out = pc_atual;

assign ena_pc = cargaPC | incrementaPC;


always @(*) begin
    if (cargaPC)
        prox_pc = RDM;
    else if (incrementaPC)
        prox_pc = pc_atual + 8'd1;
    else
        prox_pc = pc_atual;
end

endmodule