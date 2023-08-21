library IEEE;
use IEEE.std_logic_1164.all;
--------------------------------and ---------------------------------
entity gate3 is
port(A,B:in std_logic;
      pd: out std_logic);
end gate3;
architecture obv1 of gate3 is
begin
pd<= A AND B AFTER 48 ps;
end  obv1;

library IEEE;
use IEEE.std_logic_1164.all;
-----------------------------XOR Gate -----------------------------
entity XOR2 is
port(A,B:in std_logic;
      uneq: out std_logic);
end XOR2;
architecture obv2 of XOR2 is
begin
uneq <= A XOR B AFTER 66 ps;
end  obv2;
------------------------ a+b.c-----------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity gate1 is
port(A,B,C:in std_logic;
     abc: out std_logic);
end  gate1;
architecture obv3 of gate1 is
begin
abc<= (A OR( B AND C)) AFTER 76 ps;
end  obv3;
-------------------a.b + c(a+b) ----------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity gate2 is
port(A,B,C:in std_logic;
      cout: out std_logic);
end  gate2;
architecture obv4 of gate2 is
begin
cout<= (A AND B) OR (C AND (A OR B)) AFTER 76 ps;
end  obv4;
























library IEEE;
use IEEE.std_logic_1164.all;
library work;
--use work.all;
--------------------------------and ---------------------------------

--------------------------componet declaration----------------------------------
--A <= "1010100101110011";
--B <= "0001111101010101";
--Cin <= '1';

	-------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity brent_kung_adder is
port(A: in STD_LOGIC_VECTOR (15 downto 0);
	B: in STD_LOGIC_VECTOR (15 downto 0);
     C: in std_logic;
     D: out STD_LOGIC_VECTOR (15 downto 0);
	  carry: out std_logic);
end brent_kung_adder;

-----------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------

architecture obvious of brent_kung_adder is

	component gate3 is
	port(A,B:in std_logic;
      pd: out std_logic);
	end component gate3;


	component XOR2 is
	port(A,B:in std_logic;
      uneq: out std_logic);
	end component XOR2;


	component gate1 is
	port(A,B,C:in std_logic;
      abc: out std_logic);
	end component gate1;

	component gate2 is
	port(A,B,C:in std_logic;
      cout: out std_logic);
	end component gate2;
signal p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,
g0,g1,g2,g3,g4,g5,g6,g7,g8,g9,g10,g11,g12,g13,g14,g15,g30,g31,g32,g33,g40,g41,g50,
p20,p21,p22,p23,p24,p25,p26,p27,g20,g21,g22,g23,g24,g25,g26,g27,p30,p31,p32,p33,p40,p41,p50,
C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15
:std_logic;
begin



pp0: XOR2 port map( A=> A(0), B=>B(0),uneq=>p0);
gg0: gate2 port map( A=> A(0), B=>B(0),C=>C,cout=>g0);

pp1: XOR2 port map( A=> A(1), B=>B(1),uneq=>p1);
gg1: gate3 port map( A=> A(1), B=>B(1),pd=>g1);

pp2: XOR2 port map( A=> A(2), B=>B(2),uneq=>p2);
gg2: gate3 port map( A=> A(2), B=>B(2),pd=>g2);

pp3: XOR2 port map( A=> A(3), B=>B(3),uneq=>p3);
gg3: gate3 port map( A=> A(3), B=>B(3),pd=>g3);

pp4: XOR2 port map( A=> A(4), B=>B(4),uneq=>p4);
gg4: gate3 port map( A=> A(4), B=>B(4),pd=>g4);

pp5: XOR2 port map( A=> A(5), B=>B(5),uneq=>p5);
gg5: gate3 port map( A=> A(5), B=>B(5),pd=>g5);

pp6: XOR2 port map( A=> A(6), B=>B(6),uneq=>p6);
gg6: gate3 port map( A=> A(6), B=>B(6),pd=>g6);

pp7: XOR2 port map( A=> A(7), B=>B(7),uneq=>p7);
gg7: gate3 port map( A=> A(7), B=>B(7),pd=>g7);

pp8: XOR2 port map( A=> A(8), B=>B(8),uneq=>p8);
gg8: gate3 port map( A=> A(8), B=>B(8),pd=>g8);

pp9: XOR2 port map( A=> A(9), B=>B(9),uneq=>p9);
gg9: gate3 port map( A=> A(9), B=>B(9),pd=>g9);

pp10: XOR2 port map( A=> A(10), B=>B(10),uneq=>p10);
gg10: gate3 port map( A=> A(10), B=>B(10),pd=>g10);

pp11: XOR2 port map( A=> A(11), B=>B(11),uneq=>p11);
gg11: gate3 port map( A=> A(11), B=>B(11),pd=>g11);

pp12: XOR2 port map( A=> A(12), B=>B(12),uneq=>p12);
gg12: gate3 port map( A=> A(12), B=>B(12),pd=>g12);

pp13: XOR2 port map( A=> A(13), B=>B(13),uneq=>p13);
gg13: gate3 port map( A=> A(13), B=>B(13),pd=>g13);

pp14: XOR2 port map( A=> A(14), B=>B(15),uneq=>p14);
gg14: gate3 port map( A=> A(14), B=>B(14),pd=>g14);

pp15: XOR2 port map( A=> A(15), B=>B(15),uneq=>p15);
gg15: gate3 port map( A=> A(15), B=>B(15),pd=>g15);

---------------level 2 P -----------------------------------

