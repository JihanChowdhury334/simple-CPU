LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY sseg3 IS
PORT ( 
even : IN STD_LOGIC;
leds : OUT STD_LOGIC_VECTOR(0 TO 6) ) ;
END sseg3 ;

ARCHITECTURE Behavior OF sseg3 IS
BEGIN
PROCESS (even)

BEGIN

CASE even IS --abcdefg
WHEN '1' =>leds <= ("1000100");
WHEN '0' =>leds <= ("1101010");
WHEN OTHERS =>leds <= ("-------") ;
END CASE ;
END PROCESS ;
END Behavior ;