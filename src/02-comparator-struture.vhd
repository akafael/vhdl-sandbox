--------------------------------------------------------------------------------
--! 
--! @file      comparator-struct.vhd
--! 
--! @brief     Basic Comparator using Scrutural Description
--! @details   3 bits comparator described by its wiring connections
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

-- Scrutural Description
architecture scruture of dummy is
  signal X:std_logic_vector (3 downto 0);

begin
   u3: xnor port map ( A(3), B(3), X(3) );
   u2: xnor port map ( A(2), B(2), X(2) );
   u1: xnor port map ( A(1), B(1), X(1) );
   u0: xnor port map ( A(0), B(0), X(0) );

   u4: and4 port map ( X(3), X(2), X(1), X(0), Result );
end architecture scruture;
