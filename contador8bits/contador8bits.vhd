-- Contador de 8 bits
-- Rango de conteo: 0 - 255
-- Entradas: 
-- 	1. Señal de reloj
--  2. Señal de reset
--  3. Señal de máximo de conteo
-- Salidas:
--  1. Valor del contador

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity contador8bits is
	port(clock, reset : IN std_logic;
		 max: IN std_logic_vector( 7 downto 0);
		 conteo: OUT std_logic_vector( 7  downto 0)
	);
end contador8bits;

architecture comportamiento of contador8bits is
	-- señal interna para realizar el conteo (8 bits) (0 - 255)
	signal contador_interno: std_logic_vector(7 downto 0);

	begin 
		-- Asigna a la salida el valor del contador interno
		conteo <= contador_interno;

		-- Se realiza un proceso que se ejecuta cuando cambie
		-- clock o reset (lista de sensibilidad).
		process(clock, reset)
			begin
				if(reset ='1') THEN
					contador_interno <= "00000000";
				elsif (clock'EVENT and clock ='1') THEN
					if(contador_interno < max) THEN
						contador_interno <= contador_interno + 1;
					else
						contador_interno <= "00000000";
					end if;
				end if;
		end process;
end comportamiento;
