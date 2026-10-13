library verilog;
use verilog.vl_types.all;
entity RCA8 is
    port(
        Cout            : out    vl_logic;
        Cin             : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        S               : out    vl_logic_vector(7 downto 0)
    );
end RCA8;
