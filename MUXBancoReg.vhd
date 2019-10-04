library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity muxBancoReg is
	generic (
		larguraBarramentoDados		: natural := 8
	);
	port 
	(
		inA	: in std_logic_vector	(larguraBarramentoDados-1 downto 0);
		inB	: in std_logic_vector	(larguraBarramentoDados-1 downto 0);
		inC	: in std_logic_vector	(larguraBarramentoDados-1 downto 0);
		sel	: in std_logic_vector (1 downto 0);
		outMux	: out std_logic_vector	(larguraBarramentoDados-1 downto 0)
	);

end entity;

architecture comportamentoMuxBancoReg of muxBancoReg is
begin

	with sel select 
		outMux <= inA when "00",
				  inB when "01",
				  inC when "10",
				  (others => '0') when others;


end architecture;