library verilog;
use verilog.vl_types.all;
entity Decodificador_Display_7 is
    port(
        S_A             : out    vl_logic;
        E               : in     vl_logic_vector(3 downto 0);
        S_B             : out    vl_logic;
        S_C             : out    vl_logic;
        S_D             : out    vl_logic;
        S_E             : out    vl_logic;
        S_F             : out    vl_logic;
        S_G             : out    vl_logic
    );
end Decodificador_Display_7;
