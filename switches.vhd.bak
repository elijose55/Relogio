-- A library clause declares a name as a library.  It 
-- does not create the library; it simply forward declares 
-- it. 
library ieee;
use ieee.std_logic_1164.all;

entity switches is
    generic (
        quantidadeChaves    : natural := 2
    );
    port
    (
        SW   : IN STD_LOGIC_VECTOR(quantidadeChaves-1 downto 0);
        saida           : OUT STD_LOGIC_VECTOR(quantidadeChaves-1 downto 0)
    );
end entity;


-- Library Clause(s) (optional)
-- Use Clause(s) (optional)
architecture swArch of switches is

	--signal sig_sw : std_logic_vector(DATA_SIZE-1 downto 0);
	
begin
	
	--sig_sw <= ( std_logic_vector(to_unsigned(0, sw_out'length - sw_in'length)) & sw_in);
	
	--sw_out <= sig_sw when (enable = '1') else (others=>'Z');
	
	saida <= SW;  -- saida de um vetor de 2 bits (dois primeiros switches)
	
end swArch;
