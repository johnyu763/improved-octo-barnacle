library ieee;
use ieee.std_logic_1164.all;

entity dflipflop is 
    port(
    clk: in bit;
    D: in bit;
    q: inout bit;
    qn: inout bit);
end entity;

architecture Behavorial of dflipflop is
begin
    process(clk)
    begin
        if clk'event and clk = '1' then
            q <= D;
            qn <= not D;
        end if;
    end process;
end Behavorial;