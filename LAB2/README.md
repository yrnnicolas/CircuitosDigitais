# LAB 2: Somadores Hierárquicos Ripple Carry Adder (RCA) e Análise de Desempenho

> **Disciplina:** Circuitos Digitais (INF01058)  
> **Instituição:** Instituto de Informática — Universidade Federal do Rio Grande do Sul (INF - UFRGS)  
> **Ambiente:** Altera / Intel Quartus II, TimeQuest Timing Analyzer, ModelSim

---

## 1. Visão Geral

No **LAB 2**, avança-se da lógica de somadores elementares de 1 bit para o projeto hierárquico de **Somadores por Propagação de Transporte (Ripple Carry Adders - RCA)** com larguras de palavra de **4 bits**, **8 bits** e **16 bits**.

Além do projeto estrutural esquemático, este laboratório enfatiza conceitos fundamentais de síntese física e análise de desempenho em FPGA:
- O impacto do encadeamento do sinal de transporte (*carry propagation delay*).
- O consumo de recursos de hardware na FPGA (**Logic Elements** e pinos de I/O).
- Análise de temporização estática (*Static Timing Analysis - STA*) para identificação do **caminho crítico** e atraso máximo de propagação no pior caso (*Slow Corner*, 85°C).

---

## 2. Arquitetura dos Circuitos

A topologia RCA conecta múltiplos somadores completos (*Full Adders*) em cascata, onde a saída $C_{out}$ do estágio $i$ é ligada à entrada $C_{in}$ do estágio $i+1$:

1. **RCA 4 bits (`RCA4.bdf`):** Instancia 4 blocos `Full_adder`, recebendo $A[3..0]$, $B[3..0]$ e $C_{in}$, gerando $S[3..0]$ e $C_{out}$.
2. **RCA 8 bits (`RCA8.bdf`):** Instanciação hierárquica conectando 2 blocos `RCA4` em série ou 8 `Full_adder`.
3. **RCA 16 bits (`RCA16.bdf`):** Conexão em cascata de blocos de 8 bits / 4 bits para formar uma palavra de 16 bits.

---

## 3. Resultados Experimentais e Análise de Desempenho

Os circuitos foram compilados e sintetizados no Quartus II, obtendo-se as métricas de área e temporização estática registradas em `Arquivo TXT p LAB2.txt`:

| Circuito | Consumo de Área na FPGA (LEs + Pinos) | Atraso Crítico (*Slow Corner*, pior caso) | Pino Crítico |
| :--- | :---: | :---: | :---: |
| **RCA 4** | 21 | **5,915 ns** | $A[3]$ |
| **RCA 8** | 39 | **5,203 ns** | $B[7]$ |
| **RCA 16** | 75 | **6,950 ns** | $C_{in}$ |

### Discussão dos Resultados:
- **Crescimento de Área:** O consumo de recursos de hardware cresce de forma aproximadamente linear com a duplicação do número de bits, refletindo o número proporcional de somadores e pinos de I/O necessários.
- **Propagação do Carry:** No RCA 16, a propagação do transporte desde o $C_{in}$ até o bit mais significativo e $C_{out}$ torna-se a trajetória com maior latência (6,950 ns), evidenciando a limitação teórica do somador Ripple Carry frente a arquiteturas mais avançadas (como *Carry Lookahead*).

---

## 4. Estrutura de Arquivos

| Arquivo | Descrição |
| :--- | :--- |
| `Full_adder.bdf` / `.bsf` | Módulo base de somador completo de 1 bit. |
| `RCA4.bdf` / `.bsf` | Somador Ripple Carry de 4 bits (esquemático e símbolo). |
| `RCA8.bdf` / `.bsf` | Somador Ripple Carry de 8 bits (esquemático e símbolo). |
| `RCA16.bdf` | Somador Ripple Carry de 16 bits (esquemático de nível superior). |
| `Somador_RCA.bdf` | Esquemático alternativo/auxiliar de somador RCA. |
| `WaveformRCA4.vwf` / `WaveRCA4.jpeg` | Simulação em forma de onda e captura gráfica do RCA de 4 bits. |
| `WaveformRCA8.vwf` / `WaveRCA8.jpeg` | Simulação em forma de onda e captura gráfica do RCA de 8 bits. |
| `WaveformRCA16.vwf` / `WaveRCA16.jpeg` | Simulação em forma de onda e captura gráfica do RCA de 16 bits. |
| `Print RTL Viewer.pdf` | Diagrama do circuito sintetizado extraído do Quartus RTL Viewer. |
| `Arquivo TXT p LAB2.txt` | Relatório de dados brutos com medição de LEs, pinos e atrasos do TimeQuest. |
| `RCA4.qpf` / `RCA4.qsf` / `RCA16.*` | Arquivos de projeto e diretivas de compilação do Quartus II. |
| `SDC1.sdc` | Arquivo de restrições de temporização (*Synopsys Design Constraints*). |

---

## 5. Relação com a Cadeira e o Neander

O somador de 8 bits desenvolvido neste laboratório constitui a espinha dorsal aritmética do processador **Neander**, cuja arquitetura opera com dados de 8 bits (`AC` e barramento de dados de 8 bits). No LAB 3, esse bloco é reutilizado e complementado com portas XOR e sinal de controle para se tornar um somador-subtrator completo.

