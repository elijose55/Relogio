-- Design de Computadores
-- developed by Pedro Azambuja e Eli Jose
-- file: display7Seg.vhd
-- date: 08/10/2019

library IEEE;
use ieee.std_logic_1164.all;

entity display7Seg is
    port
    (
        -- Input ports
        dadoHex : in  std_logic_vector(3 downto 0);
		  		  habilita : in std_logic;
			clk : in STD_LOGIC;
        -- Output ports
        saida7seg : out std_logic_vector(6 downto 0)  -- := (others => '1')
    );
end entity;

architecture comportamento of display7Seg is
   --
   --       0
   --      ---
   --     |   |
   --    5|   |1
   --     | 6 |
   --      ---
   --     |   |
   --    4|   |2
   --     |   |
   --      ---
   --       3
   --
    signal rascSaida7seg: std_logic_vector(6 downto 0);
begin
    rascSaida7seg <=    "1000000" when dadoHex="0000" else ---0 
                            "1111001" when dadoHex="0001" else ---1
                            "0100100" when dadoHex="0010" else ---2
                            "0110000" when dadoHex="0011" else ---3
                            "0011001" when dadoHex="0100" else ---4
                            "0010010" when dadoHex="0101" else ---5
                            "0000010" when dadoHex="0110" else ---6
                            "1111000" when dadoHex="0111" else ---7
                            "0000000" when dadoHex="1000" else ---8
                            "0010000" when dadoHex="1001" else ---9
                            "0001000" when dadoHex="1010" else ---A
                            "0000011" when dadoHex="1011" else ---B
                            "1000110" when dadoHex="1100" else ---C
                            "0111111" when dadoHex="1110" else --- traco(-)
                            "0001100" when dadoHex="1111" else ---P
                            "1111111"; -- Apaga todos segmentos.

	 process (clk)
		begin 
			if (rising_edge(clk)) then -- Clk para registrar o estado do display
				if(habilita) then
					saida7seg <= rascSaida7seg;
			end if;
			end if;
		end process;
end architecture;