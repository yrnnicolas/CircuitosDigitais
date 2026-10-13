# LAB 4: Multiplexadores e Decodificadores Combinacionais

> **Disciplina:** Circuitos Digitais (INF01058)  
> **Instituição:** Instituto de Informática — Universidade Federal do Rio Grande do Sul (INF - UFRGS)  
> **Ambiente:** Altera / Intel Quartus II, TimeQuest Timing Analyzer, ModelSim

---

## 1. Visão Geral

O **LAB 4** aborda o projeto, expansão modular e caracterização de duas das classes mais fundamentais de circuitos integrados combinacionais:
- **Multiplexadores (MUX):** Seletores de dados baseados em canais e sinais de seleção.
- **Decodificadores (DECODER):** Conversores de código binário $n$-bits em saídas ativas exclusivas $2^n$-linhas (*1-hot / one-cold*).

No currículo de Circuitos Digitais da UFRGS, o domínio desses dois componentes é indispensável para a concepção da unidade de controle, do barramento interno e da seleção de operações da ULA do processador **Neander**.

---

## 2. Circuitos Projetados

### 2.1 Família de Multiplexadores
Projetados com foco em modularidade e largura de barramento:
- **MUX 2:1 (`MUX21.bdf` / `.bsf`):** Seleciona entre duas entradas com base no seletor $S_0$.
- **MUX 4:1 (`MUX41.bdf` / `.bsf`):** Construído de forma hierárquica usando multiplexadores 2:1 ou arranjo de portas lógicas com 2 bits de seleção ($S[1..0]$).
- **MUX 8:1 (`MUX81.bdf`):** Expansão para seleção entre 8 canais de dados utilizando 3 linhas de seleção ($S[2..0]$).

### 2.2 Família de Decodificadores
- **Decoder 2:4 (`DECODER24.bdf` / `.bsf`):** Decodifica uma entrada binária de 2 bits em 4 linhas de saída mutuamente exclusivas ($D_0, D_1, D_2, D_3$).
- **Decoder 4:16 (`DECODER416.bdf`):** Expansão hierárquica para decodificar uma palavra de 4 bits em 16 linhas de comando.

---

## 3. Síntese Física e Análise Comparativa (FPGA)

Conforme registrado nos dados experimentais de `Lab4.txt`:

| Circuito | Área FPGA (LEs + Pinos) | Atraso Crítico Máximo | Caminho Mais Crítico |
| :--- | :---: | :---: | :---: |
| **Mux 2:1** | 5 | **3,513 ns** | $B \rightarrow Z$ |
| **Mux 4:1** | 17 | **4,352 ns** | $S[0] \rightarrow Z[1]$ |
| **Mux 8:1** | 33 | **4,723 ns** | $A[7] \rightarrow Z[7]$ |
| **Decoder 2:4** | 10 | **4,588 ns** | $A[0] \rightarrow D_1$ |
| **Decoder 4:16** | 36 | **4,478 ns** | $C \rightarrow D_9$ |

### Análise:
- O consumo de lógica e pinagem do MUX cresce proporcionalmente ao número de canais e largura de bits selecionados.
- O Decoder 4:16 consome 36 recursos de área na FPGA, apresentando balanceamento de atrasos entre 2,82 ns e 4,48 ns nas diferentes linhas de saída.

---

## 4. Estrutura de Arquivos

| Arquivo | Descrição |
| :--- | :--- |
| `MUX21.bdf` / `.bsf` | Esquemático e símbolo do Multiplexador 2:1. |
| `MUX41.bdf` / `.bsf` | Esquemático e símbolo do Multiplexador 4:1. |
| `MUX81.bdf` | Esquemático do Multiplexador 8:1. |
| `DECODER24.bdf` / `.bsf` | Esquemático e símbolo do Decodificador 2 para 4. |
| `DECODER416.bdf` | Esquemático do Decodificador hierárquico 4 para 16. |
| `WaveformDecoder.vwf` / `.png` | Arquivo e print de simulação funcional do decodificador. |
| `WaveformMux21.vwf` / `.png` | Arquivo e print de simulação funcional do multiplexador 2:1. |
| `Print mux41.png` / `Print Mux 8 para 1.png` | Capturas do diagrama lógico no Quartus II. |
| `Decoder2para4.png` / `DecoderPrint.png` | Capturas do diagrama lógico do decodificador. |
| `Lab4.txt` | Relatório completo de área e tempos de propagação extraídos do TimeQuest. |
| `LAB4.qpf` / `LAB4.qsf` / `LAB4.qws` | Arquivos do projeto Quartus II. |
| `SDC1.sdc` | Restrições de temporização estática. |

---

## 5. Relação com a Cadeira e o Processador Neander

Ambos os circuitos desempenham papéis estruturais no **Neander**:
1. **Decodificador de Instruções (RI):** O registrador de instruções (`RI`) do Neander armazena um opcode de 4 bits. O decodificador **Decoder 4:16** é o circuito encarregado de ativar individualmente as linhas correspondentes a cada mnemônico (`NOP`, `STA`, `LDA`, `ADD`, `OR`, `AND`, `NOT`, `JMP`, `JN`, `JZ`, `HLT`).
2. **Seleção da ULA e Barramento:** O **Multiplexador** (como o MUX 4:1 do LAB 5 e MUX 8:1) é o núcleo seletor da ULA, roteando o resultado da operação desejada para a saída de acordo com o sinal de controle emitido pelo ciclo de instrução.

