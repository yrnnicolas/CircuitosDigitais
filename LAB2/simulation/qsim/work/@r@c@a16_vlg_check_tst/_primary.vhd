library verilog;
use verilog.vl_types.all;
entity RCA16_vlg_check_tst is
    port(
        Cout            : in     vl_logic;
        S               : in     vl_logic_vector(0 to 15);
        sampler_rx      : in     vl_logic
    );
end RCA16_vlg_check_tst;
