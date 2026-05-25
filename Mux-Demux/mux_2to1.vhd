library IEEE;
use IEEE.std_logic_1164.all;

entity mux_2to1 is
    Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        S : in STD_LOGIC;
        Y : out STD_LOGIC
    );
end mux_2to1;

architecture Behavioral of mux_2to1 is
begin
    Y <= A when S = '0' else B;
end Behavioral;