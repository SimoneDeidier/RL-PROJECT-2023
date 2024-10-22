----------------------------------------------------------------------------------
-- Company: Politecnico di Milano
-- Engineer: D'Alessio Edoardo, Deidier Simone
-- 
-- Create Date: 03/20/2023 19:39:00 PM
-- Design Name: 
-- Module Name: output_register - output_register_arch
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

entity output_register is
    port(
            input_data : in std_logic_vector(7 downto 0);
            set : in std_logic;
            master_set : in std_logic;
            reset : in std_logic;
            clock : in std_logic;
            show_output : in std_logic;
            output : out std_logic_vector(7 downto 0)
    );
end output_register;

architecture output_register_arch of output_register is

    signal data : std_logic_vector(7 downto 0);

begin

    register_proc : process(input_data, set, reset, clock, master_set, show_output)
    begin
    if clock = '1' and clock'event then  
            if reset = '1' then
                data <= "00000000";
            elsif show_output = '1' and master_set = '0' then
                output <= data;    
            elsif show_output = '0' and master_set = '0' then
                output <= "00000000"; 
            elsif set = '1' and master_set = '1' then
                data <= input_data;
                output <= "00000000";
            else
                output <= "00000000";       
     end if;       
        end if;
    end process;


end output_register_arch;