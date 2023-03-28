----------------------------------------------------------------------------------
-- Company: Politecnico di Milano
-- Engineer: D'Alessio Edoardo, Deidier Simone
-- 
-- Create Date: 03/08/2023 08:04:07 PM
-- Design Name: 
-- Module Name: project_reti_logiche - project_reti_logiche_arch
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
    signal reset_registers : std_logic;
    signal input_address_sreg : std_logic;
    signal input_two_bit_sreg : std_logic;
    signal two_bit_sreg_output : std_logic_vector(1 downto 0);
    signal z_0_input_reg : std_logic_vector(7 downto 0);
    signal z_1_input_reg : std_logic_vector(7 downto 0);
    signal z_2_input_reg : std_logic_vector(7 downto 0);
    signal z_3_input_reg : std_logic_vector(7 downto 0);
    signal z_0_set_reg : std_logic;
    signal z_1_set_reg : std_logic;
    signal z_2_set_reg : std_logic;
    signal z_3_set_reg : std_logic;
    signal two_bit_sreg_set : std_logic;
    signal set_addr_reg : std_logic;
    signal shift_addr_reg : std_logic;

    -- FSM states
    
    component fsm is
        port(
            clock, start, reset:  in std_logic;
            mem_we, mem_en, done, reset_reg, select_register: out std_logic
        );
    end component;
    
    
    -- Definitions of all the components
    
    -- counter: it counts 2 clocks events and START; it controls when to switch "select_register"
    component counter is
        port(
            clock: in std_logic;
            reset: in std_logic;
            output : out std_logic_vector(1 downto 0)
        );
        end component;
    
    
    
    
    -- One bit demultiplexer, 1-bit input, 2 bit output, used to divide the input in output selection and memory address 
    component one_bit_demux is
        port(
            input : in std_logic;
            sel : in std_logic;
            out_0 : out std_logic;
            out_1 : out std_logic
        );
    end component;
    
    -- Two bit demultiplexer, 8-bit input, 9-bit output (8-bit data + 1-bit set signal), used to choose where to send memory data
    component two_bit_demux is
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
    end component;
    
    -- Two bit shift register, used to store the output selection index
    component two_bit_sreg is
        port(
            input : in std_logic;
            set : in std_logic;
            reset : in std_logic;
            clock : in std_logic;
            output : out std_logic_vector(1 downto 0)
        );
    end component;
    
    -- 16 bit shift register, used to store the 16-bit memory address
    component address_register is
        port(
            input : in std_logic;
            set : in std_logic;
            reset : in std_logic;
            shift : in std_logic;
            clock : in std_logic;
            output : out std_logic_vector(15 downto 0)
        );
    end component;
    
    -- 8 bit register, used to store the value of one of the circuit's output
    component output_register is
        port(
            input_data : in std_logic_vector(7 downto 0);
            set : in std_logic;
            reset : in std_logic;
            clock : in std_logic;
            show_output : in std_logic;
            output : out std_logic_vector(7 downto 0)
        );
    end component;

begin

    -- Mapping ports of external components
    
    -- Demux to select where the input bit has to go
    demux1 : one_bit_demux port map(
        input => i_w,
        sel => select_register,
        out_0 => input_two_bit_sreg,
        out_1 => input_address_sreg
    );
    
    -- Demux to select in which output we want to set a new value
    demux2 : two_bit_demux port map(
        input => i_mem_data,
        sel => two_bit_sreg_output,
        out_0 => z_0_input_reg,
        out_1 => z_1_input_reg,
        out_2 => z_2_input_reg,
        out_3 => z_3_input_reg,
        set_0 => z_0_set_reg,
        set_1 => z_1_set_reg,
        set_2 => z_2_set_reg,
        set_3 => z_3_set_reg
    );

    -- Shift register to store the value of the ouput channel
    out_sreg : two_bit_sreg port map(
        input => input_two_bit_sreg,
        set => two_bit_sreg_set,
        reset => reset_registers,
        clock => i_clk,
        output => two_bit_sreg_output
    );

    address_reg : address_register port map(
        input => input_address_sreg,
        set => set_addr_reg,
        reset => reset_registers,
        shift => shift_addr_reg,
        clock => i_clk,
        output => o_mem_addr
    );
    
    z_0_output_register : output_register port map(
        input_data => z_0_input_reg,
        set => z_0_set_reg,
        reset => reset_registers,
        clock => i_clk ,
        show_output => done,
        output => o_z0
    );
    
     z_1_output_register : output_register port map(
        input_data => z_1_input_reg,
        set => z_1_set_reg,
        reset => reset_registers,
        clock => i_clk ,
        show_output => done,
        output => o_z1
    );
     z_2_output_register : output_register port map(
        input_data => z_2_input_reg,
        set => z_2_set_reg,
        reset => reset_registers,
        clock => i_clk ,
        show_output => done,
        output => o_z2
    );
     z_3_output_register : output_register port map(
        input_data => z_3_input_reg,
        set => z_3_set_reg,
        reset => reset_registers,
        clock => i_clk ,
        show_output => done,
        output => o_z3
    );

end project_reti_logiche_arch;
