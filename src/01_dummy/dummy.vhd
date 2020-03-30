--------------------------------------------------------------------------------
--! 
--! @file      dummy.vhd
--! 
--! @brief     Programa inicial para familiarizar com a linguagem VHDL
--! @details   -
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
entity dummy is
    port(A,B:IN std_logic;
    clk, rst, start: IN std_logic;
    C:OUT std_logic);

end entity dummy;

architecture behavior of dummy is
  signal X, Y, Z:std_logic;

begin
    -- Syncronous
    DUMMY_PROC: process(clk, rst)
    begin
        if rst='1' then
            Z<='0';
        elsif rising_edge(clk) and start = '1' then
            X<=A;
            Y<=B;
            Z<=A AND B;
        end if;
    end process DUMMY_PROC;
    
    -- Assyncronous
    OUT_PROC: process(Z)
    begin
        C<=Z;
    end process OUT_PROC;
end architecture behavior;
