
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/08/2024 02:22:36 PM
-- Design Name: 
-- Module Name: Mux_tb - Behavioral
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
use STD.ENV.FINISH;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux_tb is
--  Port ( );
end Mux_tb;

architecture Behavioral of Mux_tb is
signal X1,X2,X3,X4,Y: std_logic_vector(5 downto 0);
signal S: std_logic_vector(1 downto 0);
begin
Mux: entity work.Mux(Behavioral)
    Port map(X1=>X1,X2=>X2,X3=>X3,X4=>X4,S=>S,Y=>Y);
    
    stimulus: process
    begin
        X1<="000000";X2<="000001";X3<="000010";X4<="000011";
        S<="00";wait for 10ns;
        S<="01";wait for 10ns;
        S<="10";wait for 10ns;
        S<="11";wait for 10ns;
    finish;
    end process stimulus;

end Behavioral;
