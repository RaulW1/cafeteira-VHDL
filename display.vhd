----- DISPLAY 7 SEG -----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;

entity display is
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

end display;

architecture behavorial of display is
begin
	-- DISPLAY "ABCDEFG"
	-- WAIT
		-- W "0101010"
		-- A "1110111"
		-- I "0000110"
		-- T "0001111"
	-- DONE
		-- D "0111101"
		-- O "1111110"
		-- N "1110110"
		-- E "1001111"
	process(i_reset, i_sel)
		begin
			if (i_reset = '1') then
				o_display0 <= not "0000000";
				o_display1 <= not "0000000";
				o_display2 <= not "0000000";
				o_display3 <= not "0000000";
			end if;
			
			case i_sel is
				when "00" => -- IDLE
					o_display0 <= not "0000000";
					o_display1 <= not "0000000";
					o_display2 <= not "0000000";
					o_display3 <= not "0000000";
				when "01" => -- WAITING
					o_display0 <= not "0101010";
					o_display1 <= not "1110111";
					o_display2 <= not "0000110";
					o_display3 <= not "0001111";
				when "10" => -- DONE
					o_display0 <= not "0111101";
					o_display1 <= not "1111110";
					o_display2 <= not "1110110";
					o_display3 <= not "1001111";
				when others =>
					o_display0 <= not "0000000";
					o_display1 <= not "0000000";
					o_display2 <= not "0000000";
					o_display3 <= not "0000000";
			end case;
		
	end process;

end behavorial;