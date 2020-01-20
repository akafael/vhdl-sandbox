--------------------------------------------------------------------------------
--! 
--! @file      comparator-behavioralvhd
--! 
--! @brief     Basic Comparator using Behavioral Description
--! @details   3 bits comparator described by its behavior
--!
--! @author    Rafael Lima
--!
--! @version   1.0
--! @date      2019-06-06
--! 
--------------------------------------------------------------------------------
--
-- Version History
--
-- 1.0      2019-06-06  AKAFAEL     Code created and structured according to 
--                                      digital projects guidelines. 
--
--------------------------------------------------------------------------------

-- Libraries -------------------------------------------------------------------

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

-- Entity ----------------------------------------------------------------------

--! @brief Do something   
--!
--! @details 
--!
--! @image 
entity Comparator is port(
      A,B:       IN std_logic_vector ( 3 downto 0);
      Result:    OUT std_logic);
end entity Comparator;

-- Behavior Description
architecture behavior of Comparator is
  signal X:std_logic_vector (3 downto 0);

begin
   -- Compare Process (triggered whenever A or B change
   CompareProcess : process (A,B)
   begin
       if (A=B) then
          Result <= '1';
       else
          Result <= '0';
       end if;
   end process CompareProcess;
end architecture behavior;
