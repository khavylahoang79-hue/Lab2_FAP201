-- Git account : <La Hoang Kha Vy>
-- Author      : La Hoang Kha Vy (CE210538)
-- Purpose     : Lab02 - Lighting an LED with Logic Gates (AND gate combinational logic)

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Lab2 is
    port (
        i_sw1 : in  STD_LOGIC;
        i_sw2 : in  STD_LOGIC;
        o_led : out STD_LOGIC
    );
end entity Lab2;

architecture rtl of Lab2 is

    signal sw1_pressed : STD_LOGIC;
    signal sw2_pressed : STD_LOGIC;

begin

    sw1_pressed <= not i_sw1;
    sw2_pressed <= not i_sw2;

    o_led <= not (sw1_pressed and sw2_pressed);

end architecture rtl;