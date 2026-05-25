library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux_tb is
end demux_tb;

architecture behavior of demux_tb is

signal D, S, Y0, Y1 : STD_LOGIC;

begin

uut: entity work.demux_1to2
    port map (
        D => D,
        S => S,
        Y0 => Y0,
        Y1 => Y1
    );

process
begin
    D <= '1';

    S <= '0'; wait for 10 ns;
    S <= '1'; wait for 10 ns;

    wait;
end process;

end behavior;