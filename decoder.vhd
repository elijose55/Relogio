library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decoder is
    Generic(
    -- Tamanho dos enderecamentos do decoder
		larguraEndDecoder: natural := 8
	 );
	 port
    (
    -- Endereco de entrada
		 endereco : in std_logic_vector((larguraEndDecoder-1) downto 0);
		 --readEnable : in std_logic;
		 --writeEnable : in std_logic;
		 
		 -- Endereca/Habilita os displays de cada um dos digitos do horario
		 LCD_US, LCD_DS, LCD_UM, LCD_DM, LCD_UH, LCD_DH  : out std_logic;

		 -- Endereca o registrador da Base de Tempo para ler a passagem de 1 segundo
		 IO_TEMPO  : out std_logic;

		 -- Endereca o registrado da Base de Tempo para limpar a saida apos a confirmacao da passagem de um segundo
		 CLEAR_TEMPO  : out std_logic
    );
end entity;

architecture Decoder_arch of decoder is

-- Enderecamento de cada periferico em bits
constant IO : std_logic_vector((larguraEndDecoder-1) := "00000000";		-- Leitura da base de tempo
constant CLEAR : std_logic_vector((larguraEndDecoder-1) := "00000001";	-- Reset da base de tempo
constant US : std_logic_vector((larguraEndDecoder-1) := "00000011";		-- Display da Unidade de segundo
constant DS : std_logic_vector((larguraEndDecoder-1) := "00000100";		-- Display da Dezena de segundo
constant UM : std_logic_vector((larguraEndDecoder-1) := "00000101";		-- Display da Unidade de minuto
constant UM : std_logic_vector((larguraEndDecoder-1) := "00000110";		-- Display da Dezena de minuto
constant UH : std_logic_vector((larguraEndDecoder-1) := "00000111";		-- Display da Unidade de hora
constant DH : std_logic_vector((larguraEndDecoder-1) := "00001000";		-- Display da Dezena de hora


begin

		--IO_TEMPO <= '1' when (endereco = IO AND readEnable = '1') else '0';

		-- Atribuicao de cada endereco a seu respectivo periferico a ser ativado
		IO_TEMPO <= '1' when (endereco = IO) else '0';
		CLEAR_TEMPO <= '1' when (endereco = CLEAR) else '0';
		LCD_US <= '1' when (endereco = US) else '0';
		LCD_DS <= '1' when (endereco = DS) else '0';
		LCD_UM <= '1' when (endereco = UM) else '0';
		LCD_DM <= '1' when (endereco = DM) else '0';
		LCD_UH <= '1' when (endereco = UH) else '0';
		LCD_DH <= '1' when (endereco = DH) else '0';
			
end architecture;