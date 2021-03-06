----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.11.2018 13:08:24
-- Design Name: 
-- Module Name: krzyszczuk - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity krzyszczuk is
    Port ( LED : inout STD_LOGIC_VECTOR (15 downto 0);
           SW : in STD_LOGIC;
           CLK100MHZ: in STD_LOGIC);
end krzyszczuk;

architecture Behavioral of krzyszczuk is
signal licznik: std_logic_vector(25 downto 0) :=(others=>'0');
begin
licz: process(CLK100MHZ)
        begin
            if rising_edge(CLK100MHZ) then
                licznik <= licznik+1;
                end if;
    end process;
zadanie2: process(CLK100MHZ)
variable licznik_zad_2: integer :=0;
    begin
     if rising_edge(CLK100MHZ) then
     licznik_zad_2 := licznik_zad_2 +1;
     if licznik_zad_2 = 25000000 then
        LED(8) <= not LED(8);
        licznik_zad_2 := 0;
     end if;
end if;
end process;
zadanie3:process(CLK100MHZ)
variable licznik_zad_3: integer;
variable okres:integer := 10000000;
variable wypelnienie:integer := okres/100;
begin 
    if rising_edge(CLK100MHZ) then
    if licznik_zad_3 < wypelnienie then
        LED (9) <= '1';
    else
        LED (9) <= '0';
    if licznik_zad_3 = okres then
        licznik_zad_3 := 0;
    else
        licznik_zad_3 := licznik_zad_3 +1;
    end if;
    end if;
    end if;
end process;
    

LED (7 downto 0) <= licznik(25 downto 18);
end Behavioral;
