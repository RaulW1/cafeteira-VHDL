----- VALVULA TESTBENCH -----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;

entity tb_valvula is
end tb_valvula;

architecture behavorial of tb_valvula is
	component valvula is
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
	end component;
	
	signal w_clk			: std_logic;
	signal w_reset			: std_logic;
	signal w_valve_en		: std_logic;
	signal w_count			: integer;
	signal w_valve_end	: std_logic;
	--signal w_ticks			: integer;
	--signal w_counter		: integer;
	
	begin
	
	u01 : valvula
	port map
	(
			i_clk			=> w_clk,
			i_reset		=> w_reset,
			i_valve_en	=> w_valve_en,
			i_count		=> w_count,
			o_valve_end => w_valve_end
			--o_ticks		=> w_ticks,
			--o_count 		=> w_counter
			
			
	);
	
	process
		begin
			w_count <= 5; -- alterar de acordo com a valvula que deseja testar
			w_reset <= '0';
			w_valve_en <= '1';
			wait for 100 ns;
			w_clk <= '1';
			wait for 100 ns;
			w_clk <= '0';
			if w_valve_end <= '0' then
				w_valve_en <= '0';
			end if;
			--w_reset <= '1';
		end process;
	
end behavorial;