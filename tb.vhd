library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.all;


entity tb is
end entity;

architecture TB_arch of tb is
   component brent_kung_adder is
    	port(
         	A: in STD_LOGIC_VECTOR (15 downto 0);
	  	B: in STD_LOGIC_VECTOR (15 downto 0);
     		C: in std_logic;
     		D: out STD_LOGIC_VECTOR (15 downto 0);
	  	carry: out std_logic
        	);
	end component;
	
	
	
	

  	signal A, B, S: std_logic_vector(15 downto 0);
  	signal C, Cout: std_logic;
	
	begin
		
		process
		variable I, J: integer;
		begin
			
			I := 65535;
			J := 65535;
			A <= std_logic_vector(to_unsigned(I, 16));
			B <= std_logic_vector(to_unsigned(J, 16));
			C <= '0';
			wait for 1 ns;
			assert (to_integer(unsigned(Cout & S)) = (I + J)) report "Mismatch! case 1" severity error;
			wait for 5 ns;

			I := 65535;
			J := 65535;
			A <= std_logic_vector(to_unsigned(I, 16));
			B <= std_logic_vector(to_unsigned(J, 16));
			C <= '1';
			wait for 1 ns;
			assert (to_integer(unsigned(Cout & S)) = (I + J)) report "Mismatch! case 2" severity error;
			wait for 5 ns;

			I := 0;
			J := 0;
			A <= std_logic_vector(to_unsigned(I, 16));
			B <= std_logic_vector(to_unsigned(J, 16));
			C <= '0';
			wait for 1 ns;
			assert (to_integer(unsigned(Cout & S)) = (I + J)) report "Mismatch! case 3" severity error;
			wait for 5 ns;

			I := 2078;
			J := 5548;
			A <= std_logic_vector(to_unsigned(I, 16));
			B <= std_logic_vector(to_unsigned(J, 16));
			C <= '1';
			wait for 1 ns;
			assert (to_integer(unsigned(Cout & S)) = (I + J)) report "Mismatch! case 4" severity error;
			wait for 5 ns;

			I := 154;
			J := 256;
			A <= std_logic_vector(to_unsigned(I, 16));
			B <= std_logic_vector(to_unsigned(J, 16));
			C <= '0';
			wait for 1 ns;
			assert (to_integer(unsigned(Cout & S)) = (I + J)) report "Mismatch! case 5" severity error;
			wait for 5 ns;

			I := 248;
			J := 123;
			A <= std_logic_vector(to_unsigned(I, 16));
			B <= std_logic_vector(to_unsigned(J, 16));
			C <= '1';
			wait for 1 ns;
			assert (to_integer(unsigned(Cout & S)) = (I + J)) report "Mismatch! case 6" severity error;
			wait for 5 ns;

			I := 1;
			J := 1;
			A <= std_logic_vector(to_unsigned(I, 16));
			B <= std_logic_vector(to_unsigned(J, 16));
			C <= '0';
			wait for 1 ns;
			assert (to_integer(unsigned(Cout & S)) = (I + J)) report "Mismatch! case 7" severity error;
			wait for 5 ns;

			I := 80;
			J := 8;
			A <= std_logic_vector(to_unsigned(I, 16));
			B <= std_logic_vector(to_unsigned(J, 16));
			C <= '1';
			wait for 1 ns;
			assert (to_integer(unsigned(Cout & S)) = (I + J)) report "Mismatch! case 8" severity error;
			wait for 5 ns;

			I := 78;
			J := 12;
			A <= std_logic_vector(to_unsigned(I, 16));
			B <= std_logic_vector(to_unsigned(J, 16));
			C <= '0';
			wait for 1 ns;
			assert (to_integer(unsigned(Cout & S)) = (I + J)) report "Mismatch! case 9" severity error;
			wait for 5 ns;

			I := 85;
			J := 45;
			A <= std_logic_vector(to_unsigned(I, 16));
			B <= std_logic_vector(to_unsigned(J, 16));
			C <= '1';
			wait for 1 ns;
			assert (to_integer(unsigned(Cout & S)) = (I + J)) report "Mismatch! case 10" severity error;
			wait for 5 ns;
			wait;
		end process;

	dut: brent_kung_adder
		port map (A => A, B => B, C => C, D => S, carry=>Cout);
end TB_arch;
