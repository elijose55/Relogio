-- Design de Computadores
-- developed by Pedro Azambuja e Eli Jose
-- file: registerFlag.vhd
-- date: 08/10/2019


library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity registerFlag is
    port(
        clk     : in  STD_LOGIC;
        input     : in  STD_LOGIC;
        output    : out STD_LOGIC
    );
end entity;

architecture arch of registerFlag is
  signal toout : STD_LOGIC := '0';

begin
  process (clk) begin
    if rising_edge(clk) then
			-- Passa  a entrada para a saida a cada borda de subida do clock
        toout <= input;

     
    end if;
  end process;

  output <= toout;

	end architecture;