library ieee;
use ieee.std_logic_1164.all;

entity mod17counter is
    port(
    clk: in bit;
    clr: in bit;
    dir: in bit;
    q: buffer integer range 0 to 17);
end entity;

architecture Behavorial of mod17counter is
begin
    process(clk, clr)
    begin
        if clr = '1' then
            q <= 0;
        elsif clk'event and clk = '1' then
            if dir = '0' then
                q <= q+1;
                if q = 16 then
                    q <= 0;
                end if;
            else
                q <= q-1;
                if q = 0 then
                    q <= 16;
                end if;
            end if;
       end if;
  end process;
end Behavorial;