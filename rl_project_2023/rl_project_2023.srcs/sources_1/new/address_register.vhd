----------------------------------------------------------------------------------
-- Company: Politecnico di Milano
-- Engineer: D'Alessio Edoardo, Deidier Simone
-- 
-- Create Date: 03/20/2023 19:16:00 PM
-- Design Name: 
-- Module Name: address_register - address_register_arch
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

entity address_register is
        port(
            input : in std_logic;
            set : in std_logic;
            reset : in std_logic;
            reset_addr : in std_logic;
            shift : in std:logic;
            clock : in std_logic;
            output : out std_logic_vector(15 downto 0)
        );
end address_register;

architecture address_register_arch of address_register is

    signal data : std_logic_vector(15 downto 0);

begin

    address_register_proc : process(input, set, reset, clock, shift, reset_addr)
    begin
        if reset = '1' or reset_addr = '1' then
            data <= "0000000000000000";
            output <= data;
        elsif clock'event and clock = '1' and set = '1' then
            if shift = '0' then
                data(0) <= input;
            elsif shift = '1' then
                data(15) <= data(14);
                data(14) <= data(13);
                data(13) <= data(12);
                data(12) <= data(11);
                data(11) <= data(10);
                data(10) <= data(9);
                data(9) <= data(8);
                data(8) <= data(7);
                data(7) <= data(6);
                data(6) <= data(5);
                data(5) <= data(4);
                data(4) <= data(3);
                data(3) <= data(2);
                data(2) <= data(1);
                data(1) <= data(0);
                data(0) <= input;
            end if;
        end if;
    end process;

end address_register_arch;
