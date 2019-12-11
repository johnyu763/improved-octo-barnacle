library ieee;
use ieee.std_logic_1164.all;

entity tflipflop is
    port(
    t: in bit;
    q: inout bit;
    qn: inout bit;
    clk: in bit);
end entity;

architecture Behavorial of tflipflop is
begin
    process(clk)
    begin
        if clk'event and clk = '1' then
            if (t = '0') then
                q <= q;
                qn <= not q;
            elsif t = '1' then
                q <= not q;
                qn <= q;
            end if;
        end if;
    end process;
end Behavorial;