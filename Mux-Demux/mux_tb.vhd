library IEEE;
use IEEE.std_logic_1164.all;

entity mux_tb is
end mux_tb;

architecture behavior of mux_tb is

signal A, B, S, Y : STD_LOGIC;

begin

uut: entity work.mux_2to1
    port map (
        A => A,
        B => B,
        S => S,
        Y => Y
    );

process
begin
    -- Test case 1
    A <= '0'; B <= '1';
    S <= '0'; wait for 10 ns;

    -- Test case 2
    S <= '1'; wait for 10 ns;

    wait;
end process;

end behavior;