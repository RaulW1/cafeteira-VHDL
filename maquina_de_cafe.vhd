---- MAQUINA DE CAFE ----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;

entity maquina_de_cafe is
	port(
		-- entradas
		i_cafe 			 		: in STD_LOGIC;
		i_cafe_leite			: in STD_LOGIC;
		i_moca 			 		: in STD_LOGIC;
		i_tamanho		 		: in STD_LOGIC;
		i_acucar		 			: in STD_LOGIC;
		i_start			 		: in STD_LOGIC;
		i_clk			 			: in STD_LOGIC;
		i_reset			 		: in STD_LOGIC;
		i_valve_cafe_end		: in STD_LOGIC;
		i_valve_leite_end		: in STD_LOGIC;
		i_valve_moca_end		: in STD_LOGIC;
		i_valve_acucar_end	: in STD_LOGIC;
		i_valve_agua_end		: in STD_LOGIC;
		i_timer_done_end		: in STD_LOGIC;
		
		-- saidas
		o_led_cafe		 	 	: out STD_LOGIC;
		o_led_cafe_leite		: out STD_LOGIC;
		o_led_moca		 	 	: out STD_LOGIC;
		o_led_tamanho		 	: out STD_LOGIC;
		o_led_acucar		 	: out STD_LOGIC;
		o_sel						: out	STD_LOGIC_VECTOR (1 downto 0);
		o_valve_cafe_en		: out STD_LOGIC;
		o_count_cafe			: out integer;
		o_valve_leite_en		: out STD_LOGIC;
		o_count_leite			: out integer;
		o_valve_moca_en		: out STD_LOGIC;
		o_count_moca			: out integer;
		o_valve_acucar_en		: out STD_LOGIC;
		o_count_acucar			: out integer;
		o_valve_agua_en		: out STD_LOGIC;
		o_count_agua			: out integer;
		o_timer_done_en		: out STD_LOGIC;
		o_count_done			: out integer
		
	);
end maquina_de_cafe;


architecture Behavorial of maquina_de_cafe is
	-- sinais internos
	-- sinais maquina de estados
	type w_tipo_estados is (st_idle, st_preparando, st_done); --st_repo
	signal w_estado 				: w_tipo_estados;

	
