----------------------------------------------------------------------------------
-- Company: Politecnico di Milano
-- Engineer: D'Alessio Edoardo, Deidier Simone
-- 
-- Create Date: 03/13/2023 07:57:17 PM
-- Design Name: 
-- Module Name: one_bit_demux - Behavioral
-- Project Name: Progetto (Prova Finale) Reti Logiche AA 2022/23
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity one_bit_demux is
    port(
            input : in std_logic;
            sel : in std_logic;
            out_0 : out std_logic;
            out_1 : out std_logic 
        );
end one_bit_demux;

architecture one_bit_demux_arch of one_bit_demux is

begin

    one_bit_demux_proc : process(input, sel)
    begin
        case sel is
            when '0' =>
                out_0 <= input;
                out_1 <= '0';
            when '1' =>
                out_0 <= '0';
                out_1 <= input;
            when others =>
                out_0 <= 'X';
                out_1 <= 'X';
        end case;
    end process;

end one_bit_demux_arch;
