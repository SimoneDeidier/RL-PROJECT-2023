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
            reset : in std_logic;
            clock : in std_logic;
            show_output : in std_logic;
            output : out std_logic_vector(7 downto 0)
    );
end output_register;

architecture output_register_arch of output_register is

    signal data : std_logic_vector(7 downto 0);

begin

    data_register_proc : process(input_data, set, reset, clock)
    begin
        if reset = '1' then
            data <= "00000000";
            output <= data;
        elsif clock'event and clock = '1' and set = '1' then
            data <= input_data;
        end if;
    end process;

    output_register_proc : process(show_output)
    begin
        if clock'event and clock = '1' and show_output = '1' then
            output <= data;
        elsif clock'event and clock = '1' and show_output = '0' then
            output <= "00000000";
        end if;
    end process;

end output_register_arch;