begin
	--- MAQUINA DE ESTADOS ---
	process(i_clk, i_reset)
		-- variáveis reservatorios
		--variable qtd_cafe 			: integer 	:= 10;
		--variable qtd_leite 			: integer	:= 10;
		--variable qtd_chocolate		: integer	:= 10;
		begin
			if (i_reset = '1') then
				w_estado <= st_idle;
			--end if;
			elsif rising_edge(i_clk) then
				case w_estado is
					--- IDLE ---
					when st_idle =>
						-- setar todas saidas para 'zero'
						o_led_cafe 			<= '0';
						o_led_cafe_leite 	<= '0';
						o_led_moca			<= '0';
						o_led_tamanho		<= '0';
						o_led_acucar		<= '0';
						o_sel 				<= "00";
						o_valve_cafe_en	<= '0';
						o_count_cafe			<= 0;
						o_valve_leite_en		<= '0';
						o_count_leite			<= 0;
						o_valve_moca_en		<= '0';
						o_count_moca			<= 0;
						o_valve_acucar_en		<= '0';
						o_count_acucar			<= 0;
						o_valve_agua_en		<= '0';
						o_count_agua			<= 0;
						o_timer_done_en		<= '0';
						o_count_done			<= 0;
						
						
						if (i_cafe = '1' and i_cafe_leite = '0' and i_moca = '0') then -- cafe
							o_led_cafe <= '1';
							if (i_tamanho = '0' and i_acucar = '0') then -- pequeno sem açucar
								o_led_tamanho <= '0';
								o_led_acucar <= '0';

							elsif (i_tamanho = '0' and i_acucar = '1') then -- pequeno com açucar
								o_led_tamanho <= '0';
								o_led_acucar <= '1';

							elsif (i_tamanho = '1' and i_acucar = '0') then -- grande sem açucar
								o_led_tamanho <= '1';
								o_led_acucar <= '0';

							else -- grande com açucar
								o_led_tamanho <= '1';
								o_led_acucar <= '1';

							end if;
								
						elsif (i_cafe = '0' and i_cafe_leite = '1' and i_moca = '0') then -- cafe com leite
							o_led_cafe_leite <= '1';
							if (i_tamanho = '0' and i_acucar = '0') then -- pequeno sem açucar
								o_led_tamanho <= '0';
								o_led_acucar <= '0';

							elsif (i_tamanho = '0' and i_acucar = '1') then -- pequeno com açucar
								o_led_tamanho <= '0';
								o_led_acucar <= '1';

							elsif (i_tamanho = '1' and i_acucar = '0') then -- grande sem açucar
								o_led_tamanho <= '1';
								o_led_acucar <= '0';

							else -- grande com açucar
								o_led_tamanho <= '1';
								o_led_acucar <= '1';

							end if;
							
						elsif (i_cafe = '0' and i_cafe_leite = '0' and i_moca = '1') then -- mocca
							o_led_moca <= '1';
							if (i_tamanho = '0' and i_acucar = '0') then -- pequeno sem açucar
								o_led_tamanho <= '0';
								o_led_acucar <= '0';

							elsif (i_tamanho = '0' and i_acucar = '1') then -- pequeno com açucar
								o_led_tamanho <= '0';
								o_led_acucar <= '1';

							elsif (i_tamanho = '1' and i_acucar = '0') then -- grande sem açucar
								o_led_tamanho <= '1';
								o_led_acucar <= '0';

							else -- grande com açucar
								o_led_tamanho <= '1';
								o_led_acucar <= '1';

							end if;
						end if;
						if (i_start = '1') then
							w_estado <= st_preparando; -- idle -> preparando
						else
							w_estado <= st_idle; -- idle -> idle
						end if;
					
					--- PREPARANDO ---
					when st_preparando =>
						o_sel <= "01";
						-- CAFE --
						if (i_cafe = '1') then
							if (i_tamanho = '0') then
								-- setar timer p/ 5 sec
								-- descontar conteiners
								o_valve_cafe_en <= '1';
								o_count_cafe 	 <= 1;	
								if (i_valve_cafe_end = '1') then
									o_valve_cafe_en <= '0';
								end if;
								o_valve_agua_en <= '1';
								o_count_agua	 <= 5;
								if (i_valve_agua_end ='1') then
									o_valve_agua_en <= '0';
								end if;
							else
								-- setar timer p/ 10 sec
								-- descontar conteiners
								o_valve_cafe_en <= '1';
								o_count_cafe 	 <= 2;	
								if (i_valve_cafe_end = '1') then
									o_valve_cafe_en <= '0';
								end if;
								o_valve_agua_en <= '1';
								o_count_agua	 <= 10;
								if (i_valve_agua_end ='1') then
									o_valve_agua_en <= '0';
								end if;
							end if;
							if (i_acucar = '1') then
								if (i_tamanho = '0') then
									o_valve_acucar_en <= '1';
									o_count_acucar 	<= 1;	
									if (i_valve_acucar_end = '1') then
										o_valve_acucar_en <= '0';
									end if;
								else
									o_valve_acucar_en <= '1';
									o_count_acucar 	<= 2;	
									if (i_valve_acucar_end = '1') then
										o_valve_acucar_en <= '0';
									end if;
								end if;
							end if;
							w_estado 	<= st_done;
						end if;

						-- CAFE C/ LEITE --
						if (i_cafe_leite = '1') then
							if (i_tamanho = '0') then
								-- setar timer p/ 5 sec
								-- descontar conteiners
								o_valve_cafe_en <= '1';
								o_count_cafe 	 <= 1;	
								if (i_valve_cafe_end = '1') then
									o_valve_cafe_en <= '0';
								end if;
								o_valve_leite_en <= '1';
								o_count_leite 	 <= 1;	
								if (i_valve_leite_end = '1') then
									o_valve_leite_en <= '0';
								end if;
								o_valve_agua_en <= '1';
								o_count_agua	 <= 5;
								if (i_valve_agua_end ='1') then
									o_valve_agua_en <= '0';
								end if;
							else
								-- setar timer p/ 10 sec
								-- descontar conteiners
								o_valve_cafe_en <= '1';
								o_count_cafe 	 <= 2;	
								if (i_valve_cafe_end = '1') then
									o_valve_cafe_en <= '0';
								end if;
								o_valve_leite_en <= '1';
								o_count_leite 	 <= 2;	
								if (i_valve_leite_end = '1') then
									o_valve_leite_en <= '0';
								end if;
								o_valve_agua_en <= '1';
								o_count_agua	 <= 10;
								if (i_valve_agua_end ='1') then
									o_valve_agua_en <= '0';
								end if;
							end if;
							if (i_acucar = '1') then
								if (i_tamanho = '0') then
									o_valve_acucar_en <= '1';
									o_count_acucar 	<= 1;	
									if (i_valve_acucar_end = '1') then
										o_valve_acucar_en <= '0';
									end if;
								else
									o_valve_acucar_en <= '1';
									o_count_acucar 	<= 2;	
									if (i_valve_acucar_end = '1') then
										o_valve_acucar_en <= '0';
									end if;
								end if;
							end if;
							w_estado 	<= st_done;
						end if;

						-- MOCA --
						if (i_moca = '1') then
							if (i_tamanho = '0') then
								-- setar timer p/ 5 sec
								-- descontar conteiners
								o_valve_cafe_en <= '1';
								o_count_cafe 	 <= 1;	
								if (i_valve_cafe_end = '1') then
									o_valve_cafe_en <= '0';
								end if;
								o_valve_leite_en <= '1';
								o_count_leite 	 <= 1;	
								if (i_valve_leite_end = '1') then
									o_valve_leite_en <= '0';
								end if;
								o_valve_moca_en <= '1';
								o_count_moca 	 <= 1;	
								if (i_valve_moca_end = '1') then
									o_valve_moca_en <= '0';
								end if;
								o_valve_agua_en <= '1';
								o_count_agua	 <= 5;
								if (i_valve_agua_end ='1') then
									o_valve_agua_en <= '0';
								end if;
							else
								-- setar timer p/ 10 sec
								-- descontar conteiners
								o_valve_cafe_en <= '1';
								o_count_cafe 	 <= 2;	
								if (i_valve_cafe_end = '1') then
									o_valve_cafe_en <= '0';
								end if;
								o_valve_leite_en <= '1';
								o_count_leite 	 <= 2;	
								if (i_valve_leite_end = '1') then
									o_valve_leite_en <= '0';
								end if;
								o_valve_moca_en <= '1';
								o_count_moca 	 <= 2;	
								if (i_valve_moca_end = '1') then
									o_valve_moca_en <= '0';
								end if;
								o_valve_agua_en <= '1';
								o_count_agua	 <= 10;
								if (i_valve_agua_end ='1') then
									o_valve_agua_en <= '0';
								end if;
							end if;
							if (i_acucar = '1') then
								if (i_tamanho = '0') then
									o_valve_acucar_en <= '1';
									o_count_acucar 	<= 1;	
									if (i_valve_acucar_end = '1') then
										o_valve_acucar_en <= '0';
									end if;
								else
									o_valve_acucar_en <= '1';
									o_count_acucar 	<= 2;	
									if (i_valve_acucar_end = '1') then
										o_valve_acucar_en <= '0';
									end if;
								end if;
							end if;
							w_estado 	<= st_done;
						end if;

					--- PRONTO ---
					when st_done =>
						-- exibir done no display
						-- trocar de estado quando sinal do timer der ok
						-- trocar estado de waiting para idle
						o_timer_done_en <= '1';
						o_count_done 	 <= 5;	
						if (i_timer_done_end = '1') then
							o_timer_done_en <= '0';
							w_estado <= st_idle;
						end if;
						
						
					--- REPOSIÇÂO ---
					
				end case;
			end if;
		end process;

end Behavorial;
