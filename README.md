# Circuitos Digitais — INF / UFRGS

Repositório com os projetos práticos desenvolvidos na disciplina de **Circuitos Digitais (INF01058)** do **Instituto de Informática da Universidade Federal do Rio Grande do Sul (INF - UFRGS)**.

O repositório documenta toda a jornada construtiva do hardware digital: desde os blocos combinacionais mais simples (como somar dois bits individuais) até a integração de um processador programável completo: o **Computador Neander**.

---

## 🌟 Para Pessoas Leigas: O que você encontra aqui?

Se você nunca estudou computação, pode parecer que os computadores e celulares modernos funcionam por "mágica". No entanto, por baixo de qualquer tela e aplicativo, tudo se resume a circuitos eletrônicos manipulando interruptores que estão ligados (`1`) ou desligados (`0`).

Este repositório mostra o passo a passo de como construir um computador do zero:
1. **Começamos ensinando o computador a somar números básicos** ($0$ e $1$) usando portas lógicas elementares.
2. **Construímos somadores maiores** capazes de lidar com números de 4, 8 e 16 bits, além de subtrair e multiplicar.
3. **Criamos "roteadores" de dados** (multiplexadores e decodificadores) que escolhem qual número vai para onde.
4. **Construímos uma calculadora completa (a ULA)** que soma, inverte e compara dados, acendendo avisos se o número for negativo ou zero.
5. **No final, conectamos tudo com um cérebro (a Unidade de Controle) e uma memória para formar o Neander**: um computador funcional de verdade, capaz de ler instruções de um programa na memória e executá-las linha por linha!

---

## 📂 Mapa do Repositório

| Diretório | Título do Projeto | Descrição Resumida |
| :--- | :--- | :--- |
| [**LAB1**](file:///c:/Users/NickM/OneDrive/Documentos/GitHub/CircuitosDigitais/LAB1/README.md) | Meio Somador e Somador Completo | Blocos aritméticos de 1 bit (*Half Adder* e *Full Adder*) em esquemático BDF. |
| [**LAB2**](file:///c:/Users/NickM/OneDrive/Documentos/GitHub/CircuitosDigitais/LAB2/README.md) | Somadores Hierárquicos RCA | Somadores Ripple Carry de 4, 8 e 16 bits; análise de caminho crítico e consumo de área em FPGA. |
| [**LAB3**](file:///c:/Users/NickM/OneDrive/Documentos/GitHub/CircuitosDigitais/LAB3/README.md) | Somador-Subtrator de 8 bits | Operações aritméticas em Complemento a 2 utilizando portas XOR como inversores controlados. |
| [**LAB4**](file:///c:/Users/NickM/OneDrive/Documentos/GitHub/CircuitosDigitais/LAB4/README.md) | MUX e Decodificadores | Multiplexadores (2:1, 4:1, 8:1) e Decodificadores (2:4, 4:16) para barramentos e decodificação de instruções. |
| [**LAB5**](file:///c:/Users/NickM/OneDrive/Documentos/GitHub/CircuitosDigitais/LAB5/README.md) | ULA de 4 bits | Primeira Unidade Lógica e Aritmética combinando somador RCA com operações lógicas (`AND`, `OR`, `NOT`). |
| [**LAB6**](file:///c:/Users/NickM/OneDrive/Documentos/GitHub/CircuitosDigitais/LAB6/README.md) | Display de 7 Segmentos e ULA com Flags | Decodificador para display de 7 segmentos (via Mapa de Karnaugh) e ULA com cálculo das flags Negativo ($N$) e Zero ($Z$). |
| [**LAB7**](file:///c:/Users/NickM/OneDrive/Documentos/GitHub/CircuitosDigitais/LAB7/README.md) | Multiplicador em Matriz | Multiplicador combinacional (*Array Multiplier*) baseado em malha de somadores e produtos parciais via portas AND. |
| [**Neander**](file:///c:/Users/NickM/OneDrive/Documentos/GitHub/CircuitosDigitais/Neander/README.md) | **O Computador Neander** | Implementação completa em Verilog HDL do processador pedagógico da UFRGS (datapath, unidade de controle, temporizador e memória). |
| [**neander_rom_refatorado**](file:///c:/Users/NickM/OneDrive/Documentos/GitHub/CircuitosDigitais/neander_rom_refatorado/README.md) | Neander ROM Refatorado | Versão refatorada do Neander em Verilog com ROM integrada e nomenclatura padronizada de portas e módulos. |

---

## 🛠️ Tecnologias e Ferramentas Utilizadas

- **Ambiente de Desenvolvimento:** Altera / Intel Quartus II (versão 13.1 Web Edition).
- **Linguagens e Metodologias:**
  - Projeto Esquemático por Diagrama de Blocos (*Block Design File* — `.bdf` / `.bsf`).
  - Descrição de Hardware em **Verilog HDL** (`.v`).
- **Simulação e Temporização:**
  - ModelSim-Altera (simulação funcional e temporal).
  - TimeQuest Timing Analyzer (análise de caminho crítico em modelos *Slow 1200mV 85°C*).
  - Editor de Formas de Onda Vetoriais (*Waveform* — `.vwf`).
- **Dispositivo Alvo:** FPGAs da família Altera Cyclone IV (ex.: `EP4CGX15BF14C6`).

---

## 👥 Créditos e Contexto Acadêmico

- **Instituição:** Universidade Federal do Rio Grande do Sul (UFRGS).
- **Unidade:** Instituto de Informática (INF).
- **Disciplina:** Circuitos Digitais (INF01058).
- **Arquitetura Neander:** Concebida no INF/UFRGS como plataforma pedagógica de ensino em Arquitetura de Computadores.

