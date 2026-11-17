#! /c/Source/iverilog-install/bin/vvp
:ivl_version "12.0 (devel)" "(s20150603-1539-g2693dd32b)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "C:\coding\iverilog\lib\ivl\system.vpi";
:vpi_module "C:\coding\iverilog\lib\ivl\vhdl_sys.vpi";
:vpi_module "C:\coding\iverilog\lib\ivl\vhdl_textio.vpi";
:vpi_module "C:\coding\iverilog\lib\ivl\v2005_math.vpi";
:vpi_module "C:\coding\iverilog\lib\ivl\va_math.vpi";
S_000001747b5ea4c0 .scope module, "siso_reg_ff_tb" "siso_reg_ff_tb" 2 1;
 .timescale 0 0;
v000001747b6453b0_0 .var "I", 0 0;
v000001747b644eb0_0 .net "Y", 0 0, v000001747b644cd0_0;  1 drivers
v000001747b6459f0_0 .var "clk", 0 0;
v000001747b645450_0 .var "reset", 0 0;
S_000001747b5abba0 .scope module, "dut" "siso_reg_ff" 2 4, 3 12 0, S_000001747b5ea4c0;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "I";
    .port_info 1 /OUTPUT 1 "Y";
    .port_info 2 /INPUT 1 "clk";
    .port_info 3 /INPUT 1 "reset";
v000001747b645090_0 .net "I", 0 0, v000001747b6453b0_0;  1 drivers
v000001747b6456d0_0 .net "Q", 2 0, L_000001747b6458b0;  1 drivers
v000001747b645810_0 .net "Y", 0 0, v000001747b644cd0_0;  alias, 1 drivers
v000001747b645130_0 .net "clk", 0 0, v000001747b6459f0_0;  1 drivers
v000001747b645310_0 .net "reset", 0 0, v000001747b645450_0;  1 drivers
L_000001747b645630 .part L_000001747b6458b0, 2, 1;
L_000001747b645b30 .part L_000001747b6458b0, 1, 1;
L_000001747b6458b0 .concat8 [ 1 1 1 0], v000001747b644870_0, v000001747b5f5b50_0, v000001747b5e7df0_0;
L_000001747b6454f0 .part L_000001747b6458b0, 0, 1;
S_000001747b5ad790 .scope module, "ff1" "ff" 3 16, 3 1 0, S_000001747b5abba0;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "D";
    .port_info 1 /OUTPUT 1 "Q";
    .port_info 2 /INPUT 1 "clk";
    .port_info 3 /INPUT 1 "reset";
v000001747b5e8370_0 .net "D", 0 0, v000001747b6453b0_0;  alias, 1 drivers
v000001747b5e7df0_0 .var "Q", 0 0;
v000001747b5abd30_0 .net "clk", 0 0, v000001747b6459f0_0;  alias, 1 drivers
v000001747b5ad920_0 .net "reset", 0 0, v000001747b645450_0;  alias, 1 drivers
E_000001747b5eb270 .event posedge, v000001747b5ad920_0, v000001747b5abd30_0;
S_000001747b5ad9c0 .scope module, "ff2" "ff" 3 17, 3 1 0, S_000001747b5abba0;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "D";
    .port_info 1 /OUTPUT 1 "Q";
    .port_info 2 /INPUT 1 "clk";
    .port_info 3 /INPUT 1 "reset";
v000001747b5adb50_0 .net "D", 0 0, L_000001747b645630;  1 drivers
v000001747b5f5b50_0 .var "Q", 0 0;
v000001747b5f5bf0_0 .net "clk", 0 0, v000001747b6459f0_0;  alias, 1 drivers
v000001747b5f5c90_0 .net "reset", 0 0, v000001747b645450_0;  alias, 1 drivers
S_000001747b5f5d30 .scope module, "ff3" "ff" 3 18, 3 1 0, S_000001747b5abba0;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "D";
    .port_info 1 /OUTPUT 1 "Q";
    .port_info 2 /INPUT 1 "clk";
    .port_info 3 /INPUT 1 "reset";
