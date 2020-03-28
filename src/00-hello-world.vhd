--------------------------------------------------------------------------------
--! 
--! @file      00-hello-world.vhd
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
use std.textio.all; -- Imports the standard textio package.

--  Defines a design entity, without any ports.
entity hello_world is
end hello_world;

-- Entity Behavior
architecture behaviour of hello_world is
begin
	process
		variable l : line;
	begin
		write (l, String'("Hello world!"));
		writeline (output, l);
		wait;
	end process;
end behaviour;
