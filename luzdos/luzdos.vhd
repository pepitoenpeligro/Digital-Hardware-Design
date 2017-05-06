LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY luzdos IS
	PORT(
		CLOCK_50 : IN STD_LOGIC;
		KEY : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
		SW : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		LEDG : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END luzdos;


ARCHITECTURE luzrtl OF luzdos is
	COMPONENT lusdosNios
		PORT(
			SIGNAL clk_clk : IN STD_LOGIC;
			SIGNAL reset_reset_n : IN STD_LOGIC;
			SIGNAL switches_export : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			SIGNAL leds_export : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END COMPONENT;
	
	BEGIN
	NiosII: lusdosNios
		PORT MAP(
			clk_clk => CLOCK_50,
			reset_reset_n => KEY(0),
			switches_export => SW(7 DOWNTO 0),
			leds_export => LEDG (7 DOWNTO 0)
		);
		
END luzrtl;
