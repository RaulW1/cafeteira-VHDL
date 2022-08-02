-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "08/02/2022 15:19:17"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_cafeteira IS
    PORT (
	i_cafe : IN std_logic;
	i_cafe_leite : IN std_logic;
	i_moca : IN std_logic;
	i_tamanho : IN std_logic;
	i_acucar : IN std_logic;
	i_start : IN std_logic;
	i_clk : IN std_logic;
	i_reset : IN std_logic;
	o_led_cafe : BUFFER std_logic;
	o_led_cafe_leite : BUFFER std_logic;
	o_led_moca : BUFFER std_logic;
	o_led_tamanho : BUFFER std_logic;
	o_led_acucar : BUFFER std_logic;
	o_display0 : BUFFER std_logic_vector(6 DOWNTO 0);
	o_display1 : BUFFER std_logic_vector(6 DOWNTO 0);
	o_display2 : BUFFER std_logic_vector(6 DOWNTO 0);
	o_display3 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END top_cafeteira;

-- Design Ports Information
-- o_led_cafe	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_led_cafe_leite	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_led_moca	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_led_tamanho	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_led_acucar	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display0[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display0[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display0[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display0[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display0[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display0[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display0[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display1[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display1[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display1[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display1[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display1[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display1[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display1[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display2[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display2[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display2[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display2[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display2[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display2[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display2[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display3[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display3[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display3[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display3[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display3[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display3[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_display3[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_cafe	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_cafe_leite	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_moca	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_tamanho	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_acucar	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_reset	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_cafeteira IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_cafe : std_logic;
SIGNAL ww_i_cafe_leite : std_logic;
SIGNAL ww_i_moca : std_logic;
SIGNAL ww_i_tamanho : std_logic;
SIGNAL ww_i_acucar : std_logic;
SIGNAL ww_i_start : std_logic;
SIGNAL ww_i_clk : std_logic;
SIGNAL ww_i_reset : std_logic;
SIGNAL ww_o_led_cafe : std_logic;
SIGNAL ww_o_led_cafe_leite : std_logic;
SIGNAL ww_o_led_moca : std_logic;
SIGNAL ww_o_led_tamanho : std_logic;
SIGNAL ww_o_led_acucar : std_logic;
SIGNAL ww_o_display0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_o_display1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_o_display2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_o_display3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \u01|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u01|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u01|altpll_component|auto_generated|locked~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TDO~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \~ALTERA_TDO~~obuf_o\ : std_logic;
SIGNAL \i_reset~input_o\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \u01|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \i_cafe_leite~input_o\ : std_logic;
SIGNAL \i_moca~input_o\ : std_logic;
SIGNAL \i_cafe~input_o\ : std_logic;
SIGNAL \u02|process_0~0_combout\ : std_logic;
SIGNAL \i_start~input_o\ : std_logic;
SIGNAL \u02|Selector170~3_combout\ : std_logic;
SIGNAL \u02|Selector171~0_combout\ : std_logic;
SIGNAL \u02|Selector171~1_combout\ : std_logic;
SIGNAL \u01|altpll_component|auto_generated|wire_pll1_locked\ : std_logic;
SIGNAL \u01|altpll_component|auto_generated|pll_lock_sync~feeder_combout\ : std_logic;
SIGNAL \u01|altpll_component|auto_generated|pll_lock_sync~q\ : std_logic;
SIGNAL \u01|altpll_component|auto_generated|locked~combout\ : std_logic;
SIGNAL \u01|altpll_component|auto_generated|locked~clkctrl_outclk\ : std_logic;
SIGNAL \u02|w_estado.st_done~q\ : std_logic;
SIGNAL \u02|Selector170~4_combout\ : std_logic;
SIGNAL \u02|w_estado.st_preparando~q\ : std_logic;
SIGNAL \u02|Selector166~0_combout\ : std_logic;
SIGNAL \u02|o_timer_done_en~q\ : std_logic;
SIGNAL \u08|w_ticks[0]~1_combout\ : std_logic;
SIGNAL \u08|Add1~0_combout\ : std_logic;
SIGNAL \u08|w_ticks[31]~0_combout\ : std_logic;
SIGNAL \u08|w_ticks[0]~14_combout\ : std_logic;
SIGNAL \u08|Add1~1\ : std_logic;
SIGNAL \u08|Add1~2_combout\ : std_logic;
SIGNAL \u08|Add1~3\ : std_logic;
SIGNAL \u08|Add1~4_combout\ : std_logic;
SIGNAL \u08|Add1~5\ : std_logic;
SIGNAL \u08|Add1~6_combout\ : std_logic;
SIGNAL \u08|Add1~7\ : std_logic;
SIGNAL \u08|Add1~8_combout\ : std_logic;
SIGNAL \u08|Add1~9\ : std_logic;
SIGNAL \u08|Add1~10_combout\ : std_logic;
SIGNAL \u08|Add1~11\ : std_logic;
SIGNAL \u08|Add1~12_combout\ : std_logic;
SIGNAL \u08|Add1~13\ : std_logic;
SIGNAL \u08|Add1~14_combout\ : std_logic;
SIGNAL \u08|w_ticks[7]~13_combout\ : std_logic;
SIGNAL \u08|Add1~15\ : std_logic;
SIGNAL \u08|Add1~16_combout\ : std_logic;
SIGNAL \u08|Add1~17\ : std_logic;
SIGNAL \u08|Add1~18_combout\ : std_logic;
SIGNAL \u08|Add1~19\ : std_logic;
SIGNAL \u08|Add1~20_combout\ : std_logic;
SIGNAL \u08|Add1~21\ : std_logic;
SIGNAL \u08|Add1~22_combout\ : std_logic;
SIGNAL \u08|Equal0~6_combout\ : std_logic;
SIGNAL \u08|Equal0~7_combout\ : std_logic;
SIGNAL \u08|Equal0~8_combout\ : std_logic;
SIGNAL \u08|Equal0~9_combout\ : std_logic;
SIGNAL \u08|Add1~23\ : std_logic;
SIGNAL \u08|Add1~24_combout\ : std_logic;
SIGNAL \u08|w_ticks[12]~12_combout\ : std_logic;
SIGNAL \u08|Add1~25\ : std_logic;
SIGNAL \u08|Add1~26_combout\ : std_logic;
SIGNAL \u08|w_ticks[13]~11_combout\ : std_logic;
SIGNAL \u08|Add1~27\ : std_logic;
SIGNAL \u08|Add1~28_combout\ : std_logic;
SIGNAL \u08|w_ticks[14]~10_combout\ : std_logic;
SIGNAL \u08|Add1~29\ : std_logic;
SIGNAL \u08|Add1~30_combout\ : std_logic;
SIGNAL \u08|w_ticks[15]~9_combout\ : std_logic;
SIGNAL \u08|Add1~31\ : std_logic;
SIGNAL \u08|Add1~32_combout\ : std_logic;
SIGNAL \u08|Add1~33\ : std_logic;
SIGNAL \u08|Add1~34_combout\ : std_logic;
SIGNAL \u08|w_ticks[17]~8_combout\ : std_logic;
SIGNAL \u08|Add1~35\ : std_logic;
SIGNAL \u08|Add1~36_combout\ : std_logic;
SIGNAL \u08|Add1~37\ : std_logic;
SIGNAL \u08|Add1~38_combout\ : std_logic;
SIGNAL \u08|w_ticks[19]~7_combout\ : std_logic;
SIGNAL \u08|Add1~39\ : std_logic;
SIGNAL \u08|Add1~40_combout\ : std_logic;
SIGNAL \u08|w_ticks[20]~6_combout\ : std_logic;
SIGNAL \u08|Add1~41\ : std_logic;
SIGNAL \u08|Add1~42_combout\ : std_logic;
SIGNAL \u08|w_ticks[21]~5_combout\ : std_logic;
SIGNAL \u08|Add1~43\ : std_logic;
SIGNAL \u08|Add1~44_combout\ : std_logic;
SIGNAL \u08|w_ticks[22]~4_combout\ : std_logic;
SIGNAL \u08|Add1~45\ : std_logic;
SIGNAL \u08|Add1~46_combout\ : std_logic;
SIGNAL \u08|w_ticks[23]~3_combout\ : std_logic;
SIGNAL \u08|Equal0~2_combout\ : std_logic;
SIGNAL \u08|Add1~47\ : std_logic;
SIGNAL \u08|Add1~48_combout\ : std_logic;
SIGNAL \u08|Add1~49\ : std_logic;
SIGNAL \u08|Add1~50_combout\ : std_logic;
SIGNAL \u08|w_ticks[25]~2_combout\ : std_logic;
SIGNAL \u08|Add1~51\ : std_logic;
SIGNAL \u08|Add1~52_combout\ : std_logic;
SIGNAL \u08|Add1~53\ : std_logic;
SIGNAL \u08|Add1~54_combout\ : std_logic;
SIGNAL \u08|Equal0~1_combout\ : std_logic;
SIGNAL \u08|Equal0~3_combout\ : std_logic;
SIGNAL \u08|Add1~55\ : std_logic;
SIGNAL \u08|Add1~56_combout\ : std_logic;
SIGNAL \u08|Add1~57\ : std_logic;
SIGNAL \u08|Add1~58_combout\ : std_logic;
SIGNAL \u08|Add1~59\ : std_logic;
SIGNAL \u08|Add1~60_combout\ : std_logic;
SIGNAL \u08|Add1~61\ : std_logic;
SIGNAL \u08|Add1~62_combout\ : std_logic;
SIGNAL \u08|Equal0~0_combout\ : std_logic;
SIGNAL \u08|Equal0~4_combout\ : std_logic;
SIGNAL \u08|Equal0~5_combout\ : std_logic;
SIGNAL \u08|Equal0~10_combout\ : std_logic;
SIGNAL \u08|w_count[0]~92_combout\ : std_logic;
SIGNAL \u08|w_count[1]~31_combout\ : std_logic;
SIGNAL \u08|w_count[30]~87_combout\ : std_logic;
SIGNAL \u08|w_count[1]~32\ : std_logic;
SIGNAL \u08|w_count[2]~33_combout\ : std_logic;
SIGNAL \u08|w_count[2]~34\ : std_logic;
SIGNAL \u08|w_count[3]~35_combout\ : std_logic;
SIGNAL \u08|w_count[3]~36\ : std_logic;
SIGNAL \u08|w_count[4]~37_combout\ : std_logic;
SIGNAL \u08|w_count[4]~38\ : std_logic;
SIGNAL \u08|w_count[5]~39_combout\ : std_logic;
SIGNAL \u08|w_count[5]~40\ : std_logic;
SIGNAL \u08|w_count[6]~41_combout\ : std_logic;
SIGNAL \u08|w_count[6]~42\ : std_logic;
SIGNAL \u08|w_count[7]~43_combout\ : std_logic;
SIGNAL \u08|w_count[7]~44\ : std_logic;
SIGNAL \u08|w_count[8]~45_combout\ : std_logic;
SIGNAL \u08|w_count[8]~46\ : std_logic;
SIGNAL \u08|w_count[9]~47_combout\ : std_logic;
SIGNAL \u08|w_count[9]~48\ : std_logic;
SIGNAL \u08|w_count[10]~49_combout\ : std_logic;
SIGNAL \u08|w_count[10]~50\ : std_logic;
SIGNAL \u08|w_count[11]~51_combout\ : std_logic;
SIGNAL \u08|w_count[11]~52\ : std_logic;
SIGNAL \u08|w_count[12]~53_combout\ : std_logic;
SIGNAL \u08|w_count[12]~54\ : std_logic;
SIGNAL \u08|w_count[13]~55_combout\ : std_logic;
SIGNAL \u08|w_count[13]~56\ : std_logic;
SIGNAL \u08|w_count[14]~57_combout\ : std_logic;
SIGNAL \u08|w_count[14]~58\ : std_logic;
SIGNAL \u08|w_count[15]~59_combout\ : std_logic;
SIGNAL \u08|w_count[15]~60\ : std_logic;
SIGNAL \u08|w_count[16]~61_combout\ : std_logic;
SIGNAL \u08|w_count[16]~62\ : std_logic;
SIGNAL \u08|w_count[17]~63_combout\ : std_logic;
SIGNAL \u08|w_count[17]~64\ : std_logic;
SIGNAL \u08|w_count[18]~65_combout\ : std_logic;
SIGNAL \u08|w_count[18]~66\ : std_logic;
SIGNAL \u08|w_count[19]~67_combout\ : std_logic;
SIGNAL \u08|w_count[19]~68\ : std_logic;
SIGNAL \u08|w_count[20]~69_combout\ : std_logic;
SIGNAL \u08|w_count[20]~70\ : std_logic;
SIGNAL \u08|w_count[21]~71_combout\ : std_logic;
SIGNAL \u08|w_count[21]~72\ : std_logic;
SIGNAL \u08|w_count[22]~73_combout\ : std_logic;
SIGNAL \u08|w_count[22]~74\ : std_logic;
SIGNAL \u08|w_count[23]~75_combout\ : std_logic;
SIGNAL \u08|w_count[23]~76\ : std_logic;
SIGNAL \u08|w_count[24]~77_combout\ : std_logic;
SIGNAL \u08|w_count[24]~78\ : std_logic;
SIGNAL \u08|w_count[25]~79_combout\ : std_logic;
SIGNAL \u08|w_count[25]~80\ : std_logic;
SIGNAL \u08|w_count[26]~81_combout\ : std_logic;
SIGNAL \u08|w_count[26]~82\ : std_logic;
SIGNAL \u08|w_count[27]~83_combout\ : std_logic;
SIGNAL \u08|w_count[27]~84\ : std_logic;
SIGNAL \u08|w_count[28]~85_combout\ : std_logic;
SIGNAL \u08|w_count[28]~86\ : std_logic;
SIGNAL \u08|w_count[29]~88_combout\ : std_logic;
SIGNAL \u08|w_count[29]~89\ : std_logic;
SIGNAL \u08|w_count[30]~90_combout\ : std_logic;
SIGNAL \u08|o_valve_end~0_combout\ : std_logic;
SIGNAL \u08|o_valve_end~6_combout\ : std_logic;
SIGNAL \u08|o_valve_end~7_combout\ : std_logic;
SIGNAL \u08|o_valve_end~9_combout\ : std_logic;
SIGNAL \u08|o_valve_end~8_combout\ : std_logic;
SIGNAL \u08|o_valve_end~10_combout\ : std_logic;
SIGNAL \u08|o_valve_end~3_combout\ : std_logic;
SIGNAL \u08|w_count[30]~91\ : std_logic;
SIGNAL \u08|w_count[31]~93_combout\ : std_logic;
SIGNAL \u02|o_count_done[31]~feeder_combout\ : std_logic;
SIGNAL \u02|o_count_done[31]~0_combout\ : std_logic;
SIGNAL \u08|o_valve_end~2_combout\ : std_logic;
SIGNAL \u02|o_count_done[0]~1_combout\ : std_logic;
SIGNAL \u08|o_valve_end~1_combout\ : std_logic;
SIGNAL \u08|o_valve_end~4_combout\ : std_logic;
SIGNAL \u08|o_valve_end~5_combout\ : std_logic;
SIGNAL \u08|o_valve_end~11_combout\ : std_logic;
SIGNAL \u08|o_valve_end~12_combout\ : std_logic;
SIGNAL \u08|o_valve_end~q\ : std_logic;
SIGNAL \u02|Selector170~2_combout\ : std_logic;
SIGNAL \u02|Selector169~0_combout\ : std_logic;
SIGNAL \u02|w_estado.st_idle~q\ : std_logic;
SIGNAL \u02|o_led_cafe~0_combout\ : std_logic;
SIGNAL \u02|o_led_cafe~q\ : std_logic;
SIGNAL \u02|o_led_cafe_leite~0_combout\ : std_logic;
SIGNAL \u02|o_led_cafe_leite~q\ : std_logic;
SIGNAL \u02|o_led_moca~0_combout\ : std_logic;
SIGNAL \u02|o_led_moca~q\ : std_logic;
SIGNAL \i_tamanho~input_o\ : std_logic;
SIGNAL \u02|o_led_tamanho~0_combout\ : std_logic;
SIGNAL \u02|o_led_tamanho~q\ : std_logic;
SIGNAL \i_acucar~input_o\ : std_logic;
SIGNAL \u02|o_led_acucar~0_combout\ : std_logic;
SIGNAL \u02|o_led_acucar~q\ : std_logic;
SIGNAL \u02|Selector0~0_combout\ : std_logic;
SIGNAL \u01|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u02|o_sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u08|w_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u08|w_ticks\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u02|o_count_done\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_i_reset~input_o\ : std_logic;
SIGNAL \u01|altpll_component|auto_generated|ALT_INV_locked~combout\ : std_logic;
SIGNAL \u02|ALT_INV_o_sel\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_i_cafe <= i_cafe;
ww_i_cafe_leite <= i_cafe_leite;
ww_i_moca <= i_moca;
ww_i_tamanho <= i_tamanho;
ww_i_acucar <= i_acucar;
ww_i_start <= i_start;
ww_i_clk <= i_clk;
ww_i_reset <= i_reset;
o_led_cafe <= ww_o_led_cafe;
o_led_cafe_leite <= ww_o_led_cafe_leite;
o_led_moca <= ww_o_led_moca;
o_led_tamanho <= ww_o_led_tamanho;
o_led_acucar <= ww_o_led_acucar;
o_display0 <= ww_o_display0;
o_display1 <= ww_o_display1;
o_display2 <= ww_o_display2;
o_display3 <= ww_o_display3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u01|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \i_clk~input_o\);

\u01|altpll_component|auto_generated|wire_pll1_clk\(0) <= \u01|altpll_component|auto_generated|pll1_CLK_bus\(0);
\u01|altpll_component|auto_generated|wire_pll1_clk\(1) <= \u01|altpll_component|auto_generated|pll1_CLK_bus\(1);
\u01|altpll_component|auto_generated|wire_pll1_clk\(2) <= \u01|altpll_component|auto_generated|pll1_CLK_bus\(2);
\u01|altpll_component|auto_generated|wire_pll1_clk\(3) <= \u01|altpll_component|auto_generated|pll1_CLK_bus\(3);
\u01|altpll_component|auto_generated|wire_pll1_clk\(4) <= \u01|altpll_component|auto_generated|pll1_CLK_bus\(4);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\u01|altpll_component|auto_generated|locked~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u01|altpll_component|auto_generated|locked~combout\);

\u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u01|altpll_component|auto_generated|wire_pll1_clk\(0));
\u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\ <= NOT \u01|altpll_component|auto_generated|locked~clkctrl_outclk\;
\ALT_INV_i_reset~input_o\ <= NOT \i_reset~input_o\;
\u01|altpll_component|auto_generated|ALT_INV_locked~combout\ <= NOT \u01|altpll_component|auto_generated|locked~combout\;
\u02|ALT_INV_o_sel\(0) <= NOT \u02|o_sel\(0);

-- Location: LCCOMB_X44_Y41_N8
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N2
\o_led_cafe~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u02|o_led_cafe~q\,
	devoe => ww_devoe,
	o => ww_o_led_cafe);

-- Location: IOOBUF_X46_Y54_N23
\o_led_cafe_leite~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u02|o_led_cafe_leite~q\,
	devoe => ww_devoe,
	o => ww_o_led_cafe_leite);

-- Location: IOOBUF_X51_Y54_N16
\o_led_moca~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u02|o_led_moca~q\,
	devoe => ww_devoe,
	o => ww_o_led_moca);

-- Location: IOOBUF_X56_Y54_N30
\o_led_tamanho~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u02|o_led_tamanho~q\,
	devoe => ww_devoe,
	o => ww_o_led_tamanho);

-- Location: IOOBUF_X46_Y54_N9
\o_led_acucar~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u02|o_led_acucar~q\,
	devoe => ww_devoe,
	o => ww_o_led_acucar);

-- Location: IOOBUF_X78_Y45_N9
\o_display0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_o_display0(0));

-- Location: IOOBUF_X78_Y42_N2
\o_display0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u02|ALT_INV_o_sel\(0),
	devoe => ww_devoe,
	o => ww_o_display0(1));

-- Location: IOOBUF_X78_Y37_N16
\o_display0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_o_display0(2));

-- Location: IOOBUF_X78_Y34_N24
\o_display0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u02|ALT_INV_o_sel\(0),
	devoe => ww_devoe,
	o => ww_o_display0(3));

-- Location: IOOBUF_X78_Y34_N9
\o_display0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_o_display0(4));

-- Location: IOOBUF_X78_Y34_N16
\o_display0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u02|ALT_INV_o_sel\(0),
	devoe => ww_devoe,
	o => ww_o_display0(5));

-- Location: IOOBUF_X78_Y34_N2
\o_display0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_o_display0(6));

-- Location: IOOBUF_X78_Y40_N16
\o_display1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u02|ALT_INV_o_sel\(0),
	devoe => ww_devoe,
	o => ww_o_display1(0));

-- Location: IOOBUF_X78_Y40_N2
\o_display1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u02|ALT_INV_o_sel\(0),
	devoe => ww_devoe,
	o => ww_o_display1(1));

-- Location: IOOBUF_X78_Y40_N23
\o_display1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u02|ALT_INV_o_sel\(0),
	devoe => ww_devoe,
	o => ww_o_display1(2));

-- Location: IOOBUF_X78_Y42_N16
\o_display1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_o_display1(3));

-- Location: IOOBUF_X78_Y45_N23
\o_display1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u02|ALT_INV_o_sel\(0),
	devoe => ww_devoe,
	o => ww_o_display1(4));

-- Location: IOOBUF_X78_Y40_N9
\o_display1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u02|ALT_INV_o_sel\(0),
	devoe => ww_devoe,
	o => ww_o_display1(5));

-- Location: IOOBUF_X78_Y35_N16
\o_display1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u02|ALT_INV_o_sel\(0),
	devoe => ww_devoe,
	o => ww_o_display1(6));

-- Location: IOOBUF_X78_Y35_N23
\o_display2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_o_display2(0));

-- Location: IOOBUF_X78_Y33_N9
\o_display2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u02|ALT_INV_o_sel\(0),
	devoe => ww_devoe,
	o => ww_o_display2(1));

-- Location: IOOBUF_X78_Y33_N2
\o_display2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u02|ALT_INV_o_sel\(0),
	devoe => ww_devoe,
	o => ww_o_display2(2));

-- Location: IOOBUF_X69_Y54_N9
\o_display2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_o_display2(3));

-- Location: IOOBUF_X78_Y41_N9
\o_display2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_o_display2(4));

-- Location: IOOBUF_X78_Y41_N2
\o_display2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_o_display2(5));

-- Location: IOOBUF_X78_Y43_N16
\o_display2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_o_display2(6));

