# LAB 3: Somador-Subtrator de 8 Bits em Complemento a 2

> **Disciplina:** Circuitos Digitais (INF01058)  
> **Instituição:** Instituto de Informática — Universidade Federal do Rio Grande do Sul (INF - UFRGS)  
> **Ambiente:** Altera / Intel Quartus II, TimeQuest Timing Analyzer, ModelSim

---

## 1. Visão Geral

O **LAB 3** tem como objetivo o projeto, síntese e validação de um **Somador-Subtrator Combinacional de 8 bits** operando em representação de **Complemento a 2**. 

Na arquitetura de computadores, a representação em complemento a 2 unifica as operações de adição e subtração sob o mesmo circuito aritmético, eliminando a necessidade de hardware dedicado para subtração e reduzindo o consumo de área de silício.

---

## 2. Princípio de Funcionamento e Arquitetura

Para realizar a operação $A - B$, utiliza-se a identidade aritmética do complemento a 2:
$$A - B = A + (\overline{B} + 1) = A + \overline{B} + 1$$

O circuito implementado em `sumsub8.bdf` utiliza:
1. **Inversor Controlado com Portas XOR:**  
   Cada bit do operando $B_i$ passa por uma porta XOR com o sinal de controle de operação ($Op_{sub}$ / $C_{in0}$):
   - Se $Op_{sub} = 0$: $B_i \oplus 0 = B_i$ e $C_{in0} = 0 \implies \text{Saída} = A + B$ (**Adição**).
   - Se $Op_{sub} = 1$: $B_i \oplus 1 = \overline{B_i}$ e $C_{in0} = 1 \implies \text{Saída} = A + \overline{B} + 1$ (**Subtração**).
2. **Cadeia Somadora de 8 bits:**  
   Instanciação em cascata de blocos `Full_adder` de 1 bit, propagando o transporte entre os estágios.

---

## 3. Resultados de Síntese e Desempenho

As medições obtidas na síntese para FPGA Intel/Altera Cyclone IV estão registradas no arquivo `LAB3.txt`:

- **Consumo de Área na FPGA:** 45 recursos (soma de *Logic Elements* e pinos de I/O).
- **Atraso Crítico (*Timing Analysis - Slow Corner 85°C*):**
  - Trajetória a partir de $A[2]$: **5,436 ns**
  - Trajetória a partir de $B[0]$: **8,931 ns** (pior caso, devido à propagação pelo XOR inicial e por todos os 8 estágios de soma).

---

## 4. Estrutura de Arquivos

| Arquivo | Descrição |
| :--- | :--- |
| `sumsub8.bdf` | Esquemático principal de nível superior do Somador-Subtrator de 8 bits (*Top-Level Entity*). |
| `Full_adder.bdf` / `.bsf` | Bloco construtivo básico de somador de 1 bit (esquemático e símbolo). |
| `Waveform.vwf` / `formadeonda.vwf` | Formas de onda de simulação funcional cobrindo casos de teste com números positivos, negativos e overflow. |
| `LAB3RTLviewer.pdf` | Visualização esquemática gerada pelo Quartus RTL Viewer pós-síntese lógica. |
| `LAB3.txt` | Relatório de medições de área (LEs/pinos) e atrasos críticos no TimeQuest. |
| `sumsub8.qpf` / `sumsub8.qsf` / `sumsub8.qws` | Arquivos de configuração de projeto e mapeamento do Quartus II. |
| `SDC1.sdc` | Restrições de temporização estática (*Synopsys Design Constraints*). |

---

## 5. Relação com a Cadeira e o Processador Neander

Este laboratório é um elo direto com a construção da **Unidade Lógica e Aritmética (ULA)** do processador **Neander**:
- A instrução `ADD` do Neander executa a adição do acumulador (`AC`) com o dado da memória: $AC \leftarrow AC + \text{MEM}$.
- Embora o Neander básico não possua a instrução `SUB` em seu conjunto padrão clássico de 8 instruções (que implementa `NOT` e `ADD`), arquiteturas estendidas do Neander (como a variante de 16 instruções ministrada em semestres da UFRGS) ou a ULA completa integram suporte nativo a somador-subtrator.
- A flag de Negativo ($N$) é obtida diretamente do bit mais significativo ($S[7]$) e a flag de Zero ($Z$) a partir da verificação se todos os bits de $S$ são zero.

