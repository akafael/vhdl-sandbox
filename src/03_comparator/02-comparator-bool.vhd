--------------------------------------------------------------------------------
--! 
--! @file      comparator-bool.vhd
--! 
--! @brief     Basic Comparator using Boolean Description
--! @details   3 bits comparator described by boolean operations
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

-- Boolean Description
architecture bool of Comparator is
  signal X:std_logic_vector (3 downto 0);

begin
  Result <= not(A(3) xor B(3)) and
            not(A(2) xor B(2)) and
            not(A(1) xor B(1)) and
            not(A(0) xor B(0));
end architecture bool;
