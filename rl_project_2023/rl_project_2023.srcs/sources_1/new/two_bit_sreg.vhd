----------------------------------------------------------------------------------
-- Company: Politecnico di Milano
-- Engineer: D'Alessio Edoardo, Deidier Simone
-- 
-- Create Date: 03/13/2023 11:20:39 PM
-- Design Name: 
-- Module Name: two_bit_sreg - two_bit_sreg_arch
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

entity two_bit_sreg is
    port(
        input : in std_logic;
        set : in std_logic;
        reset : in std_logic;
        clock : in std_logic;
        output : out std_logic_vector(1 downto 0)
    );
end two_bit_sreg;

architecture two_bit_sreg_arch of two_bit_sreg is

    signal data : std_logic_vector(1 downto 0);

begin

    two_bit_sreg_proc : process(input, set, reset, clock)
    begin
        if clock'event and clock = '1' then
            if set = '1' then
                data(1) <= data(0);
                data(0) <= input; 
            else
                output <= data; 
            end if;    
        end if;
        
    end process;

end two_bit_sreg_arch;