v000001747b5f5ec0_0 .net "D", 0 0, L_000001747b645b30;  1 drivers
v000001747b644870_0 .var "Q", 0 0;
v000001747b644910_0 .net "clk", 0 0, v000001747b6459f0_0;  alias, 1 drivers
v000001747b6449b0_0 .net "reset", 0 0, v000001747b645450_0;  alias, 1 drivers
S_000001747b644a50 .scope module, "ff4" "ff" 3 19, 3 1 0, S_000001747b5abba0;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "D";
    .port_info 1 /OUTPUT 1 "Q";
    .port_info 2 /INPUT 1 "clk";
    .port_info 3 /INPUT 1 "reset";
v000001747b645a90_0 .net "D", 0 0, L_000001747b6454f0;  1 drivers
v000001747b644cd0_0 .var "Q", 0 0;
v000001747b644f50_0 .net "clk", 0 0, v000001747b6459f0_0;  alias, 1 drivers
v000001747b6451d0_0 .net "reset", 0 0, v000001747b645450_0;  alias, 1 drivers
    .scope S_000001747b5ad790;
T_0 ;
    %wait E_000001747b5eb270;
    %load/vec4 v000001747b5ad920_0;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_0.0, 4;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v000001747b5e7df0_0, 0;
    %jmp T_0.1;
T_0.0 ;
    %load/vec4 v000001747b5e8370_0;
    %assign/vec4 v000001747b5e7df0_0, 0;
T_0.1 ;
    %jmp T_0;
    .thread T_0;
    .scope S_000001747b5ad9c0;
T_1 ;
    %wait E_000001747b5eb270;
    %load/vec4 v000001747b5f5c90_0;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_1.0, 4;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v000001747b5f5b50_0, 0;
    %jmp T_1.1;
T_1.0 ;
    %load/vec4 v000001747b5adb50_0;
    %assign/vec4 v000001747b5f5b50_0, 0;
T_1.1 ;
    %jmp T_1;
    .thread T_1;
    .scope S_000001747b5f5d30;
T_2 ;
    %wait E_000001747b5eb270;
    %load/vec4 v000001747b6449b0_0;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_2.0, 4;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v000001747b644870_0, 0;
    %jmp T_2.1;
T_2.0 ;
    %load/vec4 v000001747b5f5ec0_0;
    %assign/vec4 v000001747b644870_0, 0;
T_2.1 ;
    %jmp T_2;
    .thread T_2;
    .scope S_000001747b644a50;
T_3 ;
    %wait E_000001747b5eb270;
    %load/vec4 v000001747b6451d0_0;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_3.0, 4;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v000001747b644cd0_0, 0;
    %jmp T_3.1;
T_3.0 ;
    %load/vec4 v000001747b645a90_0;
    %assign/vec4 v000001747b644cd0_0, 0;
T_3.1 ;
    %jmp T_3;
    .thread T_3;
    .scope S_000001747b5ea4c0;
T_4 ;
    %delay 1, 0;
    %load/vec4 v000001747b6459f0_0;
    %inv;
    %store/vec4 v000001747b6459f0_0, 0, 1;
    %jmp T_4;
    .thread T_4;
    .scope S_000001747b5ea4c0;
T_5 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v000001747b6453b0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v000001747b6459f0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v000001747b645450_0, 0, 1;
    %vpi_call 2 8 "$monitor", "I=%b Y=%b", v000001747b6453b0_0, v000001747b644eb0_0, " " {0 0 0};
    %delay 2, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v000001747b645450_0, 0, 1;
    %delay 2, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v000001747b6453b0_0, 0, 1;
    %delay 2, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v000001747b6453b0_0, 0, 1;
    %delay 2, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v000001747b6453b0_0, 0, 1;
    %delay 2, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v000001747b6453b0_0, 0, 1;
    %delay 10, 0;
    %vpi_call 2 14 "$finish" {0 0 0};
    %end;
    .thread T_5;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "siso_reg_ff_tb.v";
    "siso_reg_ff.v";
