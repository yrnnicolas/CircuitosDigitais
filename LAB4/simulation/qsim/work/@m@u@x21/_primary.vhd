library verilog;
use verilog.vl_types.all;
entity MUX21 is
    port(
        Z               : out    vl_logic;
        B               : in     vl_logic;
        S0              : in     vl_logic;
        A               : in     vl_logic
    );
end MUX21;