-- Location: IOOBUF_X78_Y44_N9
\o_display3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u02|ALT_INV_o_sel\(0),
	devoe => ww_devoe,
	o => ww_o_display3(0));

-- Location: IOOBUF_X66_Y54_N2
\o_display3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u02|ALT_INV_o_sel\(0),
	devoe => ww_devoe,
	o => ww_o_display3(1));

-- Location: IOOBUF_X69_Y54_N16
\o_display3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u02|ALT_INV_o_sel\(0),
	devoe => ww_devoe,
	o => ww_o_display3(2));

-- Location: IOOBUF_X78_Y44_N2
\o_display3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u02|ALT_INV_o_sel\(0),
	devoe => ww_devoe,
	o => ww_o_display3(3));

-- Location: IOOBUF_X78_Y43_N2
\o_display3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_o_display3(4));

-- Location: IOOBUF_X78_Y35_N2
\o_display3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_o_display3(5));

-- Location: IOOBUF_X78_Y43_N9
\o_display3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_o_display3(6));

-- Location: IOIBUF_X46_Y54_N29
\i_reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_reset,
	o => \i_reset~input_o\);

-- Location: IOIBUF_X78_Y29_N22
\i_clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk,
	o => \i_clk~input_o\);

-- Location: PLL_4
\u01|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 4,
	c0_initial => 1,
	c0_low => 4,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 3,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \ALT_INV_i_reset~input_o\,
	fbin => \u01|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \u01|altpll_component|auto_generated|pll1_INCLK_bus\,
	locked => \u01|altpll_component|auto_generated|wire_pll1_locked\,
	fbout => \u01|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \u01|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N22
