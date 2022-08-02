---- VALVULA ----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;

entity valvula is
	port
	(
		--entradas
		i_clk			: in STD_LOGIC;
		i_reset		: in STD_LOGIC;
		i_valve_en	: in STD_LOGIC;
		i_count		: in integer;
		
		--saidas
		o_valve_end		: out STD_LOGIC
		--o_ticks			: out integer;
		--o_count			: out integer
	);
end valvula;

architecture behavorial of valvula is
	signal w_clock_freq	: integer := 50e6; -- 50MHz
	--signal w_clock_freq	: integer := 10; -- para test bench
	signal w_ticks			: integer := 0;
	signal w_count			: integer := 0;
	begin
		process(i_reset, i_clk)
		begin
			if (i_reset = '1') then
				-- zerar contador
				--zerar saida
				w_ticks		<= 0;
				w_count		<= 0;
				o_valve_end <= '0';
			elsif (rising_edge(i_clk)) then
				-- contar até i_count
				if (i_valve_en = '1') then
					if (w_ticks = w_clock_freq) then
						w_ticks <= 0;
						w_count <= w_count + 1;
					elsif (w_count = i_count) then
						o_valve_end <= '1';
					else
						w_ticks <= w_ticks + 1;
					end if;
				end if;
			end if;
			--o_ticks <= w_ticks;
			--o_count <= w_count;
		end process;
end behavorial;