# LAB 6: Decodificador para Display de 7 Segmentos e ULA com Flags de Condição

> **Disciplina:** Circuitos Digitais (INF01058)  
> **Instituição:** Instituto de Informática — Universidade Federal do Rio Grande do Sul (INF - UFRGS)  
> **Professor:** Sérgio Bampi  
> **Ambiente:** Altera / Intel Quartus II, ModelSim, Síntese Física para FPGA Cyclone IV

---

## 1. Visão Geral

O **LAB 6** é composto por dois grandes eixos de projeto fundamentais na disciplina de Circuitos Digitais da UFRGS:
1. **Decodificador BCD/Hexadecimal para Display de 7 Segmentos:** Síntese combinacional a partir de tabela-verdade, simplificação booleana através de **Mapas de Karnaugh (K-maps)** e implementação modular de cada segmento ($a$ a $g$).
2. **Evolução da ULA com Flags de Estado ($N$ e $Z$):** Integração da ULA de 4 bits com blocos geradores de códigos de condição (flags de *Zero* e *Negativo*), etapa indispensável para a viabilização das instruções de desvio condicional do processador **Neander**.

---

## 2. Decodificador para Display de 7 Segmentos

O circuito converte uma palavra binária de 4 bits ($A, B, C, D$, representando os dígitos de `0` a `F` em hexadecimal) nos 7 sinais de controle dos segmentos de um display:

```
         --- a ---
        |         |
        f         b
        |         |
         --- g ---
        |         |
        e         c
        |         |
         --- d ---
```

### 2.1 Projeto Modular por Segmento
Cada segmento foi sintetizado em um circuito individual (`.bdf` / `.bsf`), obtido via minimização por Mapa de Karnaugh:
- **`S_A.bdf` (Segmento A):** Consumo de área = 3 LEs.
- **`S_B.bdf` (Segmento B):** Consumo de área = 3 LEs.
- **`S_C.bdf` (Segmento C):** Consumo de área = 3 LEs.
- **`S_D.bdf` (Segmento D):** Consumo de área = 3 LEs.
- **`S_E.bdf` (Segmento E):** Consumo de área = 3 LEs.
- **`S_F.bdf` (Segmento F):** Consumo de área = 3 LEs.
- **`S_G.bdf` (Segmento G):** Consumo de área = 3 LEs.

### 2.2 Módulo Superior (`Decodificador_Display_7.bdf`)
Instancia os 7 subcircuitos `S_A` até `S_G`, centralizando as 4 entradas e disponibilizando os 7 barramentos de saída para conexão aos pinos da FPGA. A área total pós-otimização lógica pelo compilador Quartus II totalizou 15 Logic Elements.

---

## 3. Subpasta `ULA/`: Unidade Lógica com Registrador de Flags

Na subpasta `ULA/`, a Unidade Lógica e Aritmética atinge seu estágio maduro, integrando:
- **Operações Aritméticas e Lógicas:** Somador `Somador_RCA_4b`, portas lógicas de 4 bits (`AND21_4b`, `OR21_4b`, `NOT_4b`) e multiplexadores (`Mux21_4b`, `Mux2_1`).
- **Geração de Flags de Status:**
  - **Flag Negativo (`flag_neg.bdf` / `.bsf`):** Extrai o bit mais significativo (MSB) do resultado ($Z[3]$ no caso de 4 bits ou $Z[7]$ no caso de 8 bits). Se $MSB = 1$, o número em complemento a 2 é negativo ($N = 1$).
  - **Flag Zero (`flag_z.bdf` / `.bsf`):** Circuito combinacional com portas `NOR` / `OR` que avalia todos os bits do barramento de resultado. Se todos os bits forem iguais a zero, ativa $Z = 1$.

---

## 4. Estrutura de Arquivos e Subdiretórios

```
LAB6/
├── Decodificador_Display_7.bdf/.bsf  # Esquemático e símbolo top-level do decodificador
├── S_A.bdf até S_G.bdf / .bsf        # Esquemáticos e símbolos individuais dos segmentos A a G
├── Releatório - LAB6.pdf             # Relatório técnico completo da prática experimental
├── Waveform_decod.vwf                # Formas de onda de simulação funcional do decodificador
├── SDC.sdc                           # Restrições de temporização estática (TimeQuest)
├── ULA.* (qpf, qsf, fit, map, sta)   # Arquivos de síntese e compilação no Quartus II
├── Prints/                           # Capturas de tela de simulações e RTL Viewer
│   ├── Display_Decoder_Waveform.jpg  # Simulação funcional cobrindo entradas 0x0 a 0xF
│   ├── Display_Dec_RTL.jpg           # Esquemático sintetizado do decodificador completo
│   ├── S_ab_RTL.jpg                  # RTL Viewer dos segmentos A e B
│   └── S_efg_RTL.jpg                 # RTL Viewer dos segmentos E, F e G
└── ULA/                              # Subpasta com o projeto da ULA com Flags
    ├── ULA.bdf / .qsf                # Top-level da ULA com flags
    ├── flag_neg.bdf / .bsf           # Bloco de geração da flag de Negativo (N)
    ├── flag_z.bdf / .bsf             # Bloco de geração da flag de Zero (Z)
    ├── Somador_RCA_4b.bdf / .bsf     # Somador de 4 bits
    ├── AND21_4b / OR21_4b / NOT_4b   # Blocos de operações lógicas em 4 bits
    └── Mux21_4b / Mux2_1             # Multiplexadores de seleção
```

---

## 5. Relação com o Neander e a Cadeira

1. **Visualização Externa dos Dados:** O decodificador de 7 segmentos é utilizado nas placas didáticas de FPGA da UFRGS (ex.: linhas Altera DE2 / DE0 / Cyclone IV) para exibir em displays os valores contidos no Acumulador (`AC`) ou no Contador de Programa (`PC`).
2. **Desvios Condicionais do Neander:** As flags $N$ e $Z$ desenvolvidas na subpasta `ULA/` são conectadas aos registradores de flag e fornecem a condição lógica para a Unidade de Controle executar os saltos condicionais:
   - `JN` (*Jump if Negative*): salta se $N = 1$.
   - `JZ` (*Jump if Zero*): salta se $Z = 1$.

