# LAB 5: Unidade Lógica e Aritmética (ULA) de 4 Bits

> **Disciplina:** Circuitos Digitais (INF01058)  
> **Instituição:** Instituto de Informática — Universidade Federal do Rio Grande do Sul (INF - UFRGS)  
> **Ambiente:** Altera / Intel Quartus II (Esquemático BDF e Símbolos BSF)

---

## 1. Visão Geral

O **LAB 5** consolida o aprendizado dos módulos anteriores ao projetar e integrar uma **Unidade Lógica e Aritmética (ULA) de 4 bits**. A ULA é o núcleo de processamento de qualquer Unidade Central de Processamento (CPU), responsável por realizar operações booleanas e aritméticas sobre os dados contidos nos registradores ou na memória.

Nesta prática, os blocos desenvolvidos no LAB 1, LAB 2 e LAB 4 são reutilizados de forma modular e hierárquica.

---

## 2. Arquitetura da ULA

O esquemático de nível superior (`ULA.bdf`) integra os seguintes blocos funcionais trabalhando em paralelo sobre duas palavras de entrada de 4 bits, $A[3..0]$ e $B[3..0]$:

```
                  +---------------------------+
  A[3..0], B[3..0]|  1. Bloco RCA4 (Soma)     |-----> [Entrada 0]
                  |  2. Bloco AND (Lógico)    |-----> [Entrada 1]  +--------+
                  |  3. Bloco OR  (Lógico)    |-----> [Entrada 2]--| MUX41  |----> Z[3..0]
                  |  4. Bloco NOT (Inversão)  |-----> [Entrada 3]  +--------+
                  +---------------------------+                         ^
                                                                        |
                                                     Seletor S[1..0] ---+
```

### Operações Realizadas:
| Seleção ($S$) | Operação | Descrição |
| :---: | :---: | :--- |
| `00` | **Soma ($A + B + C_{in}$)** | Adição binária de 4 bits via Ripple Carry Adder (`RCA4`). Gera $C_{out}$. |
| `01` | **AND ($A \cdot B$)** | Conjunção lógica bit a bit em 4 bits. |
| `10` | **OR ($A + B$)** | Disjunção lógica bit a bit em 4 bits. |
| `11` | **NOT ($\overline{A}$)** | Inversão lógica bit a bit do operando $A$. |

A comutação entre as saídas das operações é realizada pelo multiplexador 4:1 de 4 bits (`MUX41.bdf`), enquanto o $C_{out}$ é gerado pelo bloco somador `RCA4`.

---

## 3. Estrutura de Arquivos

| Arquivo | Descrição |
| :--- | :--- |
| `ULA.bdf` | Esquemático principal de nível superior integrando os blocos da ULA de 4 bits. |
| `MUX41.bdf` / `.bsf` | Multiplexador 4 para 1 de barramento (utilizado para seleção da operação da ULA). |
| `RCA4.bdf` / `.bsf` | Somador Ripple Carry de 4 bits (bloco aritmético da ULA). |
| `Full_adder.bdf` | Somador completo de 1 bit que compõe o módulo `RCA4`. |
| `RCA8.bdf` / `.bsf` | Módulo de somador de 8 bits disponível no projeto para extensões. |
| `RCA16.bdf` | Módulo de somador de 16 bits disponível no projeto. |
| `LAB5.qpf` / `LAB5.qsf` / `LAB5.qws` | Arquivos de gerenciamento do projeto no Quartus II. |
| `LAB5_assignment_defaults.qdf` | Definições padrão de atribuições e pinagem da Altera. |

---

## 4. Relevância no Contexto da Cadeira e do Neander

A ULA desenvolvida no LAB 5 é a versão direta (em escala de 4 bits) da futura ULA do processador **Neander**:
- No Neander padrão (8 bits), as operações suportadas pela ULA coincidem exatamente com esta arquitetura: `ADD`, `AND`, `OR`, `NOT` e passagem de dados (`LDA`/`Y`).
- No próximo laboratório (**LAB 6**), esta ULA é estendida com os circuitos de geração das **flags de condição** ($N$ - Negativo e $Z$ - Zero), que viabilizam desvios condicionais na execução do programa (`JN` e `JZ`).

