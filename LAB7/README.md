# LAB 7: Multiplicador Combinacional Binário em Matriz (Array Multiplier)

> **Disciplina:** Circuitos Digitais (INF01058)  
> **Instituição:** Instituto de Informática — Universidade Federal do Rio Grande do Sul (INF - UFRGS)  
> **Ambiente:** Altera / Intel Quartus II, ModelSim, Síntese Física para FPGA Cyclone IV GX

---

## 1. Visão Geral

O **LAB 7** conclui o ciclo de projetos de circuitos aritméticos combinacionais com a implementação de um **Multiplicador Binário em Matriz (*Array Multiplier*)**. 

A multiplicação combinacional representa um salto significativo em termos de complexidade estrutural e de temporização frente aos somadores convencionais, pois exige a geração paralela de múltiplos **produtos parciais** através de portas lógicas `AND` e sua redução progressiva através de uma malha bidimensional de somadores (*Half Adders* e *Full Adders*).

---

## 2. Princípio de Funcionamento e Arquitetura

O processo de multiplicação entre duas palavras binárias $X$ e $Y$ replica o método manual de multiplicação posicional com base 2:
1. **Geração dos Produtos Parciais:** Cada bit $p_{i,j} = X_i \cdot Y_j$ é gerado instantaneamente por portas lógicas `AND2`.
2. **Soma dos Produtos Parciais:** Os termos correspondentes às mesmas ordens de grandeza binária são somados usando estágios em cascata compostos por:
   - Meios Somadores (`HA.bdf`) nas extremidades onde não há *carry-in* anterior.
   - Somadores Completos (`FA.bdf`) nos nós internos para acumular os produtos parciais e o transporte dos estágios menos significativos.
3. **Barramentos de Entrada e Saída:** Operandos de entrada $X$ e $Y$, gerando o produto resultante $Z$.

---

## 3. Síntese Física e Análise de Desempenho (FPGA)

O projeto foi totalmente compilado e ajustado para o dispositivo **Altera Cyclone IV GX (EP4CGX15BF14C6)**:

### 3.1 Consumo de Recursos de Hardware:
- **Total de Logic Elements (LEs):** 21 / 14.400 (< 1%)
- **Pinos de I/O utilizados:** 16 pinos (entradas $X, Y$ e saídas $Z$)
- **Registradores dedicados:** 0 (circuito puramente combinacional)
- **Multiplicadores embutidos de silício (*Embedded Multipliers/DSPs*):** 0 (a multiplicação foi intencionalmente sintetizada em **células lógicas puras** para fins didáticos).

### 3.2 Análise de Temporização Estática (*TimeQuest Timing Analyzer - Slow 1200mV 85°C*):
Devido à grande profundidade lógica da malha de somadores, observa-se o impacto no atraso de propagação ($t_{pd}$):
- Menor atraso de propagação: **6,409 ns** ($X[0] \rightarrow Z[0]$, produto parcial direto $X_0 \cdot Y_0$).
- Maior atraso (caminho crítico de pior caso): **14,654 ns** ($X[1] \rightarrow Z[7]$), refletindo a propagação através dos múltiplos níveis de transporte da malha.

---

## 4. Estrutura de Arquivos

| Arquivo | Descrição |
| :--- | :--- |
| `MULTIPLICADOR3bits.qpf` | Arquivo do projeto no Quartus II (*Quartus Project File*). |
| `MULTIPLICADOR3bits.qsf` | Configurações de síntese, pinagem e arquivos de topo (*Quartus Settings File*). |
| `Waveform.vwf` | Vetores de teste de simulação funcional cobrindo diferentes multiplicações. |
| `db/MULTIPLICADOR3bits.bdf` | Esquemático em nível de portas e blocos do multiplicador combinacional. |
| `db/HA.bdf` / `db/FA.bdf` | Blocos de meio somador e somador completo instanciados na matriz. |
| `output_files/*.summary` | Relatórios de síntese física (`fit.summary`, `map.summary`, `sta.summary`). |
| `output_files/MULTIPLICADOR3bits.sta.rpt` | Relatório detalhado do TimeQuest com tabela completa de tempos de propagação ($t_{pd}$). |

---

## 5. Relação com a Cadeira e o Processador Neander

No currículo de Circuitos Digitais da UFRGS, o estudo de multiplicadores demonstra o custo em hardware e latência de operações aritméticas de ordem superior:
- O processador pedagógico **Neander** clássico implementa em hardware apenas a operação de adição (`ADD`), executando multiplicações por meio de **software** (laços de adições sucessivas ou algoritmos de deslocamento e soma).
- Em extensões de arquitetura de processadores (como Neander estendido ou processadores RISC como MIPS/RISC-V abordados em Organização e Arquitetura de Computadores), a introdução de uma instrução `MUL` em hardware baseia-se exatamente na arquitetura de multiplicador em matriz estudada neste laboratório.

