library verilog;
use verilog.vl_types.all;
entity MUX21_vlg_sample_tst is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        S0              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MUX21_vlg_sample_tst;
