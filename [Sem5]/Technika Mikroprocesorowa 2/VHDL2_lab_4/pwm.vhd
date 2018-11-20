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

begin
process (CLK100MHZ)
variable okres: integer :=10000; --10 000
variable wypelnienie: integer := (okres/100); --dioda 0 bd swiecic ciemniej
variable wypelnieniee: integer := (okres/10); --dioda 0 bd swiecic ciemniej
  variable counter: integer := 0;
  begin
  if (rising_edge(CLK100MHZ)) then
    if(counter<wypelnienie) then
      LED(0) <= '1';
    else
      LED(0) <= '0';
    end if;
    if(counter<wypelnieniee) then
          LED(1) <= '1';
        else
          LED(1) <= '0';
        end if;
    if (counter=okres) then
      counter := 0;
    else
      counter := counter + 1;
    end if;
  end if;
  end process;
LED(2) <= '1';
end Behavioral;