\i_cafe_leite~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_cafe_leite,
	o => \i_cafe_leite~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\i_moca~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_moca,
	o => \i_moca~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\i_cafe~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_cafe,
	o => \i_cafe~input_o\);

-- Location: LCCOMB_X51_Y53_N0
\u02|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u02|process_0~0_combout\ = (!\i_cafe_leite~input_o\ & (!\i_moca~input_o\ & \i_cafe~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cafe_leite~input_o\,
	datac => \i_moca~input_o\,
	datad => \i_cafe~input_o\,
	combout => \u02|process_0~0_combout\);

-- Location: IOIBUF_X49_Y54_N29
\i_start~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start,
	o => \i_start~input_o\);

-- Location: LCCOMB_X55_Y47_N16
\u02|Selector170~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u02|Selector170~3_combout\ = (\u02|w_estado.st_idle~q\ & (\u02|w_estado.st_preparando~q\)) # (!\u02|w_estado.st_idle~q\ & ((!\i_start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u02|w_estado.st_idle~q\,
	datac => \u02|w_estado.st_preparando~q\,
	datad => \i_start~input_o\,
	combout => \u02|Selector170~3_combout\);

-- Location: LCCOMB_X51_Y53_N10
\u02|Selector171~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u02|Selector171~0_combout\ = (\u02|w_estado.st_preparando~q\ & ((\i_cafe_leite~input_o\) # ((\i_cafe~input_o\) # (\i_moca~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cafe_leite~input_o\,
	datab => \i_cafe~input_o\,
	datac => \i_moca~input_o\,
	datad => \u02|w_estado.st_preparando~q\,
	combout => \u02|Selector171~0_combout\);

-- Location: LCCOMB_X55_Y47_N24
\u02|Selector171~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u02|Selector171~1_combout\ = (\u02|Selector171~0_combout\) # ((\u02|w_estado.st_done~q\ & !\u08|o_valve_end~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u02|Selector171~0_combout\,
	datac => \u02|w_estado.st_done~q\,
	datad => \u08|o_valve_end~q\,
	combout => \u02|Selector171~1_combout\);

-- Location: LCCOMB_X56_Y47_N24
\u01|altpll_component|auto_generated|pll_lock_sync~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u01|altpll_component|auto_generated|pll_lock_sync~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u01|altpll_component|auto_generated|pll_lock_sync~feeder_combout\);

-- Location: FF_X56_Y47_N25
\u01|altpll_component|auto_generated|pll_lock_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_locked\,
	d => \u01|altpll_component|auto_generated|pll_lock_sync~feeder_combout\,
	clrn => \i_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u01|altpll_component|auto_generated|pll_lock_sync~q\);

-- Location: LCCOMB_X55_Y47_N18
\u01|altpll_component|auto_generated|locked\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u01|altpll_component|auto_generated|locked~combout\ = (!\u01|altpll_component|auto_generated|wire_pll1_locked\) # (!\u01|altpll_component|auto_generated|pll_lock_sync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u01|altpll_component|auto_generated|pll_lock_sync~q\,
	datac => \u01|altpll_component|auto_generated|wire_pll1_locked\,
	combout => \u01|altpll_component|auto_generated|locked~combout\);

-- Location: CLKCTRL_G10
\u01|altpll_component|auto_generated|locked~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u01|altpll_component|auto_generated|locked~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u01|altpll_component|auto_generated|locked~clkctrl_outclk\);

-- Location: FF_X55_Y47_N25
\u02|w_estado.st_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u02|Selector171~1_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u02|w_estado.st_done~q\);

