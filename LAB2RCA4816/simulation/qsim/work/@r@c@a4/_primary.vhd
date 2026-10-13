library verilog;
use verilog.vl_types.all;
entity RCA4 is
    port(
        Cout            : out    vl_logic;
        S               : out    vl_logic_vector(3 downto 0);
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        Cin             : in     vl_logic
    );
end RCA4;
