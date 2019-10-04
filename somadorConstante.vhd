library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 

entity somadorConstante is
	generic (
		larguraBarramentoDados		: natural := 8
	);
	port 
	(
		inSomador	   	: in std_logic_vector  (larguraBarramentoDados-1 downto 0);
		outSomador 			: out std_logic_vector (larguraBarramentoDados-1 downto 0)
	);

end entity;

architecture arc_somadorConstante of somadorConstante is
begin

	outSomador <= inSomador + 1;

end arc_somadorConstante;