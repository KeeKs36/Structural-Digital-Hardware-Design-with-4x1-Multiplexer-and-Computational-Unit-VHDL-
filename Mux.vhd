
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/08/2024 02:14:51 PM
-- Design Name: 
-- Module Name: Mux - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux is
 Port ( X1,X2,X3,X4: in std_logic_vector(5 downto 0);
        S: in std_logic_vector(1 downto 0);
        
        Y: inout std_logic_vector(5 downto 0)
  );
end Mux;

architecture Behavioral of Mux is

begin
Mux_proc: process(X1,X2,X3,X4,S) 
    begin
        case S is 
        when "00"=> Y <=X1;
        when "01"=> Y <=X2;
        when "10"=> Y <=X3;
        when "11"=> Y <=X4;
        
        when others=> Y <="XXXXXX";
        end case;
    end process;

end Behavioral;
