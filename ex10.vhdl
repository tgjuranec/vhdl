library ieee;
use ieee.std_logic_1164.all;



entity mux8 is
	port(
	DATA: in std_logic_vector(7 downto 0);
	SEL: in std_logic_vector(2 downto 0);
	F : out std_logic);
end mux8;

architecture mux8_behav of mux8 is
begin
	fast_proc: process(DATA,SEL) is
	begin
		if SEL = "000" then
			F <= DATA(0);
		elsif SEL = "001" then
			F <= DATA(1);
		elsif SEL = "010" then
			F <= DATA(2);
		elsif SEL = "011" then
			F <= DATA(3);
		elsif SEL = "100" then
			F <= DATA(4);
		elsif SEL = "101" then
			F <= DATA(5);
		elsif SEL = "110" then
			F <= DATA(6);
		elsif SEL = "111" then
			F <= DATA(7);
		else
			F <= '0';
		end if;
	end process fast_proc;
end mux8_behav;








