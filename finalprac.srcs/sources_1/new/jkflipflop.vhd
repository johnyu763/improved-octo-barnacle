library ieee;
use ieee.std_logic_1164.all;

entity Jkflipflop is
    port(
    clk: in bit;
    pre: in bit;
    clr: in bit;
    J: in bit;
    K: in bit;
    q: inout bit;
    qn: inout bit);
end entity;

architecture Behavorial of JKflipflop is
begin
    process(clk, pre, clr)
    begin
        if pre = '0' then
            q <= '1';
            qn <= '0';
        elsif clr = '0' then
            q <= '0';
            qn <= '1';
        elsif clk'event and clk = '1' then
            if J = '0' and K = '0' then
                q <= q;
                qn <= qn;
            elsif J = '0' and K = '1' then
                q <= '0';
                qn <= '1';
            elsif J = '1' and K = '0' then
                q <= '1';
                qn <= '0';
            else
                q <= qn;
                qn <= q;
            end if;
        end if;
     end process;
end Behavorial;