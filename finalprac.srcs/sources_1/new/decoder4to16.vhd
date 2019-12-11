library ieee;
use ieee.std_logic_1164.all;

entity decoder4to16 is
    port(
    a: in bit_vector(3 downto 0);
    S3: out bit_vector(15 downto 0));
end entity;

architecture Behavorial of decoder4to16 is 
    component decoder2to4 is
       port(
       en: in bit;
       b: in bit_vector(1 downto 0);
       y: out bit_vector(3 downto 0));
    end component;
    
    signal temp: bit_vector(3 downto 0);

begin
    U1: decoder2to4 port map(en => '1', b => a(3 downto 2), y=>temp);
    U2: decoder2to4 port map(en => temp(0), b => a(1 downto 0), y=>S3(3 downto 0));
    U3: decoder2to4 port map(en=>temp(1), b=>a(1 downto 0),y=> S3(7 downto 4));
    U4: decoder2to4 port map(en=>temp(2), b=>a(1 downto 0), y=>S3(11 downto 8));
    U5: decoder2to4 port map(en=>temp(3), b=>a(1 downto 0), y=>S3(15 downto 12));
    
    
    
end Behavorial;