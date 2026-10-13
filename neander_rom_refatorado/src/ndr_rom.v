`default_nettype none

module ndr_rom (
    input  wire [7:0] addr_i,
    input  wire       clk_i,
    output reg  [7:0] data_o
);

    always @(*) begin
        data_o = byte_at(addr_i);
    end

    function [7:0] byte_at;
        input [7:0] addr;
        begin
            case (addr)
                8'h00: byte_at = 8'h20;  // LDA 30h
                8'h01: byte_at = 8'h30;
                8'h02: byte_at = 8'h30;  // ADD 31h
                8'h03: byte_at = 8'h31;
                8'h04: byte_at = 8'h50;  // AND 32h
                8'h05: byte_at = 8'h32;
                8'h06: byte_at = 8'h40;  // OR  33h
                8'h07: byte_at = 8'h33;
                8'h08: byte_at = 8'h60;  // NOT
                8'h09: byte_at = 8'h90;  // JN  0Dh
                8'h0A: byte_at = 8'h0D;
                8'h0B: byte_at = 8'h20;  // LDA 35h, ramo nao usado
                8'h0C: byte_at = 8'h35;
                8'h0D: byte_at = 8'h20;  // LDA 34h
                8'h0E: byte_at = 8'h34;
                8'h0F: byte_at = 8'hF0;  // HLT

                8'h30: byte_at = 8'h12;
                8'h31: byte_at = 8'h30;
                8'h32: byte_at = 8'h7F;
                8'h33: byte_at = 8'h00;
                8'h34: byte_at = 8'h42;
                8'h35: byte_at = 8'hEE;
                default: byte_at = 8'h00;
            endcase
        end
    endfunction

    // Mantem a porta de clock para ficar compativel com o bloco de memoria anterior.
    wire unused_clock = clk_i;

endmodule

`default_nettype wire
