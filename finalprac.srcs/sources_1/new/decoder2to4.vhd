library ieee;
use ieee.std_logic_1164.all;

entity decoder2to4 is 
    port(
    en: in bit;
    b: in bit_vector(1 downto 0);
    y: out bit_vector(3 downto 0));
  
end entity;

architecture Behavorial of decoder2to4 is
begin
    process(en)
    begin
        if en = '1' then
            if b = "00" then
                y <= "0001";
            elsif b = "01" then
                y <= "0010";
            elsif b = "10" then
                y <= "0100";
            elsif b = "11" then
                y <= "1000";
            end if;
       end if;
    end process;
end Behavorial;
              