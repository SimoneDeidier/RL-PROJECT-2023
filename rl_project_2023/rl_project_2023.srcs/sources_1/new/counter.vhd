----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/27/2023 04:18:52 PM
-- Design Name: 
-- Module Name: counter - counter_arch
-- Project Name: 
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

entity counter is
    port(
            clock: in std_logic;
            reset: in std_logic;
            output : out std_logic_vector(1 downto 0)
        );
end counter;

architecture counter_arch of counter is
    signal data: std_logic_vector(1 downto 0);
begin
    counter_proc : process(reset, clock)
    
    begin
        
        if reset = '1' then 
            data <= "00";
            output <= data;
        elsif clock'event and clock = '1' then 
            data(1) <= data(0);
            data(0) <= '1';
            output <= data;
       end if;
    end process; 

end counter_arch;
