library verilog;
use verilog.vl_types.all;
entity DECODER416 is
    port(
        D15             : out    vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        D               : in     vl_logic;
        D14             : out    vl_logic;
        D13             : out    vl_logic;
        D12             : out    vl_logic;
        D11             : out    vl_logic;
        D10             : out    vl_logic;
        D9              : out    vl_logic;
        D8              : out    vl_logic;
        D7              : out    vl_logic;
        D6              : out    vl_logic;
        D5              : out    vl_logic;
        D4              : out    vl_logic;
        D3              : out    vl_logic;
        D2              : out    vl_logic;
        D1              : out    vl_logic;
        D0              : out    vl_logic
    );
end DECODER416;
