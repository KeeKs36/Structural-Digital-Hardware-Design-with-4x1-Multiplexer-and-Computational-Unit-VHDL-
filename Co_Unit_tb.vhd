----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/07/2024 11:15:56 AM
-- Design Name: 
-- Module Name: Co_Unit_tb - Behavioral
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
use IEEE.STD_LOGIC_SIGNED.ALL;
use STD.ENV.FINISH;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Co_Unit_tb is
--  Port ( );
end Co_Unit_tb;

architecture Behavioral of Co_Unit_tb is
signal P,Q:std_logic_vector(5 downto 0);
signal Sel:std_logic_vector(4 downto 0);
signal R:std_logic_vector(5 downto 0);
begin
instance:entity work.Co_Unit (Behavioral)
port map(P=>P,Q=>Q,R=>R,Sel=>Sel);
stimulus:process
begin
--1.AND
P<="111001";Q<="110101";Sel<="00001";wait for 10ns;
P<="110110";Q<="101001";Sel<="00001";wait for 10ns;
--2.OR
P<="111001";Q<="110101";Sel<="00010";wait for 10ns;
P<="110110";Q<="101001";Sel<="00010";wait for 10ns;
--3.NAND
P<="111001";Q<="110101";Sel<="00011";wait for 10ns;
P<="110110";Q<="101001";Sel<="00011";wait for 10ns;
--4.NOR
P<="111001";Q<="110101";Sel<="00100";wait for 10ns;
P<="110110";Q<="101001";Sel<="00100";wait for 10ns;
--5.XOR
P<="111001";Q<="110101";Sel<="00101";wait for 10ns;
P<="110110";Q<="101001";Sel<="00101";wait for 10ns;
--6.XNOR
P<="111001";Q<="110101";Sel<="00110";wait for 10ns;
P<="110110";Q<="101001";Sel<="00110";wait for 10ns;
--7.ADD
P<="111001";Q<="110101";Sel<="00111";wait for 10ns;
P<="110110";Q<="101001";Sel<="00111";wait for 10ns;
--8.SUB
P<="111001";Q<="110101";Sel<="01000";wait for 10ns;
P<="110110";Q<="101001";Sel<="01000";wait for 10ns;
--9.MUL
P<="111001";Q<="110101";Sel<="01001";wait for 10ns;
P<="110110";Q<="101001";Sel<="01001";wait for 10ns;
--10.GT
P<="111001";Q<="110101";Sel<="01010";wait for 10ns;
P<="110110";Q<="101001";Sel<="01010";wait for 10ns;
--11.LT
P<="111001";Q<="110101";Sel<="01011";wait for 10ns;
P<="110110";Q<="101001";Sel<="01011";wait for 10ns;
--12.ET
P<="111001";Q<="110101";Sel<="01100";wait for 10ns;
P<="110110";Q<="101001";Sel<="01100";wait for 10ns;
--13.GTE
P<="111001";Q<="110101";Sel<="01101";wait for 10ns;
P<="110110";Q<="101001";Sel<="01101";wait for 10ns;
--14.LTE
P<="111001";Q<="110101";Sel<="01110";wait for 10ns;
P<="110110";Q<="101001";Sel<="01110";wait for 10ns;
--15.NET
P<="111001";Q<="110101";Sel<="01111";wait for 10ns;
P<="110110";Q<="101001";Sel<="01111";wait for 10ns;
--16.Arthmetic Shift Left
P<="111001";Q<="110101";Sel<="10000";wait for 10ns;
P<="110110";Q<="101001";Sel<="10000";wait for 10ns;
--17.Arthmetic Shift Right
P<="111001";Q<="110101";Sel<="10001";wait for 10ns;
P<="110110";Q<="101001";Sel<="10001";wait for 10ns;
--18.Rotate Shift Left
P<="111001";Q<="110101";Sel<="10010";wait for 10ns;
P<="110110";Q<="101001";Sel<="10010";wait for 10ns;
--19.Roatate Shift Right
P<="111001";Q<="110101";Sel<="10011";wait for 10ns;
P<="110110";Q<="101001";Sel<="10011";wait for 10ns;
--20.Logic Shift Left
P<="111001";Q<="110101";Sel<="10100";wait for 10ns;
P<="110110";Q<="101001";Sel<="10100";wait for 10ns;
--21.Logic Shift Right
P<="111001";Q<="110101";Sel<="10101";wait for 10ns;
P<="110110";Q<="101001";Sel<="10101";wait for 10ns;
end process;
end Behavioral;
