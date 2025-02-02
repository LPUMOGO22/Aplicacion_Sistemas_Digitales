-- Circuito implementado con Catodo Comun

library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

entity bcd_siete_segmentos is
  Port(E: in STD_LOGIC_VECTOR(3 DOWNTO 0); --A = E(3), B = E(2), C = E(1), D = E(0)
	 B,C,D,N, H, I, J, L: out STD_LOGIC);
end bcd_siete_segmentos;

architecture Behavioral of bcd_siete_segmentos is

begin

	I <= (E(3)) OR (NOT(E(1)) AND NOT(E(0))) OR (E(2) AND NOT(E(1))) OR (E(2) AND NOT(E(0)));
	B <= (E(1)) OR (E(3)) OR (NOT E(2) AND NOT E(0)) OR (E(2) AND E(0));
	C <= (NOT E(2)) OR (NOT E(1) AND NOT E(0)) OR (E(1) AND E(0));
	L <= (E(3)) OR (NOT E(2) AND E(1) ) OR (E(1) AND NOT E(0)) OR (E(2) AND NOT E(1));
	J <= (NOT E(2) AND NOT E(0)) OR (E(1) AND NOT E(0));
	D <= (NOT E(1)) OR (E(0)) OR (E(2));
	N <= (NOT E(2) AND NOT E(0)) OR (NOT E(2) AND E(1)) OR (E(1) AND NOT E(0)) OR (E(2) AND NOT E(1) AND E(0));

end Behavioral;