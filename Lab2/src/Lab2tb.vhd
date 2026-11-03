-- Git account : <La Hoang Kha Vy>
-- Author      : La Hoang Kha Vy (CE210538)
-- Purpose     : Testbench Lab02 - 4 input logic combinations verification (00, 01, 10, 11)

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Lab2tb is
end entity Lab2tb;

architecture behavior of Lab2tb is

    component Lab2 is
        port (
            i_sw1 : in  STD_LOGIC;
            i_sw2 : in  STD_LOGIC;
            o_led : out STD_LOGIC
        );
    end component;

    signal i_sw1 : STD_LOGIC := '1';
    signal i_sw2 : STD_LOGIC := '1';
    signal o_led : STD_LOGIC;

begin

    uut: Lab2 port map (
        i_sw1 => i_sw1,
        i_sw2 => i_sw2,
        o_led => o_led
    );

    stim_proc: process
    begin

        i_sw1 <= '1';
        i_sw2 <= '1';
        wait for 10 ns;

        i_sw1 <= '0';
        i_sw2 <= '1';
        wait for 10 ns;

        i_sw1 <= '1';
        i_sw2 <= '0';
        wait for 10 ns;

        i_sw1 <= '0';
        i_sw2 <= '0';
        wait for 10 ns;

        wait;
    end process;

end architecture behavior;