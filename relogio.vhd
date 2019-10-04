-- Design de Computadores
-- file: relogio.vhd
-- date: 20/09/2019

library ieee;
use ieee.std_logic_1164.all;

entity relogio is
	generic (
		larguraBarramentoEnderecos	: natural := 8;
		larguraBarramentoDados		: natural := 8;
		quantidadeChaves    		: natural := 18;
		quantidadeDisplays			: natural := 8
    );
	port
    (
		CLK : IN STD_LOGIC;
		-- CHAVES
        SW : IN STD_LOGIC_VECTOR(quantidadeChaves-1 downto 0);
		-- DISPLAYS 7 SEG
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : OUT STD_LOGIC_VECTOR(6 downto 0)
    );
end entity;

architecture estrutural of relogio is

	-- Sinais de barramentos
	signal barramentoEnderecos		: STD_LOGIC_VECTOR(larguraBarramentoEnderecos-1 DOWNTO 0);
	signal barramentoDadosEntrada	: STD_LOGIC_VECTOR(larguraBarramentoDados-1 DOWNTO 0);
	signal barramentoDadosSaida		: STD_LOGIC_VECTOR(larguraBarramentoDados-1 DOWNTO 0);
	
	-- Sinais de controle RD/WR
	signal readEnable				: STD_LOGIC;
	signal writeEnable				: STD_LOGIC;

	-- Sinais de habilitacao dos componentes
	signal habilitaDisplay			: STD_LOGIC_VECTOR(quantidadeDisplays-1 DOWNTO 0);
	signal habilitaChaves			: STD_LOGIC;
	signal habilitaBaseTempo		: STD_LOGIC;
	-- Sinais auxiliares
	signal saidaDivisorGenerico		: STD_LOGIC;

begin

	-- Instanciação da CPU
	CPU : entity work.cpu 
	port map
	(
		clk						=> clk,
        barramentoDadosEntrada	=> barramentoDadosEntrada,
        barramentoEnderecos		=> barramentoEnderecos,
		barramentoDadosSaida	=> barramentoDadosSaida,
		readEnable				=> readEnable,
		writeEnable				=> writeEnable
	);
	
	-- Instanciação do Decodificador de Endereços
		-- A entidade do decodificador fica a criterio do grupo
		-- o portmap a seguir serve como exemplo
	DE : entity work.decodificador_enderecos 
	port map
	(
		endereco		=> endereco,
		readEnable		=> readEnable,
		writeEnable		=> writeEnable,
		habilitaDisplay	=> habilitaDisplay,
		habilitaLedsRed	=> habilitaLedsRed
		-- ...
	);

	-- Instanciação do componente Divisor Genérico
		-- Componente da composição da Base de Tempo
		-- link: https://insper.blackboard.com/bbcswebdav/pid-622259-dt-content-rid-3999720_2/courses/201962.GRENGCOM_201561_0004.DESIGNCOMP_6ENGCOMPA/Atividades/vhdl/_componentesVHDL.html#exemplo-de-c%C3%B3digo-para-o-divisor
	BASE_TEMPO : entity work.divisorGenerico 
	port map
	(
		clk				=> clk,
		saida_clk		=> saidaDivisorGenerico
	);

	-- Instanciação de cada Display
	DISPLAY0 : entity work.display7Seg 
	port map
	(
		clk			=> clk,
		dadoHex		=> barramentoDadosEntrada,
		habilita	=> habilitaDisplay(0),
		saida7seg	=> HEX0
	);

	DISPLAY1 : entity work.display7Seg 
	port map
	(
		clk			=> clk,
		dadoHex		=> barramentoDadosEntrada,
		habilita	=> habilitaDisplay(1),
		saida7seg	=> HEX1
	);

	--...


	-- Instanciação das Chaves
	CHAVES : entity work.chaves 
	generic map (
        quantidadeChaves	=> quantidadeChaves
    );
	port map
	(
		habilita	=> habilitaChaves(quantidadeChaves-1 DOWNTO 0),
		saidaChaves	=> SW(quantidadeChaves-1 DOWNTO 0)
	);


	-- Completar com a instanciação de demais 
	-- componentes necessários

end architecture;
