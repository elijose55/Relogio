library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity ULA is
	generic (
		larguraBarramentoDados		: natural := 8
	);
	port 
	(
		inA	: in std_logic_vector	(larguraBarramentoDados-1 downto 0);
		inB	: in std_logic_vector	(larguraBarramentoDados-1 downto 0);
		sel	: in std_logic_vector	(2 downto 0);
		outULA	: out std_logic_vector	(larguraBarramentoDados-1 downto 0);
		flagEqual : out std_logic
	);

end entity;

architecture arc_ula of ULA is
	signal equal : std_logic;
begin
	equal <= '1' when (to_integer(unsigned(inA AND inB)) > 0) else '0'; -- Compara se inA = inB

	OUT_ULA : with sel select 
	
		outULA <= std_logic_vector(unsigned(inA) + unsigned(inB)) when "000", -- soma A + B
					inA when "011", -- passa A
					inB when "010", -- passa B
					(others => '0') when others;  -- nao faz nada
					
	OUT_EQUAL : with sel select
	
		flagEqual <= equal when "001", --seta flag quand A = B
		'0' when others;
		
end arc_ula;