-- Design de Computadores
-- developed by Pedro Azambuja e Eli Jose
-- file: baseTempo.vhd
-- date: date: 08/10/2019
 LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity baseTempo is
	 generic(
	 larguraBarramentoDados: natural := 8;
	 divisor_normal: natural:= 50000000
	 );
    port(
        clk      :   in std_logic;
        sel : in std_logic_vector(1 downto 0);
        saida_clk :   out std_logic_vector(7 downto 0);
		  enable : in std_logic;
		  reset : in std_logic
        );
end entity;

architecture arch_baseTempo of baseTempo is
    signal tick : std_logic := '0';
    signal contador : integer range 0 to 100000000 := 0;
	 signal divisor : natural := 50000000;
begin
    -- chaves selecionam o divisor
	 divisor <= 25000000 when sel="00" else -- periodo normal
					10000000 when sel ="01" else -- 25 * mais rapido
					34228 when sel ="10" else -- passar 24 horas em 2 minutos
					10000 when sel = "11" else  25000000; -- ajuste de hora
    process(clk)
    begin
        if rising_edge(clk) then
					-- Comando reset
					if(reset = '1') then
						tick <= '0';
						contador <= 0;
						
	
					elsif contador >= divisor then
						 tick <= '1';
						 
					else
						 contador <= contador + 1;
						 tick <= '0';
			
			end if;
		  end if;
		  end process;
		
			saida_clk <= ("0000000" & tick) when enable = '1' else "00000000"; -- saida_clk = 00000001 quando passa um segundo no relogio
	
		
end architecture;