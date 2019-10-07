LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity baseTempo is
	 generic(
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
    signal contador : integer range 0 to divisor_normal+1 := 0;
	 signal divisor: integer range 0 to divisor_normal+1;
	 signal completa_sinal : std_logic_vector(6 downto 0) := "0000000";
begin
    -- chaves selecionam o divisor
	 divisor <= divisor_normal when sel="00" else
					25000000 when sel ="01" else
					10000000 when sel ="10" else
					69444 when sel = "11"; -- passar 24 horas em 2 minutos
    process(clk)
    begin
        if rising_edge(clk) then
		  if reset then 
				tick <= '0';
			else
            if contador = divisor then
                contador <= 0;
                tick <= not tick;
            else
                contador <= contador + 1;
            end if;
			end if;
        end if;
	end process;
		
	saida_clk <= completa_sinal & tick; -- saida_clk = 00000001 quando passa um segundo no relogio
end architecture;