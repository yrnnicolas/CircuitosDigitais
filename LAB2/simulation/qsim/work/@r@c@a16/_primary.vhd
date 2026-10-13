library verilog;
use verilog.vl_types.all;
entity RCA16 is
    port(
        Cout            : out    vl_logic;
        Cin             : in     vl_logic;
        A               : in     vl_logic_vector(0 to 15);
        B               : in     vl_logic_vector(0 to 15);
        S               : out    vl_logic_vector(0 to 15)
    );
end RCA16;
