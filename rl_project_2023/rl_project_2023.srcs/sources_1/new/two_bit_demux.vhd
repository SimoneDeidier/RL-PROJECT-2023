----------------------------------------------------------------------------------
-- Company: Politecnico di Milano
-- Engineer: D'Alessio Edoardo, Deidier Simone
-- 
-- Create Date: 03/13/2023 09:30:30 PM
-- Design Name: 
-- Module Name: two_bit_demux - two_bit_demux_arch
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

entity two_bit_demux is
    port(
        input : in std_logic_vector(7 downto 0);
        sel : in std_logic_vector(1 downto 0);
        out_0 : out std_logic_vector(7 downto 0);
        out_1 : out std_logic_vector(7 downto 0);
        out_2 : out std_logic_vector(7 downto 0);
        out_3 : out std_logic_vector(7 downto 0);
        set_0 : out std_logic;
        set_1 : out std_logic;
        set_2 : out std_logic;
        set_3 : out std_logic
    );
end two_bit_demux;

architecture two_bit_demux_arch of two_bit_demux is

begin

    two_bit_demux_proc : process(input, sel)
    begin
        case sel is
            when "00" =>
                out_0 <= input;
                out_1 <= "00000000";
                out_2 <= "00000000";
                out_3 <= "00000000";
                set_0 <= '1';
                set_1 <= '0';
                set_2 <= '0';
                set_3 <= '0';
            when "01" =>
                out_0 <= "00000000";
                out_1 <= input;
                out_2 <= "00000000";
                out_3 <= "00000000";
                set_0 <= '0';
                set_1 <= '1';
                set_2 <= '0';
                set_3 <= '0';
            when "10" =>
                out_0 <= "00000000";
                out_1 <= "00000000";
                out_2 <= input;
                out_3 <= "00000000";
                set_0 <= '0';
                set_1 <= '0';
                set_2 <= '1';
                set_3 <= '0';
            when "11" =>
                out_0 <= "00000000";
                out_1 <= "00000000";
                out_2 <= "00000000";
                out_3 <= input;
                set_0 <= '0';
                set_1 <= '0';
                set_2 <= '0';
                set_3 <= '1';
            when others =>
                out_0 <= "XXXXXXXX";
                out_1 <= "XXXXXXXX";
                out_2 <= "XXXXXXXX";
                out_3 <= "XXXXXXXX";
                set_0 <= 'X';
                set_1 <= 'X';
                set_2 <= 'X';
                set_3 <= 'X';
        end case;
    end process;

end two_bit_demux_arch;
