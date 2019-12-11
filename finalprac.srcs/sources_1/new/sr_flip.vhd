library ieee;
use ieee.std_logic_1164.all;

entity srflipflop is
port(
    clk: in bit;
    set: in bit;
    reset:in bit;
    q: inout std_logic;
    qn: inout std_logic);
end entity;
   
architecture Behavorial of SRflipflop is
begin
    process(clk)
    begin
        if clk'event and clk = '1' then
            if set = '0' and reset = '0' then
                q <= q;
                qn <= qn;
            elsif set = '0' and reset = '1' then
                q <= '0';
                qn <= '1';
            elsif set = '1' and reset = '0' then
                q <= '1';
                qn <= '0';
            elsif set = '1' and reset = '1' then
                q <= 'Z';
                qn <= 'Z';
            end if;
        end if;
     end process;
end Behavorial;