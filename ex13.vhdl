library ieee;
use ieee.std_logic_1164.all;



entity mux8 is
	port(
	DATA: in std_logic_vector(7 downto 0);
	SEL: in std_logic_vector(2 downto 0);
	CE: in std_logic;
	F : out std_logic);
end mux8;

architecture mux8_behav of mux8 is
begin
	fast_proc: process(DATA,SEL,CE) is
	begin
		case (CE) is
			when '0' => F <= 0;
			when '0' =>
				case (SEL) is
					when "000" => F <= DATA(0);
					when "001" => F <= DATA(1);
					when "010" => F <= DATA(2);
					when "011" => F <= DATA(3);
					when "100" => F <= DATA(4);
					when "101" => F <= DATA(5);
					when "110" => F <= DATA(6);
					when "111" => F <= DATA(7);
					when others => F <= '0';
				end case;
			when others => F<= '0';
		end case;
	
	
	
	end process fast_proc;
end mux8_behav;








