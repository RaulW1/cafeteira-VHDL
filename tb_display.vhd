--- DISPLAY TESTBENCH ---

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;

entity tb_display is
end tb_display;

architecture behavorial of tb_display is
	component display is
		port
		(
			-- entradas
			i_sel		: in std_logic_vector (1 downto 0);
			i_reset	: in std_logic;
			
			-- saidas
			o_display0	: out std_logic_vector (6 downto 0);
			o_display1	: out std_logic_vector (6 downto 0);
			o_display2	: out std_logic_vector (6 downto 0);
			o_display3	: out std_logic_vector (6 downto 0)
			
		);

	end component;
	
	signal w_sel	: std_logic_vector (1 downto 0);
	signal w_reset	: std_logic;
	signal w_display0	: std_logic_vector (6 downto 0);
	signal w_display1	: std_logic_vector (6 downto 0);
	signal w_display2	: std_logic_vector (6 downto 0);
	signal w_display3	: std_logic_vector (6 downto 0);
	
	begin
	
	u01 : display
	port map
	(
			i_sel => w_sel,
			i_reset => w_reset,
			o_display0	=> w_display0,
			o_display1	=> w_display1,
			o_display2	=> w_display2,
			o_display3	=> w_display3
	);
	
	process
		begin
		w_reset <= '1';
		wait for 100 ns;
		
		w_sel <= "00";
		wait for 100 ns;
		
		w_sel <= "01";
		wait for 100 ns;
		
		w_sel <= "10";
		wait for 100 ns;
	end process;

end behavorial;