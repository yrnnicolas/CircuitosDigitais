# Neander ROM refatorado

Versao em Verilog com o modulo principal `neander` preservado.

Alteracoes desta versao:

- blocos internos renomeados para o padrao `ndr_*`;
- nomes de portas internas padronizados com sufixos `_i` e `_o`;
- ROM mantida no lugar da RAM, sem sinais de escrita;
- unidade de controle reescrita com saidas registradas em bloco combinacional;
- decodificador de opcode e ULA com `localparam`;
- display de sete segmentos dividido em nucleo e inversor de polaridade;
- programa da ROM mantido sem `STA`.

Programa carregado na ROM:

```text
00: LDA 30h
02: ADD 31h
04: AND 32h
06: OR  33h
08: NOT
09: JN  0Dh
0B: LDA 35h
0D: LDA 34h
0F: HLT

30h = 12h
31h = 30h
32h = 7Fh
33h = 00h
34h = 42h
35h = EEh
```

Resultado esperado apos a parada: `AC = 42h`, `PC = 10h`, `HLT = 1`.
