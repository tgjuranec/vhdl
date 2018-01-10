library ieee;
use ieee.std_logic_1164.all;



entity DFF is
	port(
	D: in std_logic;
	CLK: in std_logic;
	Q: out std_logic);
end DFF;

--D flip flop
--process is executed every time when there are changes of any of signals D or CLK
architecture dff1 of DFF is
begin 
	dffproc: process(D,CLK) is
	begin
		if (rising_edge(CLK)) then
			Q <= D;
		end if;
	end process dffproc;
end dff1;


