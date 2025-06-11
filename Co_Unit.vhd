
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/06/2024 05:38:26 PM
-- Design Name: 
-- Module Name: Co_Unit - Behavioral
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

entity Co_Unit is
  Port ( 
    P: in std_logic_vector(5 downto 0);
    Q: in std_logic_vector(5 downto 0);
    Sel: in std_logic_vector(4 downto 0);
    R: out std_logic_vector(5 downto 0);
    T: inout std_logic_vector(11 downto 0)
    );
end Co_Unit;

architecture Behavioral of Co_Unit is

begin
CO_Unit_proc : process(P,Q,Sel) 
begin
case Sel is 
    when "00001"=> R <=P and Q; --1.AND
    when "00010"=> R <=P or Q;--2.OR
    when "00011"=> R <=P nand Q;--3.NAND
    when "00100"=> R <=P nor Q;--4.NOR
    when "00101"=> R <=P xor Q;--5.XOR
    when "00110"=> R <=P xnor Q;--6.XNOR
    when "00111"=> R <=std_logic_vector(unsigned(P) + unsigned(Q));--7.ADD
    when "01000"=> R <=std_logic_vector(unsigned(P) - unsigned(Q));--8.SUB
    when "01001"=> T <=std_logic_vector(unsigned(P) * unsigned(Q));--9.MUL
    R<=T(5 downto 0);
    when "01010"=>--10.GT
    if (P>Q) then
    R<="111111";
    else
    R<="000000";
    end if;
    When "01011"=>--11.LT
    if (P<Q) then
    R<="111111";
    else
    R<="000000";
    end if;
    When "01100"=>--12.ET
    if (P=Q) then
    R<="111111";
    else
    R<="000000";
    end if;
    When "01101"=>--13.GTE
    if (P>=Q) then
    R<="111111";
    else
    R<="000000";
    end if;
    When "01110"=>--14.LTE
    if (P<=Q) then
    R<="111111";
    else
    R<="000000";
    end if;
    When "01111"=>--15.NET
    if (P/=Q) then
    R<="111111";
    else
    R<="000000";
    end if;
    when "10000"=>R<= to_stdlogicvector(to_bitvector(P) sla to_integer(unsigned(Q)));--16.Arithmetic Shift Left
    when "10001"=>R<= to_stdlogicvector(to_bitvector(P) sra to_integer(unsigned(Q)));--17.Arithmetic Shift Right
    when "10010"=>R<= to_stdlogicvector(to_bitvector(P) rol to_integer(unsigned(Q)));--18.Rotate Shift Left
    when "10011"=>R<= to_stdlogicvector(to_bitvector(P) ror to_integer(unsigned(Q)));--19.Rotate Shift Right
    when "10100"=>R<= to_stdlogicvector(to_bitvector(P) sll to_integer(unsigned(Q)));--20.Logic Shift Left
    when "10101"=>R<= to_stdlogicvector(to_bitvector(P) srl to_integer(unsigned(Q)));--21.Logic Shift Right
    when others =>R<="000000";
    end case;
end process;
end Behavioral;
