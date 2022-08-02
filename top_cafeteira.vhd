----- TOP -----

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;


entity top_cafeteira is
	port(
		-- entradas
		i_cafe 			 	: in STD_LOGIC;
		i_cafe_leite		: in STD_LOGIC;
		i_moca 			 	: in STD_LOGIC;
		i_tamanho		 	: in STD_LOGIC;
		i_acucar		 		: in STD_LOGIC;
		i_start			 	: in STD_LOGIC;
		i_clk			 		: in STD_LOGIC;
		i_reset			 	: in STD_LOGIC;
		
		-- saidas
		o_led_cafe		 	 	: out STD_LOGIC;
		o_led_cafe_leite		: out STD_LOGIC;
		o_led_moca		 	 	: out STD_LOGIC;
		o_led_tamanho		 	: out STD_LOGIC;
		o_led_acucar		 	: out STD_LOGIC;
		o_display0		: out std_logic_vector (6 downto 0);
		o_display1		: out std_logic_vector (6 downto 0);
		o_display2		: out std_logic_vector (6 downto 0);
		o_display3		: out std_logic_vector (6 downto 0)
		
	);
end top_cafeteira;

architecture Behavorial of top_cafeteira is
	
	----- COMPONENTES -----
	--- PLL ---
	component PLL_INTEL
	PORT
	(
		areset		: IN STD_LOGIC  := '0';
		inclk0		: IN STD_LOGIC  := '0';
		c0				: OUT STD_LOGIC ;
		locked		: OUT STD_LOGIC 
	);
	end component;
	
	--- MAQUINA DE CAFE ---
	component maquina_de_cafe is
	port(
		-- entradas
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
	end component;
	
	--- VALVULA ---
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
	
	--- DISPLAY ---
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
	
	----- SINAIS -----
	--- CLOCK/RESET ---
	signal w_CLK			: std_logic;
	signal w_RST			: std_logic;
	signal w_LOCKED 		: STD_LOGIC;
	
	--- VALVULA CAFE ---
	signal w_valve_cafe_en 	: std_logic;
	signal w_count_cafe 		: integer;
	signal w_valve_cafe_end	: std_logic;
	
	--- VALVULA LEITE ---
	signal w_valve_leite_en 	: std_logic;
	signal w_count_leite 		: integer;
	signal w_valve_leite_end	: std_logic;
	
	--- VALVULA CHOCO ---
	signal w_valve_choco_en 	: std_logic;
	signal w_count_choco 		: integer;
	signal w_valve_choco_end	: std_logic;
	
	--- VALVULA AÇUCAR ---
	signal w_valve_acucar_en 	: std_logic;
	signal w_count_acucar 		: integer;
	signal w_valve_acucar_end	: std_logic;
	
	--- VALVULA AGUA ---
	signal w_valve_agua_en 	: std_logic;
	signal w_count_agua 		: integer;
	signal w_valve_agua_end	: std_logic;
	
	--- TIMER DONE ---
	signal w_timer_done_en 	: std_logic;
	signal w_count_done 		: integer;
	signal w_timer_done_end	: std_logic;
	
	
	--- DISPLAY ---
	signal w_sel			: std_logic_vector (1 downto 0);
	---signal w_display0		: std_logic_vector (6 downto 0);
	---signal w_display1		: std_logic_vector (6 downto 0);
	---signal w_display2		: std_logic_vector (6 downto 0);
	---signal w_display3		: std_logic_vector (6 downto 0);

begin
	---- INICIALIZAÇÂO DOS COMPONENTES -----
	----- PLL -----
	u01 : PLL_INTEL
	port map
	(
		areset	=> not i_reset, -- reset btn em pull up
		inclk0	=> i_clk,
		c0			=> w_clk,
		locked	=> w_locked
	);
	w_rst			<= not w_locked;
	
	----- MAQUINA DE CAFE -----
	u02 : maquina_de_cafe
	port map
	(
		-- entradas
		i_cafe 			 	=> i_cafe,
		i_cafe_leite		=> i_cafe_leite,
		i_moca 			 	=> i_moca,
		i_tamanho		 	=> i_tamanho,
		i_acucar		 		=> i_acucar,
		i_start			 	=> not i_start, -- start btn em pull up
		i_clk			 		=> w_clk,
		i_reset			 	=> w_rst,
		i_valve_cafe_end	=> w_valve_cafe_end,
		i_valve_leite_end => w_valve_leite_end,
		i_valve_moca_end	=> w_valve_choco_end,
		i_valve_acucar_end => w_valve_acucar_end,
		i_valve_agua_end 	=> w_valve_agua_end,
		i_timer_done_end	=> w_timer_done_end,
		
		-- saidas
		o_led_cafe		 	 	=> o_led_cafe,
		o_led_cafe_leite		=> o_led_cafe_leite,
		o_led_moca		 	 	=> o_led_moca,
		o_led_tamanho		 	=> o_led_tamanho,
		o_led_acucar		 	=> o_led_acucar,
		o_sel						=> w_sel,
		o_valve_cafe_en		=> w_valve_cafe_en,
		o_count_cafe			=> w_count_cafe,
		o_valve_leite_en		=> w_valve_leite_en,
		o_count_leite			=> w_count_leite,
		o_valve_moca_en		=> w_valve_choco_en,
		o_count_moca			=> w_count_choco,
		o_valve_acucar_en		=> w_valve_acucar_en,
		o_count_acucar			=> w_count_acucar,
		o_valve_agua_en		=> w_valve_agua_en,
		o_count_agua			=> w_count_agua,
		o_timer_done_en		=> w_timer_done_en,
		o_count_done			=> w_count_done

	);
	
	----- VALVULAS -----
	--- CAFE ---
	u03 : valvula
	port map
	(
		-- entradas
		i_clk			=> w_clk,
		i_reset		=> w_rst,
		i_valve_en	=> w_valve_cafe_en,
		i_count		=> w_count_cafe,
		
		--saidas
		o_valve_end		=> w_valve_cafe_end
	);
	
	--- LEITE ---
	u04 : valvula
	port map
	(
		-- entradas
		i_clk			=> w_clk,
		i_reset		=> w_rst,
		i_valve_en	=> w_valve_leite_en,
		i_count		=> w_count_leite,
		
		--saidas
		o_valve_end		=> w_valve_leite_end
	);
	
	--- CHOCO ---
	u05 : valvula
	port map
	(
		-- entradas
		i_clk			=> w_clk,
		i_reset		=> w_rst,
		i_valve_en	=> w_valve_choco_en,
		i_count		=> w_count_choco,
		
		--saidas
		o_valve_end		=> w_valve_choco_end
	);
	
	--- AÇUCAR ---
	u06 : valvula
	port map
	(
		-- entradas
		i_clk			=> w_clk,
		i_reset		=> w_rst,
		i_valve_en	=> w_valve_acucar_en,
		i_count		=> w_count_acucar,
		
		--saidas
		o_valve_end		=> w_valve_acucar_end
	);
	
	--- AGUA ---
	u07 : valvula
	port map
	(
		-- entradas
		i_clk			=> w_clk,
		i_reset		=> w_rst,
		i_valve_en	=> w_valve_agua_en,
		i_count		=> w_count_agua,
		
		--saidas
		o_valve_end		=> w_valve_agua_end
	);
	
	--- TIMER --- Usando valvula como timer para o st_done
	u08 : valvula
	port map
	(
		-- entradas
		i_clk			=> w_clk,
		i_reset		=> w_rst,
		i_valve_en	=> w_timer_done_en,
		i_count		=> w_count_done,
		
		--saidas
		o_valve_end		=> w_timer_done_end
	);
	
	---- Display ----
	u09 : display
	port map
	(
		-- entradas
		i_sel		=> w_sel,
		i_reset	=> w_rst,
		
		-- saidas
		o_display0	=> o_display0,
		o_display1	=> o_display1,
		o_display2	=> o_display2,
		o_display3	=> o_display3
	);

end Behavorial;
