
--------------------------------------------------------------------------------
--! 
--! @file      comparator-dataflow.vhd
--! 
--! @brief     Basic Comparator using Dataflow Description
--! @details   3 bits comparator described by data flow
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

use work.gatespkg.all;

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
architecture behavior of dummy is
  signal X:std_logic_vector (3 downto 0);

begin
  Result <= '1' when (A=B) else '0';
end architecture behavior;
