library ieee;
use ieee.std_logic_1164.all;



entity TFF is
	port(
	T,S: in std_logic;
	CLK: in std_logic;
	Q: out std_logic);
end TFF;

--D flip flop
--process is executed every time when there are changes of any of signals D or CLK
architecture tff1 of TFF is
	signal QOLD: std_logic;
begin 
	QOLD <= Q;
	dffproc: process(T,S,CLK) is
	begin
		if(S = '0') then
			Q <= '1';
		else
			if(falling_edge(CLK)) then
				if(D = '1') then
					Q <= NOT(QOLD);
				else
					Q <= QOLD;
				end if;
			end if;
		end if;
	end process dffproc;
end tff1;


