#! /data/data/com.termux/files/usr/bin/vvp
:ivl_version "12.0 (stable)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "/data/data/com.termux/files/usr/lib/ivl/system.vpi";
:vpi_module "/data/data/com.termux/files/usr/lib/ivl/vhdl_sys.vpi";
:vpi_module "/data/data/com.termux/files/usr/lib/ivl/vhdl_textio.vpi";
:vpi_module "/data/data/com.termux/files/usr/lib/ivl/v2005_math.vpi";
:vpi_module "/data/data/com.termux/files/usr/lib/ivl/va_math.vpi";
S_0xb4000074c1bcd6d0 .scope module, "not_tb" "not_tb" 2 1;
 .timescale 0 0;
L_0xb400007371bc5b50 .functor NOT 1, v0xb4000074b1bce430_0, C4<0>, C4<0>, C4<0>;
v0xb4000074b1bce430_0 .var "A", 0 0;
v0xb4000074b1bcf4b0_0 .net "Y", 0 0, L_0xb400007371bc5b50;  1 drivers
    .scope S_0xb4000074c1bcd6d0;
T_0 ;
    %vpi_call 2 7 "$dumpfile", "not.vcd" {0 0 0};
    %vpi_call 2 8 "$dumpvars", 32'sb00000000000000000000000000000000, S_0xb4000074c1bcd6d0 {0 0 0};
    %vpi_call 2 9 "$display", "A | Y" {0 0 0};
    %vpi_call 2 10 "$monitor", "%b | %b", v0xb4000074b1bce430_0, v0xb4000074b1bcf4b0_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb4000074b1bce430_0, 0, 1;
    %delay 10, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb4000074b1bce430_0, 0, 1;
    %delay 10, 0;
    %vpi_call 2 13 "$finish" {0 0 0};
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 3;
    "N/A";
    "<interactive>";
    "not_tb.v";
