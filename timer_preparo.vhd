----- TIMER PREPARO -----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;

entity timer_preparo is
	port
	(
		-- entradas
		i_timer_en 		: in STD_LOGIC;
		i_timer_sel		: in STD_LOGIC;
		i_clk				: in STD_LOGIC;
		i_reset			: in STD_LOGIC;
		
		-- saidas
		o_timer_end		: out STD_LOGIC
	);
end timer_preparo;

architecture Behavorial of timer_preparo is

variable count	: STD_LOGIC_VECTOR (27 downto 0) := "00000000000000000000000000";
variable segundos		: integer := 0;

begin
	process(i_clk, i_reset)
	variable um_segundo	: STD_LOGIC_VECTOR (27 downto 0) := "0010111110101111000010000000";
	variable timer_longo	: integer := 11;
	variable timer_curto	: integer := 6;
	
		begin
			if (i_reset = '1') then
				count := "00000000000000000000000000";
				segundos := 0;
				
			elsif (rising_edge(i_clk) and i_timer_en = '1') then
				count := count + 1;
				
				if (count = um_segundo) then
					count := "00000000000000000000000000";
					segundos := segundos + 1;
					if (i_timer_sel = '0' and (segundos = timer_curto)) then
					
					end if;
				end if;
				
			end if;
		end process;
	o_timer_end <= '1';
end Behavorial;