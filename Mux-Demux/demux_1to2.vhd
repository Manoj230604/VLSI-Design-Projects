library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux_1to2 is
    Port (
        D : in STD_LOGIC;
        S : in STD_LOGIC;
        Y0 : out STD_LOGIC;
        Y1 : out STD_LOGIC
    );
end demux_1to2;

architecture Behavioral of demux_1to2 is
begin
    Y0 <= D when S = '0' else '0';
    Y1 <= D when S = '1' else '0';
end Behavioral;