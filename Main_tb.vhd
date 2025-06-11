
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/08/2024 05:28:01 PM
-- Design Name: 
-- Module Name: Main_tb - Behavioral
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
use std.env.finish;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Main_tb is
--  Port ( );
end Main_tb;

architecture Behavioral of Main_tb is
signal P1,P2,P3,P4,Q1,Q2,Q3,Q4: std_logic_vector(5 downto 0);
signal S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12: std_logic_vector(4 downto 0);
signal M1,M2,M3,M4,M5,M6,M7,M8,M9,M10,M11,M12,M13,M14,M15,M16,M17: std_logic_vector(1 downto 0);
signal O: std_logic_vector(5 downto 0);

begin
instance: entity work.Main (Behavioral)
port map(P1=>P1,Q1=>Q1,P2=>P2,Q2=>Q2,P3=>P3,Q3=>Q3,P4=>P4,Q4=>Q4,
         S1=>S1,S2=>S2,S3=>S3,S4=>S4,S5=>S5,S6=>S6,S7=>S7,S8=>S8,S9=>S9,S10=>S10,S11=>S11,S12=>S12,
         M1=>M1,M2=>M2,M3=>M3,M4=>M4,M5=>M5,M6=>M6,M7=>M7,M8=>M8,M9=>M9,M10=>M10,M11=>M11,M12=>M12,M13=>M13,M14=>M14,M15=>M15,M16=>M16,M17=>M17,O=>O);

--CASE 1
P1<="101000"; Q1<="011100"; P2<="110100"; Q2<="101001"; P3<="010110"; Q3<="011010"; P4<="010110"; Q4<="011010"; 
S1<="10100"; S2<="01000"; S3<="00011"; S4<="00101"; 
M1<="00"; M2<="01"; M3<="10"; M4<="11";
S5<="00010"; S7<="00111";
M11<="00";M12<="10";
S10<="01001";
M17<="01"; wait for 10 ns ;

-- CASE 2
--P1<="101000"; Q1<="011100"; P2<="110100"; Q2<="000100"; P3<="010110"; Q3<="000010"; P4<="000110"; Q4<="001010"; 
--S1<="00001"; S2<="10101"; S3<="10100"; S4<="01000"; 
--M3<="00"; M4<="01"; M7<="10"; M8<="11";
--S6<="10001"; S<="01110";
--M13<="01";M14<="11";
--S11<="00001";
--M17<="10"; 
--wait for 100ns;

finish;
end process;

end Behavioral;
