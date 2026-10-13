# Circuitos Digitais — INF / UFRGS

[![Institution](https://img.shields.io/badge/UFRGS-Instituto%20de%20Inform%C3%A1tica-blue.svg)](https://www.inf.ufrgs.br)
[![Course](https://img.shields.io/badge/Disciplina-Circuitos%20Digitais%20(INF01058)-orange.svg)](https://www.inf.ufrgs.br)
[![EDA](https://img.shields.io/badge/EDA-Intel%2FAltera%20Quartus%20II%2013.1-darkblue.svg)](https://www.intel.com)
[![Hardware](https://img.shields.io/badge/HDL-Verilog%20%7C%20BDF-red.svg)](https://en.wikipedia.org/wiki/Verilog)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

Repositório com os projetos práticos e experimentais desenvolvidos na disciplina de **Circuitos Digitais (INF01058)** do **Instituto de Informática da Universidade Federal do Rio Grande do Sul (INF - UFRGS)**.

O repositório documenta a trajetória construtiva da computação digital: partindo de blocos combinacionais elementares (como somar dois bits individuais) até a síntese e simulação de um microprocessador programável completo: o **Computador Neander**.

Arquivos README gerados a partir de Inteligência Artificial!

---

## 💡 Para Pessoas Leigas: O que você encontra aqui?

Se você nunca estudou computação, pode parecer que os computadores e celulares modernos funcionam por "mágica". No entanto, por baixo de qualquer tela e aplicativo, tudo se resume a circuitos eletrônicos manipulando interruptores que estão ligados (`1`) ou desligados (`0`).

Este repositório mostra o passo a passo de como construir um computador a partir do zero:
1. **Começamos ensinando o computador a somar números básicos** ($0$ e $1$) usando portas lógicas elementares.
2. **Construímos somadores maiores** capazes de lidar com números de 4, 8 e 16 bits, além de subtrair e multiplicar.
3. **Criamos "roteadores" de dados** (multiplexadores e decodificadores) que escolhem qual informação vai para cada lugar.
4. **Construímos uma calculadora completa (a ULA)** que soma, inverte e compara dados, acendendo avisos se o número for negativo ou zero.
5. **No final, conectamos tudo com um cérebro (a Unidade de Controle) e uma memória para formar o Neander**: um computador funcional de verdade, capaz de ler instruções de um programa na memória e executá-las linha por linha!

---

## 📂 Mapa dos Módulos do Repositório

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

- **Ambiente de Desenvolvimento:** Altera / Intel Quartus II (Web Edition 13.1).
- **Linguagens e Metodologias:**
  - Projeto Esquemático por Diagrama de Blocos (*Block Design File* — `.bdf` / `.bsf`).
  - Descrição de Hardware em **Verilog HDL** (`.v`).
- **Simulação e Temporização:**
  - ModelSim-Altera (simulação funcional e temporal).
  - TimeQuest Timing Analyzer (análise estática de temporização em modelos *Slow 1200mV 85°C*).
  - Formas de Onda Vetoriais (*University Program VWF* — `.vwf`).
- **Dispositivo Alvo:** FPGAs da família Altera Cyclone IV (ex.: `EP4CGX15BF14C6` / `EP4CE115F29C7`).

---

## 🚀 Como Executar e Simular os Projetos

1. **Clonar o Repositório:**
   ```bash
   git clone https://github.com/yrnnicolas/CircuitosDigitais.git
   cd CircuitosDigitais
   ```

2. **Abrir no Intel/Altera Quartus II:**
   - Para os laboratórios combinacionais: abra o arquivo `.qpf` correspondente (ex.: `LAB2/RCA4.qpf`, `LAB4/LAB4.qpf`, etc.).
   - Para o processador: abra `Neander/Neander.qpf`.

3. **Compilar e Simular:**
   - Clique em **Processing > Start Compilation** (`Ctrl + L`).
   - Abra o arquivo de forma de onda (`.vwf`) e selecione **Simulation > Run Functional Simulation** ou **Run Timing Simulation**.

---

## 👤 Perfil do Autor

- **Autor:** Nicolas Mendonça Fagundes
- **GitHub:** [@yrnnicolas](https://github.com/yrnnicolas)
- **Curso:** Instituto de Informática — Universidade Federal do Rio Grande do Sul (UFRGS)

---

## 📜 Licença e Integridade Acadêmica

- **Licença:** Este projeto está sob a licença [MIT](LICENSE).
- **Integridade Acadêmica:** Consulte o documento [ACADEMIC_INTEGRITY.md](ACADEMIC_INTEGRITY.md) para diretrizes de uso ético, citação e aviso contra cópia não autorizada em atividades acadêmicas avaliativas.
