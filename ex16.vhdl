library ieee;
use ieee.std_logic_1164.all;



entity DFF is
	port(
	D,R: in std_logic;
	CLK: in std_logic;
	Q: out std_logic);
end DFF;

--D flip flop
--process is executed every time when there are changes of any of signals D or CLK
architecture dff1 of DFF is
begin 
	dffproc: process(D,R,CLK) is
	begin
		if R = '1' then
			Q <= '0';
		else 
			if(falling_edge(CLK)) then
				Q <= D;
			end if;
		end if;
	end process dffproc;
end dff1;


