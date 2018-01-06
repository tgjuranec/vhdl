entity func is
	port(
	A, B, C : in std_logic;
	F_OUT: out std_logic);
end func;

architecture func1 of func is
begin
	func_proc: process(A,B,C) is
		variable temp: integer;
	begin
		if (A = '1' AND B = '0' and C = '0' then
			F_OUT <= '1';
		elsif (B = '1' AND C = '1') then
			F_OUT <= '1';
		else 
			F_OUT <= '0';
		end if
	end process func_proc;
end func1;

