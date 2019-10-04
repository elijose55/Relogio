library IEEE;
use ieee.std_logic_1164.all;

entity UC is
    port
    (
       opcode : in std_logic_vector(2 downto 0); -- opcode(da rom)
		 flagEqual : in std_logic; -- =1 se inA = inB
		 muxJMP : out std_logic; -- MUX que define o que entra no PC
		 wrReg : out std_logic; -- Write no banco de registradores
		 muxMain : out std_logic_vector(1 downto 0); -- Mux que define o dado que entra no banco de reg.
		 opUla : out std_logic_vector(2 downto 0); -- Funcao que a ULA deve fazer
		 RD : out std_logic; -- read decoder
		 WR : out std_logic -- write decoder
    );
end entity;

architecture UCarch of UC is

constant LOAD : std_logic_vector(2 downto 0) := "000";
constant CMP : std_logic_vector(2 downto 0) := "001";
constant MOV : std_logic_vector(2 downto 0) := "010";
constant ADD : std_logic_vector(2 downto 0) := "100";
constant STORE : std_logic_vector(2 downto 0) := "101";
constant JNE : std_logic_vector(2 downto 0) := "110";
constant JMP : std_logic_vector(2 downto 0) := "111";
	
begin

	muxJMP <= '1' when opcode = JMP else
				'0';
				
	wrReg <= '1' when opcode=LOAD else
					 '0';
	
	opUla <= "000" when opcode=ADD OR opcode=ADD else
				  --"001" when opcode= else
				  --"011" when opcode= OR opcode= else
				  --"010" when opcode= else
				  "111";
		
			  
	RD <= '1' when opcode=MOV else
					  '0';
	
	WR <= '1' when opcode=LOAD else
						'0';
						
	muxMain <= "00" when opcode=ADD else
					 "11";
					 
end architecture;