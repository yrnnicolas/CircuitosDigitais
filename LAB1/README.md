# LAB 1: Meio Somador e Somador Completo de 1 Bit

> **Disciplina:** Circuitos Digitais (INF01058)  
> **Instituição:** Instituto de Informática — Universidade Federal do Rio Grande do Sul (INF - UFRGS)  
> **Ambiente:** Altera / Intel Quartus II (Esquemático BDF / Símbolos BSF)

---

## 1. Visão Geral

O **LAB 1** marca o início prático da disciplina de Circuitos Digitais, introduzindo o fluxo de projeto com a ferramenta **Intel/Altera Quartus II**. O foco desta prática é o projeto, modularização e validação de blocos aritméticos elementares em lógica combinacional: o **Meio Somador (Half Adder)** e o **Somador Completo (Full Adder)** de 1 bit.

Esses módulos servem como blocos fundamentais para a construção de somadores de múltiplos bits (RCA) e da futura Unidade Lógica e Aritmética (ULA) do processador **Neander**.

---

## 2. Circuitos Implementados

### 2.1 Meio Somador (*Half Adder* — `Half_adder.bdf`)
Realiza a soma binária de dois operandos de 1 bit ($A$ e $B$), gerando a soma ($S$) e o vai-um (*Carry Out* - $C_{out}$):
- **Equações Booleanas:**
  - $S = A \oplus B$
  - $C_{out} = A \cdot B$
- **Componentes:** Portas lógicas primitivas `XOR` e `AND2`.

### 2.2 Somador Completo (*Full Adder* — `Full_adder.bdf`)
Estende o conceito do meio somador ao incorporar o bit de transporte de entrada ($C_{in}$), permitindo o encadeamento de múltiplos somadores em série:
- **Equações Booleanas:**
  - $S = A \oplus B \oplus C_{in}$
  - $C_{out} = (A \cdot B) + (C_{in} \cdot (A \oplus B))$
- **Componentes:** Portas `XOR`, `AND2` e `OR2`.

A partir dos esquemáticos (`.bdf`), foram gerados os símbolos gráficos correspondentes (`.bsf`), viabilizando o projeto hierárquico nos laboratórios subsequentes.

---

## 3. Estrutura de Arquivos

| Arquivo | Descrição |
| :--- | :--- |
| `Half_adder.bdf` | Esquemático em nível de portas do Meio Somador (*Block Design File*). |
| `Half_adder.bsf` | Símbolo gráfico do Meio Somador para instanciação hierárquica (*Block Symbol File*). |
| `Full_adder.bdf` | Esquemático em nível de portas do Somador Completo de 1 bit. |
| `Full_adder.bsf` | Símbolo gráfico do Somador Completo de 1 bit para instanciação hierárquica. |
| `Captura de tela 2025-03-19 172925.png` | Registro visual da simulação funcional / forma de onda do somador. |
| `Captura de tela 2025-03-19 173656.png` | Registro visual do esquemático montado no editor de blocos do Quartus II. |

---

## 4. Relevância no Contexto da Cadeira

A construção modular do *Full Adder* é a base para:
1. **LAB 2 e LAB 3:** Construção de somadores em cascata (*Ripple Carry Adder*) de 4, 8 e 16 bits e somadores-subtratores.
2. **LAB 5 e LAB 6:** Unidade Lógica e Aritmética (ULA).
3. **Projeto Final do Neander:** Bloco aritmético central responsável pelas instruções de máquina `ADD` e pelas decisões de controle através das flags $N$ e $Z$.

