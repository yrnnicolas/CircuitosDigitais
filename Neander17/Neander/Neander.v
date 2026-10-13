module Neander 
(
	input clk,
	input rst,
	
	output [7:0]pc,
	output [7:0]acc,
	output N,Z
);

wire en_acc;
wire en_nz;
wire en_rdm;
wire en_rem;

wire n_i;
wire z_i;

wire n_o;
wire z_o;

wire [7:0]ula_o;
wire [7:0]acc_o;

wire [7:0]mem_o;
wire [2:0]ula_sel;

wire cargaPC; 
wire incrementaPC; 
wire [7:0]pc_o;

wire [7:0]rem_i; //Vem da onde e usa onde? é a mesma coisa doq o en_i?

wire [7:0]rdm_o;
wire [7:0]rem_o;

wire mem_we;
wire mem_re;

wire goto;

wire [7:0]tempo;

ULA8 ulaInstancia(
	.a(acc_o),
	.b(mem_o),
	.Sel(ula_sel),
	.S(ula_o),
	.N(n_i),
	.Z(z_i)
);

REG8 #(.WIDTH(8)) acumuladorInstancia(

	.clk(clk),
	.rst(rst),
	.ena(en_acc),
	.data_i(ula_o),
	
	.data_o(acc_o)
);

assign acc = acc_o;


REG8 #(.WIDTH(1)) N_REG(

	.clk(clk),
	.rst(rst),
	.ena(en_nz),
	.data_i(n_i),
	
	.data_o(n_o)
);

REG8 #(.WIDTH(1)) Z_REG(

	.clk(clk),
	.rst(rst),
	.ena(en_nz),
	.data_i(z_i),
	
	.data_o(z_o)
);

assign N = n_o;
assign Z = z_o;

PC pcInstancia(
	.clk(clk),
	.rst(rst),
	.cargaPC(cargaPC),
	.incrementaPC(incrementaPC),
	.RDM(rdm_o),     
	.PC_out(pc_o)
);

assign pc = pc_o;

REG8 #(.WIDTH(8)) RDM(

	.clk(clk),
	.rst(rst),
	.ena(en_rdm),
	.data_i(mem_o),
	
	.data_o(rdm_o)
);

REG8 #(.WIDTH(8)) remInst(
    .clk(clk),
    .rst(rst),
    .ena(en_rem),
    .data_i(rem_i),
    .data_o(rem_o)
);

Memoria memInst(
    .clk(clk),
    .addr(rem_o),       
    .data_in(acc_o), 
    .we(mem_we),    
	 .re(mem_re),
    .data_out(mem_o) 
);

Temporizador tempInst(
	.clk(clk),
	.rst(rst),
	.goto(goto),
	.tempo(tempo)
);

Controle contrInst(
    .n(N),
    .z(Z),
    .RI(mem_o[7:4]),
    .tempo(tempo),

    .r(mem_re),
    .w(mem_we),

    .goto(goto),
    .en_pc(cargaPC),
    .inc_pc(incrementaPC),
    .en_ac(en_acc),
    .en_rem(en_rem),
    .en_rdm(en_rdm),
    .en_ri(),       // não usado no datapath atual
    .en_nz(en_nz),
    .sel_ula(ula_sel),
    .sel_rem()
);


endmodule