p2_0: gate3 port map (A=>p0,B=>p1,pd=>p20);
p2_1: gate3 port map (A=>p3,B=>p2,pd=>p21);
p2_2: gate3 port map (A=>p5,B=>p4,pd=>p22);
p2_3: gate3 port map (A=>p7,B=>p6,pd=>p23);
p2_4: gate3 port map (A=>p9,B=>p8,pd=>p24);
p2_5: gate3 port map (A=>p11,B=>p10,pd=>p25);
p2_6: gate3 port map (A=>p13,B=>p12,pd=>p26);
p2_7: gate3 port map (A=>p14,B=>p15,pd=>p27);

-------------------LEVEL 2 G---------------------------------

G2_0: gate1 port map (A=>g1,B=>p1,C=>g0,abc=>g20);
G2_1: gate1 port map (A=>g3,B=>p3,C=>g2,abc=>g21);
G2_2: gate1 port map (A=>g5,B=>p5,C=>g4,abc=>g22);
G2_3: gate1 port map (A=>g7,B=>p7,C=>g6,abc=>g23);
G2_4: gate1 port map (A=>g9,B=>p9,C=>g8,abc=>g24);
G2_5: gate1 port map (A=>g11,B=>p11,C=>g10,abc=>g25);
G2_6: gate1 port map (A=>g13,B=>p13,C=>g12,abc=>g26);
G2_7: gate1 port map (A=>g15,B=>p15,C=>g14,abc=>g27);

----------------level 3 P and G ----------------------------------------

p3_0: gate3 port map (A=>p21,B=>p20,pd=>p30);
p3_1: gate3 port map (A=>p23,B=>p22,pd=>p31);
p3_2: gate3 port map (A=>p25,B=>p24,pd=>p32);
p3_3: gate3 port map (A=>p27,B=>p26,pd=>p33);



G3_0: gate1 port map (A=>g21,B=>p21,C=>g20,abc=>g30);
G3_1: gate1 port map (A=>g23,B=>p23,C=>g22,abc=>g31);
G3_2: gate1 port map (A=>g25,B=>p25,C=>g24,abc=>g32);
G3_3: gate1 port map (A=>g27,B=>p27,C=>g26,abc=>g33);


----------LEVEL4--------------

p4_0: gate3 port map (A=>p31,B=>p30,pd=>p40);
p4_1: gate3 port map (A=>p33,B=>p32,pd=>p41);

G4_0: gate1 port map (A=>g31,B=>p31,C=>g30,abc=>g40);
G4_1: gate1 port map (A=>g33,B=>p33,C=>g32,abc=>g41);



------------LEVEL5--------------------
p5_0: gate3 port map (A=>p41,B=>p40,pd=>p50);

G5_0: gate1 port map (A=>g41,B=>p41,C=>g40,abc=>g50);

--------------cout-----------------------
L1: gate1 port map (A=>g0,B=>p0,C=>C,abc=>C1);
L2: gate1 port map (A=>g20,B=>p20,C=>C,abc=>C2);
L3: gate1 port map (A=>g2,B=>p2,C=>C2,abc=>C3);
L4: gate1 port map (A=>g30,B=>p30,C=>C,abc=>C4);
L5: gate1 port map (A=>g4,B=>p4,C=>C4,abc=>C5);
L6: gate1 port map (A=>g22,B=>p22,C=>C4,abc=>C6);
L7: gate1 port map (A=>g40,B=>p40,C=>C,abc=>C7);
L8: gate1 port map (A=>g23,B=>p23,C=>C6,abc=>C8);
L9: gate1 port map (A=>g8,B=>p8,C=>C8,abc=>C9);
L10: gate1 port map (A=>g24,B=>p24,C=>C8,abc=>C10);
L11: gate1 port map (A=>g32,B=>p32,C=>C8,abc=>C11);
L12: gate1 port map (A=>g25,B=>p25,C=>C10,abc=>C12);
L13: gate1 port map (A=>g12,B=>p12,C=>C12,abc=>C13);
L14: gate1 port map (A=>g26,B=>p26,C=>C12,abc=>C14);
L15: gate1 port map (A=>g50,B=>p50,C=>C,abc=>C15);

--------------------SUM--------------------------
S0: XOR2 port map( A=>p0, B=>C,uneq=>D(0));
S1: XOR2 port map( A=>p1, B=>C1,uneq=>D(1));
S2: XOR2 port map( A=>p2, B=>C2,uneq=>D(2));
S3: XOR2 port map( A=>p3, B=>C3,uneq=>D(3));
S4: XOR2 port map( A=>p4, B=>C4,uneq=>D(4));
S5: XOR2 port map( A=>p5, B=>C5,uneq=>D(5));
S6: XOR2 port map( A=>p6, B=>C6,uneq=>D(6));
S7: XOR2 port map( A=>p7, B=>C7,uneq=>D(7));
S8: XOR2 port map( A=>p8, B=>C8,uneq=>D(8));
S9: XOR2 port map( A=>p9, B=>C9,uneq=>D(9));
S10: XOR2 port map( A=>p10, B=>C10,uneq=>D(10));
S11: XOR2 port map( A=>p11, B=>C11,uneq=>D(11));
S12: XOR2 port map( A=>p12, B=>C12,uneq=>D(12));
S13: XOR2 port map( A=>p13, B=>C13,uneq=>D(13));
S14: XOR2 port map( A=>p14, B=>C14,uneq=>D(14));
S15: XOR2 port map( A=>p15, B=>C15,uneq=>D(15));
carry <= C15;
end obvious;

