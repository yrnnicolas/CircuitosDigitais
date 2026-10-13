library verilog;
use verilog.vl_types.all;
entity RCA16_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(0 to 15);
        B               : in     vl_logic_vector(0 to 15);
        Cin             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end RCA16_vlg_sample_tst;
