----------------------------------------------------------------------------------
-- Company: Politecnico di Milano
-- Engineer: D'Alessio Edoardo, Deidier Simone
-- 
-- Create Date: 03/08/2023 08:04:07 PM
-- Design Name: 
-- Module Name: project_reti_logiche - Behavioral
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

entity project_reti_logiche is

    -- Ports of the circuit
    port(
        i_clk : in std_logic;
        i_rst : in std_logic;
        i_start : in std_logic;
        i_w : in std_logic;
        
        o_z0 : out std_logic_vector(7 downto 0);
        o_z1 : out std_logic_vector(7 downto 0);
        o_z2 : out std_logic_vector(7 downto 0);
        o_z3 : out std_logic_vector(7 downto 0);
        o_done : out std_logic;
        
        o_mem_addr : out std_logic_vector(15 downto 0);
        i_mem_data : in std_logic_vector(7 downto 0);
        o_mem_we : out std_logic;
        o_mem_en : out std_logic
    );

end project_reti_logiche;

architecture project_reti_logiche_arch of project_reti_logiche is

    -- Internal signals of the circuit
    signal select_register : std_logic;
    signal set_registers : std_logic;
    signal reset_registers : std_logic;
    -- FSM states
    
    -- Definitions of all the components
    
    -- One bit demultiplexer, used to divide the input in output selection and memory address
    component one_bit_demux is
        port(
            input : in std_logic;
            sel : in std_logic;
            out_1 : out std_logic;
            out_2 : out std_logic 
        );
    end component;
    
    -- Two bit demultiplexer, 8-bit input/output, used to choose where to send memory data
    component two_bit_demux is
        port(
            input : in std_logic_vector(7 downto 0);
            sel : in std_logic_vector(1 downto 0);
            out_1 : out std_logic_vector(7 downto 0);
            out_2 : out std_logic_vector(7 downto 0);
            out_3 : out std_logic_vector(7 downto 0);
            out_4 : out std_logic_vector(7 downto 0)
        );
    end component;
    
    -- Two bit shift register, used to store the output selection index
    component two_bit_sreg is
        port(
            input : in std_logic;
            set : in std_logic;
            reset : in std_logic;
            output : out std_logic_vector(1 downto 0)
        );
    end component;
    
    -- 16 bit shift register, used to store the 16-bit memory address
    component address_register is
        port(
            input : in std_logic;
            set : in std_logic;
            reset : in std_logic;
            output : out std_logic_vector(15 downto 0)
        );
    end component;
    
    -- 8 bit register, used to store the value of one of the circuit's output

begin

end project_reti_logiche_arch;