-- Location: LCCOMB_X55_Y47_N22
\u02|Selector170~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u02|Selector170~4_combout\ = (\u02|Selector170~3_combout\ & (!\u02|Selector171~0_combout\ & ((!\u02|w_estado.st_done~q\) # (!\u08|o_valve_end~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u02|Selector170~3_combout\,
	datab => \u08|o_valve_end~q\,
	datac => \u02|Selector171~0_combout\,
	datad => \u02|w_estado.st_done~q\,
	combout => \u02|Selector170~4_combout\);

-- Location: FF_X55_Y47_N23
\u02|w_estado.st_preparando\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u02|Selector170~4_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u02|w_estado.st_preparando~q\);

-- Location: LCCOMB_X55_Y47_N10
\u02|Selector166~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u02|Selector166~0_combout\ = (\u02|w_estado.st_preparando~q\ & ((\u02|o_timer_done_en~q\) # ((!\u08|o_valve_end~q\ & \u02|w_estado.st_done~q\)))) # (!\u02|w_estado.st_preparando~q\ & (!\u08|o_valve_end~q\ & ((\u02|w_estado.st_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u02|w_estado.st_preparando~q\,
	datab => \u08|o_valve_end~q\,
	datac => \u02|o_timer_done_en~q\,
	datad => \u02|w_estado.st_done~q\,
	combout => \u02|Selector166~0_combout\);

-- Location: FF_X55_Y47_N11
\u02|o_timer_done_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u02|Selector166~0_combout\,
	ena => \u01|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u02|o_timer_done_en~q\);

-- Location: LCCOMB_X64_Y44_N10
\u08|w_ticks[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_ticks[0]~1_combout\ = (\u02|o_timer_done_en~q\ & (!\u08|o_valve_end~11_combout\ & !\u08|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u02|o_timer_done_en~q\,
	datab => \u08|o_valve_end~11_combout\,
	datad => \u08|Equal0~10_combout\,
	combout => \u08|w_ticks[0]~1_combout\);

-- Location: LCCOMB_X65_Y44_N0
\u08|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~0_combout\ = \u08|w_ticks\(0) $ (VCC)
-- \u08|Add1~1\ = CARRY(\u08|w_ticks\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks\(0),
	datad => VCC,
	combout => \u08|Add1~0_combout\,
	cout => \u08|Add1~1\);

-- Location: LCCOMB_X64_Y44_N16
\u08|w_ticks[31]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_ticks[31]~0_combout\ = (\u02|o_timer_done_en~q\ & !\u08|o_valve_end~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u02|o_timer_done_en~q\,
	datad => \u08|o_valve_end~11_combout\,
	combout => \u08|w_ticks[31]~0_combout\);

-- Location: LCCOMB_X64_Y44_N2
\u08|w_ticks[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_ticks[0]~14_combout\ = (\u08|w_ticks[0]~1_combout\ & ((\u08|Add1~0_combout\) # ((\u08|w_ticks\(0) & !\u08|w_ticks[31]~0_combout\)))) # (!\u08|w_ticks[0]~1_combout\ & (((\u08|w_ticks\(0) & !\u08|w_ticks[31]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks[0]~1_combout\,
	datab => \u08|Add1~0_combout\,
	datac => \u08|w_ticks\(0),
	datad => \u08|w_ticks[31]~0_combout\,
	combout => \u08|w_ticks[0]~14_combout\);

-- Location: FF_X64_Y44_N3
\u08|w_ticks[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_ticks[0]~14_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(0));

-- Location: LCCOMB_X65_Y44_N2
\u08|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~2_combout\ = (\u08|w_ticks\(1) & (!\u08|Add1~1\)) # (!\u08|w_ticks\(1) & ((\u08|Add1~1\) # (GND)))
-- \u08|Add1~3\ = CARRY((!\u08|Add1~1\) # (!\u08|w_ticks\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_ticks\(1),
	datad => VCC,
	cin => \u08|Add1~1\,
	combout => \u08|Add1~2_combout\,
	cout => \u08|Add1~3\);

-- Location: FF_X65_Y44_N3
\u08|w_ticks[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|Add1~2_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_ticks[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(1));

-- Location: LCCOMB_X65_Y44_N4
\u08|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~4_combout\ = (\u08|w_ticks\(2) & (\u08|Add1~3\ $ (GND))) # (!\u08|w_ticks\(2) & (!\u08|Add1~3\ & VCC))
-- \u08|Add1~5\ = CARRY((\u08|w_ticks\(2) & !\u08|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_ticks\(2),
	datad => VCC,
	cin => \u08|Add1~3\,
	combout => \u08|Add1~4_combout\,
	cout => \u08|Add1~5\);

-- Location: FF_X65_Y44_N5
\u08|w_ticks[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|Add1~4_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_ticks[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(2));

-- Location: LCCOMB_X65_Y44_N6
\u08|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~6_combout\ = (\u08|w_ticks\(3) & (!\u08|Add1~5\)) # (!\u08|w_ticks\(3) & ((\u08|Add1~5\) # (GND)))
-- \u08|Add1~7\ = CARRY((!\u08|Add1~5\) # (!\u08|w_ticks\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks\(3),
	datad => VCC,
	cin => \u08|Add1~5\,
	combout => \u08|Add1~6_combout\,
	cout => \u08|Add1~7\);

-- Location: FF_X65_Y44_N7
\u08|w_ticks[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|Add1~6_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_ticks[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(3));

-- Location: LCCOMB_X65_Y44_N8
\u08|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~8_combout\ = (\u08|w_ticks\(4) & (\u08|Add1~7\ $ (GND))) # (!\u08|w_ticks\(4) & (!\u08|Add1~7\ & VCC))
-- \u08|Add1~9\ = CARRY((\u08|w_ticks\(4) & !\u08|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_ticks\(4),
	datad => VCC,
	cin => \u08|Add1~7\,
	combout => \u08|Add1~8_combout\,
	cout => \u08|Add1~9\);

-- Location: FF_X65_Y44_N9
\u08|w_ticks[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|Add1~8_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_ticks[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(4));

-- Location: LCCOMB_X65_Y44_N10
\u08|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~10_combout\ = (\u08|w_ticks\(5) & (!\u08|Add1~9\)) # (!\u08|w_ticks\(5) & ((\u08|Add1~9\) # (GND)))
-- \u08|Add1~11\ = CARRY((!\u08|Add1~9\) # (!\u08|w_ticks\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks\(5),
	datad => VCC,
	cin => \u08|Add1~9\,
	combout => \u08|Add1~10_combout\,
	cout => \u08|Add1~11\);

-- Location: FF_X65_Y44_N11
\u08|w_ticks[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|Add1~10_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_ticks[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(5));

-- Location: LCCOMB_X65_Y44_N12
\u08|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~12_combout\ = (\u08|w_ticks\(6) & (\u08|Add1~11\ $ (GND))) # (!\u08|w_ticks\(6) & (!\u08|Add1~11\ & VCC))
-- \u08|Add1~13\ = CARRY((\u08|w_ticks\(6) & !\u08|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks\(6),
	datad => VCC,
	cin => \u08|Add1~11\,
	combout => \u08|Add1~12_combout\,
	cout => \u08|Add1~13\);

-- Location: FF_X65_Y44_N13
\u08|w_ticks[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|Add1~12_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_ticks[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(6));

-- Location: LCCOMB_X65_Y44_N14
\u08|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~14_combout\ = (\u08|w_ticks\(7) & (!\u08|Add1~13\)) # (!\u08|w_ticks\(7) & ((\u08|Add1~13\) # (GND)))
-- \u08|Add1~15\ = CARRY((!\u08|Add1~13\) # (!\u08|w_ticks\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_ticks\(7),
	datad => VCC,
	cin => \u08|Add1~13\,
	combout => \u08|Add1~14_combout\,
	cout => \u08|Add1~15\);

-- Location: LCCOMB_X64_Y44_N20
\u08|w_ticks[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_ticks[7]~13_combout\ = (\u08|w_ticks[0]~1_combout\ & ((\u08|Add1~14_combout\) # ((\u08|w_ticks\(7) & !\u08|w_ticks[31]~0_combout\)))) # (!\u08|w_ticks[0]~1_combout\ & (((\u08|w_ticks\(7) & !\u08|w_ticks[31]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks[0]~1_combout\,
	datab => \u08|Add1~14_combout\,
	datac => \u08|w_ticks\(7),
	datad => \u08|w_ticks[31]~0_combout\,
	combout => \u08|w_ticks[7]~13_combout\);

-- Location: FF_X64_Y44_N21
\u08|w_ticks[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_ticks[7]~13_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(7));

-- Location: LCCOMB_X65_Y44_N16
\u08|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~16_combout\ = (\u08|w_ticks\(8) & (\u08|Add1~15\ $ (GND))) # (!\u08|w_ticks\(8) & (!\u08|Add1~15\ & VCC))
-- \u08|Add1~17\ = CARRY((\u08|w_ticks\(8) & !\u08|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_ticks\(8),
	datad => VCC,
	cin => \u08|Add1~15\,
	combout => \u08|Add1~16_combout\,
	cout => \u08|Add1~17\);

-- Location: FF_X65_Y44_N17
\u08|w_ticks[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|Add1~16_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_ticks[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(8));

-- Location: LCCOMB_X65_Y44_N18
\u08|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~18_combout\ = (\u08|w_ticks\(9) & (!\u08|Add1~17\)) # (!\u08|w_ticks\(9) & ((\u08|Add1~17\) # (GND)))
-- \u08|Add1~19\ = CARRY((!\u08|Add1~17\) # (!\u08|w_ticks\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_ticks\(9),
	datad => VCC,
	cin => \u08|Add1~17\,
	combout => \u08|Add1~18_combout\,
	cout => \u08|Add1~19\);

-- Location: FF_X65_Y44_N19
\u08|w_ticks[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|Add1~18_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_ticks[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(9));

-- Location: LCCOMB_X65_Y44_N20
\u08|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~20_combout\ = (\u08|w_ticks\(10) & (\u08|Add1~19\ $ (GND))) # (!\u08|w_ticks\(10) & (!\u08|Add1~19\ & VCC))
-- \u08|Add1~21\ = CARRY((\u08|w_ticks\(10) & !\u08|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_ticks\(10),
	datad => VCC,
	cin => \u08|Add1~19\,
	combout => \u08|Add1~20_combout\,
	cout => \u08|Add1~21\);

-- Location: FF_X65_Y44_N21
\u08|w_ticks[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|Add1~20_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_ticks[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(10));

-- Location: LCCOMB_X65_Y44_N22
\u08|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~22_combout\ = (\u08|w_ticks\(11) & (!\u08|Add1~21\)) # (!\u08|w_ticks\(11) & ((\u08|Add1~21\) # (GND)))
-- \u08|Add1~23\ = CARRY((!\u08|Add1~21\) # (!\u08|w_ticks\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks\(11),
	datad => VCC,
	cin => \u08|Add1~21\,
	combout => \u08|Add1~22_combout\,
	cout => \u08|Add1~23\);

-- Location: FF_X65_Y44_N23
\u08|w_ticks[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|Add1~22_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_ticks[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(11));

-- Location: LCCOMB_X64_Y44_N26
\u08|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Equal0~6_combout\ = (!\u08|w_ticks\(11) & (!\u08|w_ticks\(9) & (!\u08|w_ticks\(10) & !\u08|w_ticks\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks\(11),
	datab => \u08|w_ticks\(9),
	datac => \u08|w_ticks\(10),
	datad => \u08|w_ticks\(8),
	combout => \u08|Equal0~6_combout\);

-- Location: LCCOMB_X64_Y44_N22
\u08|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Equal0~7_combout\ = (!\u08|w_ticks\(6) & (!\u08|w_ticks\(5) & (!\u08|w_ticks\(4) & \u08|w_ticks\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks\(6),
	datab => \u08|w_ticks\(5),
	datac => \u08|w_ticks\(4),
	datad => \u08|w_ticks\(7),
	combout => \u08|Equal0~7_combout\);

-- Location: LCCOMB_X64_Y44_N8
\u08|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Equal0~8_combout\ = (!\u08|w_ticks\(3) & !\u08|w_ticks\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks\(3),
	datad => \u08|w_ticks\(2),
	combout => \u08|Equal0~8_combout\);

-- Location: LCCOMB_X64_Y44_N28
\u08|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Equal0~9_combout\ = (\u08|Equal0~7_combout\ & (!\u08|w_ticks\(0) & (\u08|Equal0~8_combout\ & !\u08|w_ticks\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|Equal0~7_combout\,
	datab => \u08|w_ticks\(0),
	datac => \u08|Equal0~8_combout\,
	datad => \u08|w_ticks\(1),
	combout => \u08|Equal0~9_combout\);

-- Location: LCCOMB_X65_Y44_N24
\u08|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~24_combout\ = (\u08|w_ticks\(12) & (\u08|Add1~23\ $ (GND))) # (!\u08|w_ticks\(12) & (!\u08|Add1~23\ & VCC))
-- \u08|Add1~25\ = CARRY((\u08|w_ticks\(12) & !\u08|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_ticks\(12),
	datad => VCC,
	cin => \u08|Add1~23\,
	combout => \u08|Add1~24_combout\,
	cout => \u08|Add1~25\);

-- Location: LCCOMB_X64_Y44_N30
\u08|w_ticks[12]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_ticks[12]~12_combout\ = (\u08|w_ticks[0]~1_combout\ & ((\u08|Add1~24_combout\) # ((!\u08|w_ticks[31]~0_combout\ & \u08|w_ticks\(12))))) # (!\u08|w_ticks[0]~1_combout\ & (!\u08|w_ticks[31]~0_combout\ & (\u08|w_ticks\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks[0]~1_combout\,
	datab => \u08|w_ticks[31]~0_combout\,
	datac => \u08|w_ticks\(12),
	datad => \u08|Add1~24_combout\,
	combout => \u08|w_ticks[12]~12_combout\);

-- Location: FF_X64_Y44_N31
\u08|w_ticks[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_ticks[12]~12_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(12));

-- Location: LCCOMB_X65_Y44_N26
\u08|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~26_combout\ = (\u08|w_ticks\(13) & (!\u08|Add1~25\)) # (!\u08|w_ticks\(13) & ((\u08|Add1~25\) # (GND)))
-- \u08|Add1~27\ = CARRY((!\u08|Add1~25\) # (!\u08|w_ticks\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_ticks\(13),
	datad => VCC,
	cin => \u08|Add1~25\,
	combout => \u08|Add1~26_combout\,
	cout => \u08|Add1~27\);

-- Location: LCCOMB_X64_Y44_N4
\u08|w_ticks[13]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_ticks[13]~11_combout\ = (\u08|w_ticks[0]~1_combout\ & ((\u08|Add1~26_combout\) # ((!\u08|w_ticks[31]~0_combout\ & \u08|w_ticks\(13))))) # (!\u08|w_ticks[0]~1_combout\ & (!\u08|w_ticks[31]~0_combout\ & (\u08|w_ticks\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks[0]~1_combout\,
	datab => \u08|w_ticks[31]~0_combout\,
	datac => \u08|w_ticks\(13),
	datad => \u08|Add1~26_combout\,
	combout => \u08|w_ticks[13]~11_combout\);

-- Location: FF_X64_Y44_N5
\u08|w_ticks[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_ticks[13]~11_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(13));

-- Location: LCCOMB_X65_Y44_N28
\u08|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~28_combout\ = (\u08|w_ticks\(14) & (\u08|Add1~27\ $ (GND))) # (!\u08|w_ticks\(14) & (!\u08|Add1~27\ & VCC))
-- \u08|Add1~29\ = CARRY((\u08|w_ticks\(14) & !\u08|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_ticks\(14),
	datad => VCC,
	cin => \u08|Add1~27\,
	combout => \u08|Add1~28_combout\,
	cout => \u08|Add1~29\);

-- Location: LCCOMB_X64_Y44_N18
\u08|w_ticks[14]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_ticks[14]~10_combout\ = (\u08|w_ticks[0]~1_combout\ & ((\u08|Add1~28_combout\) # ((!\u08|w_ticks[31]~0_combout\ & \u08|w_ticks\(14))))) # (!\u08|w_ticks[0]~1_combout\ & (!\u08|w_ticks[31]~0_combout\ & (\u08|w_ticks\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks[0]~1_combout\,
	datab => \u08|w_ticks[31]~0_combout\,
	datac => \u08|w_ticks\(14),
	datad => \u08|Add1~28_combout\,
	combout => \u08|w_ticks[14]~10_combout\);

-- Location: FF_X64_Y44_N19
\u08|w_ticks[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_ticks[14]~10_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(14));

-- Location: LCCOMB_X65_Y44_N30
\u08|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~30_combout\ = (\u08|w_ticks\(15) & (!\u08|Add1~29\)) # (!\u08|w_ticks\(15) & ((\u08|Add1~29\) # (GND)))
-- \u08|Add1~31\ = CARRY((!\u08|Add1~29\) # (!\u08|w_ticks\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks\(15),
	datad => VCC,
	cin => \u08|Add1~29\,
	combout => \u08|Add1~30_combout\,
	cout => \u08|Add1~31\);

-- Location: LCCOMB_X64_Y44_N0
\u08|w_ticks[15]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_ticks[15]~9_combout\ = (\u08|Add1~30_combout\ & ((\u08|w_ticks[0]~1_combout\) # ((!\u08|w_ticks[31]~0_combout\ & \u08|w_ticks\(15))))) # (!\u08|Add1~30_combout\ & (!\u08|w_ticks[31]~0_combout\ & (\u08|w_ticks\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|Add1~30_combout\,
	datab => \u08|w_ticks[31]~0_combout\,
	datac => \u08|w_ticks\(15),
	datad => \u08|w_ticks[0]~1_combout\,
	combout => \u08|w_ticks[15]~9_combout\);

-- Location: FF_X64_Y44_N1
\u08|w_ticks[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_ticks[15]~9_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(15));

-- Location: LCCOMB_X65_Y43_N0
\u08|Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~32_combout\ = (\u08|w_ticks\(16) & (\u08|Add1~31\ $ (GND))) # (!\u08|w_ticks\(16) & (!\u08|Add1~31\ & VCC))
-- \u08|Add1~33\ = CARRY((\u08|w_ticks\(16) & !\u08|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_ticks\(16),
	datad => VCC,
	cin => \u08|Add1~31\,
	combout => \u08|Add1~32_combout\,
	cout => \u08|Add1~33\);

-- Location: FF_X65_Y43_N1
\u08|w_ticks[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|Add1~32_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_ticks[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(16));

-- Location: LCCOMB_X65_Y43_N2
\u08|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~34_combout\ = (\u08|w_ticks\(17) & (!\u08|Add1~33\)) # (!\u08|w_ticks\(17) & ((\u08|Add1~33\) # (GND)))
-- \u08|Add1~35\ = CARRY((!\u08|Add1~33\) # (!\u08|w_ticks\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks\(17),
	datad => VCC,
	cin => \u08|Add1~33\,
	combout => \u08|Add1~34_combout\,
	cout => \u08|Add1~35\);

-- Location: LCCOMB_X64_Y43_N2
\u08|w_ticks[17]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_ticks[17]~8_combout\ = (\u08|Add1~34_combout\ & ((\u08|w_ticks[0]~1_combout\) # ((\u08|w_ticks\(17) & !\u08|w_ticks[31]~0_combout\)))) # (!\u08|Add1~34_combout\ & (((\u08|w_ticks\(17) & !\u08|w_ticks[31]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|Add1~34_combout\,
	datab => \u08|w_ticks[0]~1_combout\,
	datac => \u08|w_ticks\(17),
	datad => \u08|w_ticks[31]~0_combout\,
	combout => \u08|w_ticks[17]~8_combout\);

-- Location: FF_X64_Y43_N3
\u08|w_ticks[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_ticks[17]~8_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(17));

-- Location: LCCOMB_X65_Y43_N4
\u08|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~36_combout\ = (\u08|w_ticks\(18) & (\u08|Add1~35\ $ (GND))) # (!\u08|w_ticks\(18) & (!\u08|Add1~35\ & VCC))
-- \u08|Add1~37\ = CARRY((\u08|w_ticks\(18) & !\u08|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_ticks\(18),
	datad => VCC,
	cin => \u08|Add1~35\,
	combout => \u08|Add1~36_combout\,
	cout => \u08|Add1~37\);

-- Location: FF_X65_Y43_N5
\u08|w_ticks[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|Add1~36_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_ticks[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(18));

-- Location: LCCOMB_X65_Y43_N6
\u08|Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~38_combout\ = (\u08|w_ticks\(19) & (!\u08|Add1~37\)) # (!\u08|w_ticks\(19) & ((\u08|Add1~37\) # (GND)))
-- \u08|Add1~39\ = CARRY((!\u08|Add1~37\) # (!\u08|w_ticks\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_ticks\(19),
	datad => VCC,
	cin => \u08|Add1~37\,
	combout => \u08|Add1~38_combout\,
	cout => \u08|Add1~39\);

-- Location: LCCOMB_X64_Y43_N0
\u08|w_ticks[19]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_ticks[19]~7_combout\ = (\u08|Add1~38_combout\ & ((\u08|w_ticks[0]~1_combout\) # ((\u08|w_ticks\(19) & !\u08|w_ticks[31]~0_combout\)))) # (!\u08|Add1~38_combout\ & (((\u08|w_ticks\(19) & !\u08|w_ticks[31]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|Add1~38_combout\,
	datab => \u08|w_ticks[0]~1_combout\,
	datac => \u08|w_ticks\(19),
	datad => \u08|w_ticks[31]~0_combout\,
	combout => \u08|w_ticks[19]~7_combout\);

-- Location: FF_X64_Y43_N1
\u08|w_ticks[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_ticks[19]~7_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(19));

-- Location: LCCOMB_X65_Y43_N8
\u08|Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~40_combout\ = (\u08|w_ticks\(20) & (\u08|Add1~39\ $ (GND))) # (!\u08|w_ticks\(20) & (!\u08|Add1~39\ & VCC))
-- \u08|Add1~41\ = CARRY((\u08|w_ticks\(20) & !\u08|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_ticks\(20),
	datad => VCC,
	cin => \u08|Add1~39\,
	combout => \u08|Add1~40_combout\,
	cout => \u08|Add1~41\);

-- Location: LCCOMB_X64_Y43_N28
\u08|w_ticks[20]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_ticks[20]~6_combout\ = (\u08|w_ticks[31]~0_combout\ & (\u08|Add1~40_combout\ & ((\u08|w_ticks[0]~1_combout\)))) # (!\u08|w_ticks[31]~0_combout\ & ((\u08|w_ticks\(20)) # ((\u08|Add1~40_combout\ & \u08|w_ticks[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks[31]~0_combout\,
	datab => \u08|Add1~40_combout\,
	datac => \u08|w_ticks\(20),
	datad => \u08|w_ticks[0]~1_combout\,
	combout => \u08|w_ticks[20]~6_combout\);

-- Location: FF_X64_Y43_N29
\u08|w_ticks[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_ticks[20]~6_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(20));

-- Location: LCCOMB_X65_Y43_N10
\u08|Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~42_combout\ = (\u08|w_ticks\(21) & (!\u08|Add1~41\)) # (!\u08|w_ticks\(21) & ((\u08|Add1~41\) # (GND)))
-- \u08|Add1~43\ = CARRY((!\u08|Add1~41\) # (!\u08|w_ticks\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks\(21),
	datad => VCC,
	cin => \u08|Add1~41\,
	combout => \u08|Add1~42_combout\,
	cout => \u08|Add1~43\);

-- Location: LCCOMB_X64_Y43_N26
\u08|w_ticks[21]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_ticks[21]~5_combout\ = (\u08|w_ticks[31]~0_combout\ & (\u08|Add1~42_combout\ & ((\u08|w_ticks[0]~1_combout\)))) # (!\u08|w_ticks[31]~0_combout\ & ((\u08|w_ticks\(21)) # ((\u08|Add1~42_combout\ & \u08|w_ticks[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks[31]~0_combout\,
	datab => \u08|Add1~42_combout\,
	datac => \u08|w_ticks\(21),
	datad => \u08|w_ticks[0]~1_combout\,
	combout => \u08|w_ticks[21]~5_combout\);

-- Location: FF_X64_Y43_N27
\u08|w_ticks[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_ticks[21]~5_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(21));

-- Location: LCCOMB_X65_Y43_N12
\u08|Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~44_combout\ = (\u08|w_ticks\(22) & (\u08|Add1~43\ $ (GND))) # (!\u08|w_ticks\(22) & (!\u08|Add1~43\ & VCC))
-- \u08|Add1~45\ = CARRY((\u08|w_ticks\(22) & !\u08|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks\(22),
	datad => VCC,
	cin => \u08|Add1~43\,
	combout => \u08|Add1~44_combout\,
	cout => \u08|Add1~45\);

-- Location: LCCOMB_X64_Y43_N16
\u08|w_ticks[22]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_ticks[22]~4_combout\ = (\u08|w_ticks[31]~0_combout\ & (\u08|Add1~44_combout\ & ((\u08|w_ticks[0]~1_combout\)))) # (!\u08|w_ticks[31]~0_combout\ & ((\u08|w_ticks\(22)) # ((\u08|Add1~44_combout\ & \u08|w_ticks[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks[31]~0_combout\,
	datab => \u08|Add1~44_combout\,
	datac => \u08|w_ticks\(22),
	datad => \u08|w_ticks[0]~1_combout\,
	combout => \u08|w_ticks[22]~4_combout\);

-- Location: FF_X64_Y43_N17
\u08|w_ticks[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_ticks[22]~4_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(22));

-- Location: LCCOMB_X65_Y43_N14
\u08|Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~46_combout\ = (\u08|w_ticks\(23) & (!\u08|Add1~45\)) # (!\u08|w_ticks\(23) & ((\u08|Add1~45\) # (GND)))
-- \u08|Add1~47\ = CARRY((!\u08|Add1~45\) # (!\u08|w_ticks\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_ticks\(23),
	datad => VCC,
	cin => \u08|Add1~45\,
	combout => \u08|Add1~46_combout\,
	cout => \u08|Add1~47\);

-- Location: LCCOMB_X64_Y43_N6
\u08|w_ticks[23]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_ticks[23]~3_combout\ = (\u08|w_ticks[31]~0_combout\ & (\u08|Add1~46_combout\ & ((\u08|w_ticks[0]~1_combout\)))) # (!\u08|w_ticks[31]~0_combout\ & ((\u08|w_ticks\(23)) # ((\u08|Add1~46_combout\ & \u08|w_ticks[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks[31]~0_combout\,
	datab => \u08|Add1~46_combout\,
	datac => \u08|w_ticks\(23),
	datad => \u08|w_ticks[0]~1_combout\,
	combout => \u08|w_ticks[23]~3_combout\);

-- Location: FF_X64_Y43_N7
\u08|w_ticks[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_ticks[23]~3_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(23));

-- Location: LCCOMB_X64_Y43_N30
\u08|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Equal0~2_combout\ = (\u08|w_ticks\(23) & (\u08|w_ticks\(22) & (\u08|w_ticks\(21) & \u08|w_ticks\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks\(23),
	datab => \u08|w_ticks\(22),
	datac => \u08|w_ticks\(21),
	datad => \u08|w_ticks\(20),
	combout => \u08|Equal0~2_combout\);

-- Location: LCCOMB_X65_Y43_N16
\u08|Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~48_combout\ = (\u08|w_ticks\(24) & (\u08|Add1~47\ $ (GND))) # (!\u08|w_ticks\(24) & (!\u08|Add1~47\ & VCC))
-- \u08|Add1~49\ = CARRY((\u08|w_ticks\(24) & !\u08|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_ticks\(24),
	datad => VCC,
	cin => \u08|Add1~47\,
	combout => \u08|Add1~48_combout\,
	cout => \u08|Add1~49\);

-- Location: FF_X65_Y43_N17
\u08|w_ticks[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|Add1~48_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_ticks[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(24));

-- Location: LCCOMB_X65_Y43_N18
\u08|Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~50_combout\ = (\u08|w_ticks\(25) & (!\u08|Add1~49\)) # (!\u08|w_ticks\(25) & ((\u08|Add1~49\) # (GND)))
-- \u08|Add1~51\ = CARRY((!\u08|Add1~49\) # (!\u08|w_ticks\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks\(25),
	datad => VCC,
	cin => \u08|Add1~49\,
	combout => \u08|Add1~50_combout\,
	cout => \u08|Add1~51\);

-- Location: LCCOMB_X64_Y43_N10
\u08|w_ticks[25]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_ticks[25]~2_combout\ = (\u08|w_ticks[31]~0_combout\ & (\u08|w_ticks[0]~1_combout\ & ((\u08|Add1~50_combout\)))) # (!\u08|w_ticks[31]~0_combout\ & ((\u08|w_ticks\(25)) # ((\u08|w_ticks[0]~1_combout\ & \u08|Add1~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks[31]~0_combout\,
	datab => \u08|w_ticks[0]~1_combout\,
	datac => \u08|w_ticks\(25),
	datad => \u08|Add1~50_combout\,
	combout => \u08|w_ticks[25]~2_combout\);

-- Location: FF_X64_Y43_N11
\u08|w_ticks[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_ticks[25]~2_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(25));

-- Location: LCCOMB_X65_Y43_N20
\u08|Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~52_combout\ = (\u08|w_ticks\(26) & (\u08|Add1~51\ $ (GND))) # (!\u08|w_ticks\(26) & (!\u08|Add1~51\ & VCC))
-- \u08|Add1~53\ = CARRY((\u08|w_ticks\(26) & !\u08|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_ticks\(26),
	datad => VCC,
	cin => \u08|Add1~51\,
	combout => \u08|Add1~52_combout\,
	cout => \u08|Add1~53\);

-- Location: FF_X65_Y43_N21
\u08|w_ticks[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|Add1~52_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_ticks[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(26));

-- Location: LCCOMB_X65_Y43_N22
\u08|Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~54_combout\ = (\u08|w_ticks\(27) & (!\u08|Add1~53\)) # (!\u08|w_ticks\(27) & ((\u08|Add1~53\) # (GND)))
-- \u08|Add1~55\ = CARRY((!\u08|Add1~53\) # (!\u08|w_ticks\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks\(27),
	datad => VCC,
	cin => \u08|Add1~53\,
	combout => \u08|Add1~54_combout\,
	cout => \u08|Add1~55\);

-- Location: FF_X65_Y43_N23
\u08|w_ticks[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|Add1~54_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_ticks[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(27));

-- Location: LCCOMB_X64_Y43_N20
\u08|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Equal0~1_combout\ = (\u08|w_ticks\(25) & (!\u08|w_ticks\(27) & (!\u08|w_ticks\(26) & !\u08|w_ticks\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks\(25),
	datab => \u08|w_ticks\(27),
	datac => \u08|w_ticks\(26),
	datad => \u08|w_ticks\(24),
	combout => \u08|Equal0~1_combout\);

-- Location: LCCOMB_X64_Y43_N4
\u08|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Equal0~3_combout\ = (!\u08|w_ticks\(18) & (\u08|w_ticks\(19) & (!\u08|w_ticks\(16) & \u08|w_ticks\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks\(18),
	datab => \u08|w_ticks\(19),
	datac => \u08|w_ticks\(16),
	datad => \u08|w_ticks\(17),
	combout => \u08|Equal0~3_combout\);

-- Location: LCCOMB_X65_Y43_N24
\u08|Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~56_combout\ = (\u08|w_ticks\(28) & (\u08|Add1~55\ $ (GND))) # (!\u08|w_ticks\(28) & (!\u08|Add1~55\ & VCC))
-- \u08|Add1~57\ = CARRY((\u08|w_ticks\(28) & !\u08|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_ticks\(28),
	datad => VCC,
	cin => \u08|Add1~55\,
	combout => \u08|Add1~56_combout\,
	cout => \u08|Add1~57\);

-- Location: FF_X65_Y43_N25
\u08|w_ticks[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|Add1~56_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_ticks[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(28));

-- Location: LCCOMB_X65_Y43_N26
\u08|Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~58_combout\ = (\u08|w_ticks\(29) & (!\u08|Add1~57\)) # (!\u08|w_ticks\(29) & ((\u08|Add1~57\) # (GND)))
-- \u08|Add1~59\ = CARRY((!\u08|Add1~57\) # (!\u08|w_ticks\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks\(29),
	datad => VCC,
	cin => \u08|Add1~57\,
	combout => \u08|Add1~58_combout\,
	cout => \u08|Add1~59\);

-- Location: FF_X65_Y43_N27
\u08|w_ticks[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|Add1~58_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_ticks[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(29));

-- Location: LCCOMB_X65_Y43_N28
\u08|Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~60_combout\ = (\u08|w_ticks\(30) & (\u08|Add1~59\ $ (GND))) # (!\u08|w_ticks\(30) & (!\u08|Add1~59\ & VCC))
-- \u08|Add1~61\ = CARRY((\u08|w_ticks\(30) & !\u08|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_ticks\(30),
	datad => VCC,
	cin => \u08|Add1~59\,
	combout => \u08|Add1~60_combout\,
	cout => \u08|Add1~61\);

-- Location: FF_X65_Y43_N29
\u08|w_ticks[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|Add1~60_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_ticks[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(30));

-- Location: LCCOMB_X65_Y43_N30
\u08|Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Add1~62_combout\ = \u08|w_ticks\(31) $ (\u08|Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks\(31),
	cin => \u08|Add1~61\,
	combout => \u08|Add1~62_combout\);

-- Location: FF_X65_Y43_N31
\u08|w_ticks[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|Add1~62_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_ticks[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_ticks\(31));

-- Location: LCCOMB_X64_Y43_N24
\u08|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Equal0~0_combout\ = (!\u08|w_ticks\(29) & (!\u08|w_ticks\(30) & (!\u08|w_ticks\(31) & !\u08|w_ticks\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks\(29),
	datab => \u08|w_ticks\(30),
	datac => \u08|w_ticks\(31),
	datad => \u08|w_ticks\(28),
	combout => \u08|Equal0~0_combout\);

-- Location: LCCOMB_X64_Y43_N22
\u08|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Equal0~4_combout\ = (\u08|Equal0~2_combout\ & (\u08|Equal0~1_combout\ & (\u08|Equal0~3_combout\ & \u08|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|Equal0~2_combout\,
	datab => \u08|Equal0~1_combout\,
	datac => \u08|Equal0~3_combout\,
	datad => \u08|Equal0~0_combout\,
	combout => \u08|Equal0~4_combout\);

-- Location: LCCOMB_X64_Y44_N24
\u08|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Equal0~5_combout\ = (\u08|w_ticks\(12) & (\u08|w_ticks\(15) & (\u08|w_ticks\(13) & \u08|w_ticks\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_ticks\(12),
	datab => \u08|w_ticks\(15),
	datac => \u08|w_ticks\(13),
	datad => \u08|w_ticks\(14),
	combout => \u08|Equal0~5_combout\);

-- Location: LCCOMB_X64_Y44_N6
\u08|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|Equal0~10_combout\ = (\u08|Equal0~6_combout\ & (\u08|Equal0~9_combout\ & (\u08|Equal0~4_combout\ & \u08|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|Equal0~6_combout\,
	datab => \u08|Equal0~9_combout\,
	datac => \u08|Equal0~4_combout\,
	datad => \u08|Equal0~5_combout\,
	combout => \u08|Equal0~10_combout\);

-- Location: LCCOMB_X55_Y47_N20
\u08|w_count[0]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[0]~92_combout\ = \u08|w_count\(0) $ (((\u08|Equal0~10_combout\ & \u02|o_timer_done_en~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|Equal0~10_combout\,
	datac => \u08|w_count\(0),
	datad => \u02|o_timer_done_en~q\,
	combout => \u08|w_count[0]~92_combout\);

-- Location: FF_X55_Y47_N21
\u08|w_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[0]~92_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(0));

-- Location: LCCOMB_X58_Y47_N2
\u08|w_count[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[1]~31_combout\ = (\u08|w_count\(0) & (\u08|w_count\(1) $ (VCC))) # (!\u08|w_count\(0) & (\u08|w_count\(1) & VCC))
-- \u08|w_count[1]~32\ = CARRY((\u08|w_count\(0) & \u08|w_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_count\(0),
	datab => \u08|w_count\(1),
	datad => VCC,
	combout => \u08|w_count[1]~31_combout\,
	cout => \u08|w_count[1]~32\);

-- Location: LCCOMB_X55_Y47_N30
\u08|w_count[30]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[30]~87_combout\ = (\u02|o_timer_done_en~q\ & \u08|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u02|o_timer_done_en~q\,
	datac => \u08|Equal0~10_combout\,
	combout => \u08|w_count[30]~87_combout\);

-- Location: FF_X58_Y47_N3
\u08|w_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[1]~31_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(1));

-- Location: LCCOMB_X58_Y47_N4
\u08|w_count[2]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[2]~33_combout\ = (\u08|w_count\(2) & (!\u08|w_count[1]~32\)) # (!\u08|w_count\(2) & ((\u08|w_count[1]~32\) # (GND)))
-- \u08|w_count[2]~34\ = CARRY((!\u08|w_count[1]~32\) # (!\u08|w_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_count\(2),
	datad => VCC,
	cin => \u08|w_count[1]~32\,
	combout => \u08|w_count[2]~33_combout\,
	cout => \u08|w_count[2]~34\);

-- Location: FF_X58_Y47_N5
\u08|w_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[2]~33_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(2));

-- Location: LCCOMB_X58_Y47_N6
\u08|w_count[3]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[3]~35_combout\ = (\u08|w_count\(3) & (\u08|w_count[2]~34\ $ (GND))) # (!\u08|w_count\(3) & (!\u08|w_count[2]~34\ & VCC))
-- \u08|w_count[3]~36\ = CARRY((\u08|w_count\(3) & !\u08|w_count[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_count\(3),
	datad => VCC,
	cin => \u08|w_count[2]~34\,
	combout => \u08|w_count[3]~35_combout\,
	cout => \u08|w_count[3]~36\);

-- Location: FF_X58_Y47_N7
\u08|w_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[3]~35_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(3));

-- Location: LCCOMB_X58_Y47_N8
\u08|w_count[4]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[4]~37_combout\ = (\u08|w_count\(4) & (!\u08|w_count[3]~36\)) # (!\u08|w_count\(4) & ((\u08|w_count[3]~36\) # (GND)))
-- \u08|w_count[4]~38\ = CARRY((!\u08|w_count[3]~36\) # (!\u08|w_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_count\(4),
	datad => VCC,
	cin => \u08|w_count[3]~36\,
	combout => \u08|w_count[4]~37_combout\,
	cout => \u08|w_count[4]~38\);

-- Location: FF_X58_Y47_N9
\u08|w_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[4]~37_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(4));

-- Location: LCCOMB_X58_Y47_N10
\u08|w_count[5]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[5]~39_combout\ = (\u08|w_count\(5) & (\u08|w_count[4]~38\ $ (GND))) # (!\u08|w_count\(5) & (!\u08|w_count[4]~38\ & VCC))
-- \u08|w_count[5]~40\ = CARRY((\u08|w_count\(5) & !\u08|w_count[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_count\(5),
	datad => VCC,
	cin => \u08|w_count[4]~38\,
	combout => \u08|w_count[5]~39_combout\,
	cout => \u08|w_count[5]~40\);

-- Location: FF_X58_Y47_N11
\u08|w_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[5]~39_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(5));

-- Location: LCCOMB_X58_Y47_N12
\u08|w_count[6]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[6]~41_combout\ = (\u08|w_count\(6) & (!\u08|w_count[5]~40\)) # (!\u08|w_count\(6) & ((\u08|w_count[5]~40\) # (GND)))
-- \u08|w_count[6]~42\ = CARRY((!\u08|w_count[5]~40\) # (!\u08|w_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_count\(6),
	datad => VCC,
	cin => \u08|w_count[5]~40\,
	combout => \u08|w_count[6]~41_combout\,
	cout => \u08|w_count[6]~42\);

-- Location: FF_X58_Y47_N13
\u08|w_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[6]~41_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(6));

-- Location: LCCOMB_X58_Y47_N14
\u08|w_count[7]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[7]~43_combout\ = (\u08|w_count\(7) & (\u08|w_count[6]~42\ $ (GND))) # (!\u08|w_count\(7) & (!\u08|w_count[6]~42\ & VCC))
-- \u08|w_count[7]~44\ = CARRY((\u08|w_count\(7) & !\u08|w_count[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_count\(7),
	datad => VCC,
	cin => \u08|w_count[6]~42\,
	combout => \u08|w_count[7]~43_combout\,
	cout => \u08|w_count[7]~44\);

-- Location: FF_X58_Y47_N15
\u08|w_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[7]~43_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(7));

-- Location: LCCOMB_X58_Y47_N16
\u08|w_count[8]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[8]~45_combout\ = (\u08|w_count\(8) & (!\u08|w_count[7]~44\)) # (!\u08|w_count\(8) & ((\u08|w_count[7]~44\) # (GND)))
-- \u08|w_count[8]~46\ = CARRY((!\u08|w_count[7]~44\) # (!\u08|w_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_count\(8),
	datad => VCC,
	cin => \u08|w_count[7]~44\,
	combout => \u08|w_count[8]~45_combout\,
	cout => \u08|w_count[8]~46\);

-- Location: FF_X58_Y47_N17
\u08|w_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[8]~45_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(8));

-- Location: LCCOMB_X58_Y47_N18
\u08|w_count[9]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[9]~47_combout\ = (\u08|w_count\(9) & (\u08|w_count[8]~46\ $ (GND))) # (!\u08|w_count\(9) & (!\u08|w_count[8]~46\ & VCC))
-- \u08|w_count[9]~48\ = CARRY((\u08|w_count\(9) & !\u08|w_count[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_count\(9),
	datad => VCC,
	cin => \u08|w_count[8]~46\,
	combout => \u08|w_count[9]~47_combout\,
	cout => \u08|w_count[9]~48\);

-- Location: FF_X58_Y47_N19
\u08|w_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[9]~47_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(9));

-- Location: LCCOMB_X58_Y47_N20
\u08|w_count[10]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[10]~49_combout\ = (\u08|w_count\(10) & (!\u08|w_count[9]~48\)) # (!\u08|w_count\(10) & ((\u08|w_count[9]~48\) # (GND)))
-- \u08|w_count[10]~50\ = CARRY((!\u08|w_count[9]~48\) # (!\u08|w_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_count\(10),
	datad => VCC,
	cin => \u08|w_count[9]~48\,
	combout => \u08|w_count[10]~49_combout\,
	cout => \u08|w_count[10]~50\);

-- Location: FF_X58_Y47_N21
\u08|w_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[10]~49_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(10));

-- Location: LCCOMB_X58_Y47_N22
\u08|w_count[11]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[11]~51_combout\ = (\u08|w_count\(11) & (\u08|w_count[10]~50\ $ (GND))) # (!\u08|w_count\(11) & (!\u08|w_count[10]~50\ & VCC))
-- \u08|w_count[11]~52\ = CARRY((\u08|w_count\(11) & !\u08|w_count[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_count\(11),
	datad => VCC,
	cin => \u08|w_count[10]~50\,
	combout => \u08|w_count[11]~51_combout\,
	cout => \u08|w_count[11]~52\);

-- Location: FF_X58_Y47_N23
\u08|w_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[11]~51_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(11));

-- Location: LCCOMB_X58_Y47_N24
\u08|w_count[12]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[12]~53_combout\ = (\u08|w_count\(12) & (!\u08|w_count[11]~52\)) # (!\u08|w_count\(12) & ((\u08|w_count[11]~52\) # (GND)))
-- \u08|w_count[12]~54\ = CARRY((!\u08|w_count[11]~52\) # (!\u08|w_count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_count\(12),
	datad => VCC,
	cin => \u08|w_count[11]~52\,
	combout => \u08|w_count[12]~53_combout\,
	cout => \u08|w_count[12]~54\);

-- Location: FF_X58_Y47_N25
\u08|w_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[12]~53_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(12));

-- Location: LCCOMB_X58_Y47_N26
\u08|w_count[13]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[13]~55_combout\ = (\u08|w_count\(13) & (\u08|w_count[12]~54\ $ (GND))) # (!\u08|w_count\(13) & (!\u08|w_count[12]~54\ & VCC))
-- \u08|w_count[13]~56\ = CARRY((\u08|w_count\(13) & !\u08|w_count[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_count\(13),
	datad => VCC,
	cin => \u08|w_count[12]~54\,
	combout => \u08|w_count[13]~55_combout\,
	cout => \u08|w_count[13]~56\);

-- Location: FF_X58_Y47_N27
\u08|w_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[13]~55_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(13));

-- Location: LCCOMB_X58_Y47_N28
\u08|w_count[14]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[14]~57_combout\ = (\u08|w_count\(14) & (!\u08|w_count[13]~56\)) # (!\u08|w_count\(14) & ((\u08|w_count[13]~56\) # (GND)))
-- \u08|w_count[14]~58\ = CARRY((!\u08|w_count[13]~56\) # (!\u08|w_count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_count\(14),
	datad => VCC,
	cin => \u08|w_count[13]~56\,
	combout => \u08|w_count[14]~57_combout\,
	cout => \u08|w_count[14]~58\);

-- Location: FF_X58_Y47_N29
\u08|w_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[14]~57_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(14));

-- Location: LCCOMB_X58_Y47_N30
\u08|w_count[15]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[15]~59_combout\ = (\u08|w_count\(15) & (\u08|w_count[14]~58\ $ (GND))) # (!\u08|w_count\(15) & (!\u08|w_count[14]~58\ & VCC))
-- \u08|w_count[15]~60\ = CARRY((\u08|w_count\(15) & !\u08|w_count[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_count\(15),
	datad => VCC,
	cin => \u08|w_count[14]~58\,
	combout => \u08|w_count[15]~59_combout\,
	cout => \u08|w_count[15]~60\);

-- Location: FF_X58_Y47_N31
\u08|w_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[15]~59_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(15));

-- Location: LCCOMB_X58_Y46_N0
\u08|w_count[16]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[16]~61_combout\ = (\u08|w_count\(16) & (!\u08|w_count[15]~60\)) # (!\u08|w_count\(16) & ((\u08|w_count[15]~60\) # (GND)))
-- \u08|w_count[16]~62\ = CARRY((!\u08|w_count[15]~60\) # (!\u08|w_count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_count\(16),
	datad => VCC,
	cin => \u08|w_count[15]~60\,
	combout => \u08|w_count[16]~61_combout\,
	cout => \u08|w_count[16]~62\);

-- Location: FF_X58_Y46_N1
\u08|w_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[16]~61_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(16));

-- Location: LCCOMB_X58_Y46_N2
\u08|w_count[17]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[17]~63_combout\ = (\u08|w_count\(17) & (\u08|w_count[16]~62\ $ (GND))) # (!\u08|w_count\(17) & (!\u08|w_count[16]~62\ & VCC))
-- \u08|w_count[17]~64\ = CARRY((\u08|w_count\(17) & !\u08|w_count[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_count\(17),
	datad => VCC,
	cin => \u08|w_count[16]~62\,
	combout => \u08|w_count[17]~63_combout\,
	cout => \u08|w_count[17]~64\);

-- Location: FF_X58_Y46_N3
\u08|w_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[17]~63_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(17));

-- Location: LCCOMB_X58_Y46_N4
\u08|w_count[18]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[18]~65_combout\ = (\u08|w_count\(18) & (!\u08|w_count[17]~64\)) # (!\u08|w_count\(18) & ((\u08|w_count[17]~64\) # (GND)))
-- \u08|w_count[18]~66\ = CARRY((!\u08|w_count[17]~64\) # (!\u08|w_count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_count\(18),
	datad => VCC,
	cin => \u08|w_count[17]~64\,
	combout => \u08|w_count[18]~65_combout\,
	cout => \u08|w_count[18]~66\);

-- Location: FF_X58_Y46_N5
\u08|w_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[18]~65_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(18));

-- Location: LCCOMB_X58_Y46_N6
\u08|w_count[19]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[19]~67_combout\ = (\u08|w_count\(19) & (\u08|w_count[18]~66\ $ (GND))) # (!\u08|w_count\(19) & (!\u08|w_count[18]~66\ & VCC))
-- \u08|w_count[19]~68\ = CARRY((\u08|w_count\(19) & !\u08|w_count[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_count\(19),
	datad => VCC,
	cin => \u08|w_count[18]~66\,
	combout => \u08|w_count[19]~67_combout\,
	cout => \u08|w_count[19]~68\);

-- Location: FF_X58_Y46_N7
\u08|w_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[19]~67_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(19));

-- Location: LCCOMB_X58_Y46_N8
\u08|w_count[20]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[20]~69_combout\ = (\u08|w_count\(20) & (!\u08|w_count[19]~68\)) # (!\u08|w_count\(20) & ((\u08|w_count[19]~68\) # (GND)))
-- \u08|w_count[20]~70\ = CARRY((!\u08|w_count[19]~68\) # (!\u08|w_count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_count\(20),
	datad => VCC,
	cin => \u08|w_count[19]~68\,
	combout => \u08|w_count[20]~69_combout\,
	cout => \u08|w_count[20]~70\);

-- Location: FF_X58_Y46_N9
\u08|w_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[20]~69_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(20));

-- Location: LCCOMB_X58_Y46_N10
\u08|w_count[21]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[21]~71_combout\ = (\u08|w_count\(21) & (\u08|w_count[20]~70\ $ (GND))) # (!\u08|w_count\(21) & (!\u08|w_count[20]~70\ & VCC))
-- \u08|w_count[21]~72\ = CARRY((\u08|w_count\(21) & !\u08|w_count[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_count\(21),
	datad => VCC,
	cin => \u08|w_count[20]~70\,
	combout => \u08|w_count[21]~71_combout\,
	cout => \u08|w_count[21]~72\);

-- Location: FF_X58_Y46_N11
\u08|w_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[21]~71_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(21));

-- Location: LCCOMB_X58_Y46_N12
\u08|w_count[22]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[22]~73_combout\ = (\u08|w_count\(22) & (!\u08|w_count[21]~72\)) # (!\u08|w_count\(22) & ((\u08|w_count[21]~72\) # (GND)))
-- \u08|w_count[22]~74\ = CARRY((!\u08|w_count[21]~72\) # (!\u08|w_count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_count\(22),
	datad => VCC,
	cin => \u08|w_count[21]~72\,
	combout => \u08|w_count[22]~73_combout\,
	cout => \u08|w_count[22]~74\);

-- Location: FF_X58_Y46_N13
\u08|w_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[22]~73_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(22));

-- Location: LCCOMB_X58_Y46_N14
\u08|w_count[23]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[23]~75_combout\ = (\u08|w_count\(23) & (\u08|w_count[22]~74\ $ (GND))) # (!\u08|w_count\(23) & (!\u08|w_count[22]~74\ & VCC))
-- \u08|w_count[23]~76\ = CARRY((\u08|w_count\(23) & !\u08|w_count[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_count\(23),
	datad => VCC,
	cin => \u08|w_count[22]~74\,
	combout => \u08|w_count[23]~75_combout\,
	cout => \u08|w_count[23]~76\);

-- Location: FF_X58_Y46_N15
\u08|w_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[23]~75_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(23));

-- Location: LCCOMB_X58_Y46_N16
\u08|w_count[24]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[24]~77_combout\ = (\u08|w_count\(24) & (!\u08|w_count[23]~76\)) # (!\u08|w_count\(24) & ((\u08|w_count[23]~76\) # (GND)))
-- \u08|w_count[24]~78\ = CARRY((!\u08|w_count[23]~76\) # (!\u08|w_count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_count\(24),
	datad => VCC,
	cin => \u08|w_count[23]~76\,
	combout => \u08|w_count[24]~77_combout\,
	cout => \u08|w_count[24]~78\);

-- Location: FF_X58_Y46_N17
\u08|w_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[24]~77_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(24));

-- Location: LCCOMB_X58_Y46_N18
\u08|w_count[25]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[25]~79_combout\ = (\u08|w_count\(25) & (\u08|w_count[24]~78\ $ (GND))) # (!\u08|w_count\(25) & (!\u08|w_count[24]~78\ & VCC))
-- \u08|w_count[25]~80\ = CARRY((\u08|w_count\(25) & !\u08|w_count[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_count\(25),
	datad => VCC,
	cin => \u08|w_count[24]~78\,
	combout => \u08|w_count[25]~79_combout\,
	cout => \u08|w_count[25]~80\);

-- Location: FF_X58_Y46_N19
\u08|w_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[25]~79_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(25));

-- Location: LCCOMB_X58_Y46_N20
\u08|w_count[26]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[26]~81_combout\ = (\u08|w_count\(26) & (!\u08|w_count[25]~80\)) # (!\u08|w_count\(26) & ((\u08|w_count[25]~80\) # (GND)))
-- \u08|w_count[26]~82\ = CARRY((!\u08|w_count[25]~80\) # (!\u08|w_count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_count\(26),
	datad => VCC,
	cin => \u08|w_count[25]~80\,
	combout => \u08|w_count[26]~81_combout\,
	cout => \u08|w_count[26]~82\);

-- Location: FF_X58_Y46_N21
\u08|w_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[26]~81_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(26));

-- Location: LCCOMB_X58_Y46_N22
\u08|w_count[27]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[27]~83_combout\ = (\u08|w_count\(27) & (\u08|w_count[26]~82\ $ (GND))) # (!\u08|w_count\(27) & (!\u08|w_count[26]~82\ & VCC))
-- \u08|w_count[27]~84\ = CARRY((\u08|w_count\(27) & !\u08|w_count[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_count\(27),
	datad => VCC,
	cin => \u08|w_count[26]~82\,
	combout => \u08|w_count[27]~83_combout\,
	cout => \u08|w_count[27]~84\);

-- Location: FF_X58_Y46_N23
\u08|w_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[27]~83_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(27));

-- Location: LCCOMB_X58_Y46_N24
\u08|w_count[28]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[28]~85_combout\ = (\u08|w_count\(28) & (!\u08|w_count[27]~84\)) # (!\u08|w_count\(28) & ((\u08|w_count[27]~84\) # (GND)))
-- \u08|w_count[28]~86\ = CARRY((!\u08|w_count[27]~84\) # (!\u08|w_count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_count\(28),
	datad => VCC,
	cin => \u08|w_count[27]~84\,
	combout => \u08|w_count[28]~85_combout\,
	cout => \u08|w_count[28]~86\);

-- Location: FF_X58_Y46_N25
\u08|w_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[28]~85_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(28));

-- Location: LCCOMB_X58_Y46_N26
\u08|w_count[29]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[29]~88_combout\ = (\u08|w_count\(29) & (\u08|w_count[28]~86\ $ (GND))) # (!\u08|w_count\(29) & (!\u08|w_count[28]~86\ & VCC))
-- \u08|w_count[29]~89\ = CARRY((\u08|w_count\(29) & !\u08|w_count[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_count\(29),
	datad => VCC,
	cin => \u08|w_count[28]~86\,
	combout => \u08|w_count[29]~88_combout\,
	cout => \u08|w_count[29]~89\);

-- Location: FF_X58_Y46_N27
\u08|w_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[29]~88_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(29));

-- Location: LCCOMB_X58_Y46_N28
\u08|w_count[30]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[30]~90_combout\ = (\u08|w_count\(30) & (!\u08|w_count[29]~89\)) # (!\u08|w_count\(30) & ((\u08|w_count[29]~89\) # (GND)))
-- \u08|w_count[30]~91\ = CARRY((!\u08|w_count[29]~89\) # (!\u08|w_count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u08|w_count\(30),
	datad => VCC,
	cin => \u08|w_count[29]~89\,
	combout => \u08|w_count[30]~90_combout\,
	cout => \u08|w_count[30]~91\);

-- Location: FF_X58_Y46_N29
\u08|w_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[30]~90_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(30));

-- Location: LCCOMB_X59_Y46_N24
\u08|o_valve_end~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|o_valve_end~0_combout\ = (!\u08|w_count\(30) & (!\u08|w_count\(29) & !\u08|w_count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_count\(30),
	datac => \u08|w_count\(29),
	datad => \u08|w_count\(28),
	combout => \u08|o_valve_end~0_combout\);

-- Location: LCCOMB_X59_Y46_N6
\u08|o_valve_end~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|o_valve_end~6_combout\ = (!\u08|w_count\(14) & (!\u08|w_count\(12) & (!\u08|w_count\(13) & !\u08|w_count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_count\(14),
	datab => \u08|w_count\(12),
	datac => \u08|w_count\(13),
	datad => \u08|w_count\(15),
	combout => \u08|o_valve_end~6_combout\);

-- Location: LCCOMB_X59_Y46_N16
\u08|o_valve_end~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|o_valve_end~7_combout\ = (!\u08|w_count\(16) & (!\u08|w_count\(19) & (!\u08|w_count\(18) & !\u08|w_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_count\(16),
	datab => \u08|w_count\(19),
	datac => \u08|w_count\(18),
	datad => \u08|w_count\(17),
	combout => \u08|o_valve_end~7_combout\);

-- Location: LCCOMB_X59_Y46_N4
\u08|o_valve_end~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|o_valve_end~9_combout\ = (!\u08|w_count\(26) & (!\u08|w_count\(27) & (!\u08|w_count\(24) & !\u08|w_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_count\(26),
	datab => \u08|w_count\(27),
	datac => \u08|w_count\(24),
	datad => \u08|w_count\(25),
	combout => \u08|o_valve_end~9_combout\);

-- Location: LCCOMB_X59_Y46_N10
\u08|o_valve_end~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|o_valve_end~8_combout\ = (!\u08|w_count\(21) & (!\u08|w_count\(23) & (!\u08|w_count\(22) & !\u08|w_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_count\(21),
	datab => \u08|w_count\(23),
	datac => \u08|w_count\(22),
	datad => \u08|w_count\(20),
	combout => \u08|o_valve_end~8_combout\);

-- Location: LCCOMB_X59_Y46_N22
\u08|o_valve_end~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|o_valve_end~10_combout\ = (\u08|o_valve_end~6_combout\ & (\u08|o_valve_end~7_combout\ & (\u08|o_valve_end~9_combout\ & \u08|o_valve_end~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|o_valve_end~6_combout\,
	datab => \u08|o_valve_end~7_combout\,
	datac => \u08|o_valve_end~9_combout\,
	datad => \u08|o_valve_end~8_combout\,
	combout => \u08|o_valve_end~10_combout\);

-- Location: LCCOMB_X58_Y47_N0
\u08|o_valve_end~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|o_valve_end~3_combout\ = (!\u08|w_count\(5) & (!\u08|w_count\(4) & (!\u08|w_count\(7) & !\u08|w_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_count\(5),
	datab => \u08|w_count\(4),
	datac => \u08|w_count\(7),
	datad => \u08|w_count\(6),
	combout => \u08|o_valve_end~3_combout\);

-- Location: LCCOMB_X58_Y46_N30
\u08|w_count[31]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|w_count[31]~93_combout\ = \u08|w_count\(31) $ (!\u08|w_count[30]~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_count\(31),
	cin => \u08|w_count[30]~91\,
	combout => \u08|w_count[31]~93_combout\);

-- Location: FF_X58_Y46_N31
\u08|w_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|w_count[31]~93_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \u08|w_count[30]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|w_count\(31));

-- Location: LCCOMB_X59_Y46_N30
\u02|o_count_done[31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u02|o_count_done[31]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u02|o_count_done[31]~feeder_combout\);

-- Location: LCCOMB_X55_Y47_N8
\u02|o_count_done[31]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u02|o_count_done[31]~0_combout\ = (!\u02|w_estado.st_preparando~q\ & (\u01|altpll_component|auto_generated|pll_lock_sync~q\ & \u01|altpll_component|auto_generated|wire_pll1_locked\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u02|w_estado.st_preparando~q\,
	datab => \u01|altpll_component|auto_generated|pll_lock_sync~q\,
	datac => \u01|altpll_component|auto_generated|wire_pll1_locked\,
	combout => \u02|o_count_done[31]~0_combout\);

-- Location: FF_X59_Y46_N31
\u02|o_count_done[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u02|o_count_done[31]~feeder_combout\,
	ena => \u02|o_count_done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u02|o_count_done\(31));

-- Location: LCCOMB_X59_Y46_N0
\u08|o_valve_end~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|o_valve_end~2_combout\ = (!\u08|w_count\(3) & (!\u08|w_count\(1) & (\u08|w_count\(31) $ (\u02|o_count_done\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_count\(3),
	datab => \u08|w_count\(31),
	datac => \u02|o_count_done\(31),
	datad => \u08|w_count\(1),
	combout => \u08|o_valve_end~2_combout\);

-- Location: FF_X59_Y46_N27
\u02|o_count_done[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \u02|w_estado.st_done~q\,
	sload => VCC,
	ena => \u02|o_count_done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u02|o_count_done\(2));

-- Location: LCCOMB_X59_Y46_N28
\u02|o_count_done[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u02|o_count_done[0]~1_combout\ = !\u02|w_estado.st_done~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u02|w_estado.st_done~q\,
	combout => \u02|o_count_done[0]~1_combout\);

-- Location: FF_X59_Y46_N29
\u02|o_count_done[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u02|o_count_done[0]~1_combout\,
	ena => \u02|o_count_done[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u02|o_count_done\(0));

-- Location: LCCOMB_X59_Y46_N26
\u08|o_valve_end~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|o_valve_end~1_combout\ = (\u08|w_count\(0) & (!\u02|o_count_done\(0) & (\u08|w_count\(2) $ (!\u02|o_count_done\(2))))) # (!\u08|w_count\(0) & (\u02|o_count_done\(0) & (\u08|w_count\(2) $ (!\u02|o_count_done\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_count\(0),
	datab => \u08|w_count\(2),
	datac => \u02|o_count_done\(2),
	datad => \u02|o_count_done\(0),
	combout => \u08|o_valve_end~1_combout\);

-- Location: LCCOMB_X59_Y46_N18
\u08|o_valve_end~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|o_valve_end~4_combout\ = (!\u08|w_count\(10) & (!\u08|w_count\(11) & (!\u08|w_count\(9) & !\u08|w_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|w_count\(10),
	datab => \u08|w_count\(11),
	datac => \u08|w_count\(9),
	datad => \u08|w_count\(8),
	combout => \u08|o_valve_end~4_combout\);

-- Location: LCCOMB_X59_Y46_N20
\u08|o_valve_end~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|o_valve_end~5_combout\ = (\u08|o_valve_end~3_combout\ & (\u08|o_valve_end~2_combout\ & (\u08|o_valve_end~1_combout\ & \u08|o_valve_end~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|o_valve_end~3_combout\,
	datab => \u08|o_valve_end~2_combout\,
	datac => \u08|o_valve_end~1_combout\,
	datad => \u08|o_valve_end~4_combout\,
	combout => \u08|o_valve_end~5_combout\);

-- Location: LCCOMB_X59_Y46_N8
\u08|o_valve_end~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|o_valve_end~11_combout\ = (!\u08|Equal0~10_combout\ & (\u08|o_valve_end~0_combout\ & (\u08|o_valve_end~10_combout\ & \u08|o_valve_end~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u08|Equal0~10_combout\,
	datab => \u08|o_valve_end~0_combout\,
	datac => \u08|o_valve_end~10_combout\,
	datad => \u08|o_valve_end~5_combout\,
	combout => \u08|o_valve_end~11_combout\);

-- Location: LCCOMB_X55_Y47_N28
\u08|o_valve_end~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u08|o_valve_end~12_combout\ = (\u08|o_valve_end~q\) # ((\u02|o_timer_done_en~q\ & \u08|o_valve_end~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u02|o_timer_done_en~q\,
	datab => \u08|o_valve_end~11_combout\,
	datac => \u08|o_valve_end~q\,
	combout => \u08|o_valve_end~12_combout\);

-- Location: FF_X55_Y47_N29
\u08|o_valve_end\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u08|o_valve_end~12_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u08|o_valve_end~q\);

-- Location: LCCOMB_X55_Y47_N6
\u02|Selector170~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u02|Selector170~2_combout\ = (\u08|o_valve_end~q\ & \u02|w_estado.st_done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u08|o_valve_end~q\,
	datad => \u02|w_estado.st_done~q\,
	combout => \u02|Selector170~2_combout\);

-- Location: LCCOMB_X55_Y47_N26
\u02|Selector169~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u02|Selector169~0_combout\ = (!\u02|Selector170~2_combout\ & ((\u02|Selector171~0_combout\) # ((\u02|w_estado.st_idle~q\) # (!\i_start~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u02|Selector170~2_combout\,
	datab => \u02|Selector171~0_combout\,
	datac => \u02|w_estado.st_idle~q\,
	datad => \i_start~input_o\,
	combout => \u02|Selector169~0_combout\);

-- Location: FF_X55_Y47_N27
\u02|w_estado.st_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u02|Selector169~0_combout\,
	clrn => \u01|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u02|w_estado.st_idle~q\);

-- Location: LCCOMB_X55_Y47_N12
\u02|o_led_cafe~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u02|o_led_cafe~0_combout\ = (!\u02|w_estado.st_idle~q\ & (\u01|altpll_component|auto_generated|pll_lock_sync~q\ & \u01|altpll_component|auto_generated|wire_pll1_locked\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u02|w_estado.st_idle~q\,
	datab => \u01|altpll_component|auto_generated|pll_lock_sync~q\,
	datac => \u01|altpll_component|auto_generated|wire_pll1_locked\,
	combout => \u02|o_led_cafe~0_combout\);

-- Location: FF_X51_Y53_N1
\u02|o_led_cafe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u02|process_0~0_combout\,
	ena => \u02|o_led_cafe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u02|o_led_cafe~q\);

-- Location: LCCOMB_X51_Y53_N18
\u02|o_led_cafe_leite~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u02|o_led_cafe_leite~0_combout\ = (\i_cafe_leite~input_o\ & (!\i_moca~input_o\ & !\i_cafe~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cafe_leite~input_o\,
	datac => \i_moca~input_o\,
	datad => \i_cafe~input_o\,
	combout => \u02|o_led_cafe_leite~0_combout\);

-- Location: FF_X51_Y53_N19
\u02|o_led_cafe_leite\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u02|o_led_cafe_leite~0_combout\,
	ena => \u02|o_led_cafe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u02|o_led_cafe_leite~q\);

-- Location: LCCOMB_X51_Y53_N28
\u02|o_led_moca~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u02|o_led_moca~0_combout\ = (!\i_cafe_leite~input_o\ & (\i_moca~input_o\ & !\i_cafe~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cafe_leite~input_o\,
	datac => \i_moca~input_o\,
	datad => \i_cafe~input_o\,
	combout => \u02|o_led_moca~0_combout\);

-- Location: FF_X51_Y53_N29
\u02|o_led_moca\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u02|o_led_moca~0_combout\,
	ena => \u02|o_led_cafe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u02|o_led_moca~q\);

-- Location: IOIBUF_X54_Y54_N22
\i_tamanho~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_tamanho,
	o => \i_tamanho~input_o\);

-- Location: LCCOMB_X51_Y53_N6
\u02|o_led_tamanho~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u02|o_led_tamanho~0_combout\ = (\i_tamanho~input_o\ & ((\i_cafe_leite~input_o\ & (!\i_cafe~input_o\ & !\i_moca~input_o\)) # (!\i_cafe_leite~input_o\ & (\i_cafe~input_o\ $ (\i_moca~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cafe_leite~input_o\,
	datab => \i_cafe~input_o\,
	datac => \i_moca~input_o\,
	datad => \i_tamanho~input_o\,
	combout => \u02|o_led_tamanho~0_combout\);

-- Location: FF_X51_Y53_N7
\u02|o_led_tamanho\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u02|o_led_tamanho~0_combout\,
	ena => \u02|o_led_cafe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u02|o_led_tamanho~q\);

-- Location: IOIBUF_X54_Y54_N29
\i_acucar~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_acucar,
	o => \i_acucar~input_o\);

-- Location: LCCOMB_X51_Y53_N24
\u02|o_led_acucar~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u02|o_led_acucar~0_combout\ = (\i_acucar~input_o\ & ((\i_cafe_leite~input_o\ & (!\i_cafe~input_o\ & !\i_moca~input_o\)) # (!\i_cafe_leite~input_o\ & (\i_cafe~input_o\ $ (\i_moca~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cafe_leite~input_o\,
	datab => \i_cafe~input_o\,
	datac => \i_moca~input_o\,
	datad => \i_acucar~input_o\,
	combout => \u02|o_led_acucar~0_combout\);

-- Location: FF_X51_Y53_N25
\u02|o_led_acucar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u02|o_led_acucar~0_combout\,
	ena => \u02|o_led_cafe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u02|o_led_acucar~q\);

-- Location: LCCOMB_X55_Y47_N0
\u02|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u02|Selector0~0_combout\ = (\u02|w_estado.st_preparando~q\) # ((\u02|o_sel\(0) & \u02|w_estado.st_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u02|w_estado.st_preparando~q\,
	datac => \u02|o_sel\(0),
	datad => \u02|w_estado.st_done~q\,
	combout => \u02|Selector0~0_combout\);

-- Location: FF_X55_Y47_N1
\u02|o_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u01|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u02|Selector0~0_combout\,
	ena => \u01|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u02|o_sel\(0));

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);
END structure;


