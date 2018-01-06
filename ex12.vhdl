library ieee;
use ieee.std_logic_1164.all;

entity func is
	port(
	A,B,C: in std_logic;
	F: out std_logic);
end func;


architecture funccase of func is
begin
	caseproc: process(A,B,C) is
	begin
		case ((A AND NOT(B AND C)) OR (B AND C)) is
			when '1' =>
				F <= '1';
			when '0' =>
				F <= '0';
			when others =>
				F <= '0';
		end case;
	end process caseproc;
end funccase;



architecture funccase2 of func is
	signal ABC : std_logic_vector(2 downto 0);
begin
	ABC <= A & B & C;
	caseproc: process(ABC) is
	begin 
		case (ABC) is
			when "100" => 
				F <= '1';
			when "011" => 
				F <= '1';
			when "111" => 
				F <= '1';
			when others 
				F<= '0';
		end case;
	end process caseproc;
end funccase2;


