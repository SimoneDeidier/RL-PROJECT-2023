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
    signal rst_addr : std_logic;
    signal out_two_bit_sreg : std_logic_vector(1 downto 0);
    signal z_0_input_reg : std_logic_vector(7 downto 0);
    signal z_1_input_reg : std_logic_vector(7 downto 0);
    signal z_2_input_reg : std_logic_vector(7 downto 0);
    signal z_3_input_reg : std_logic_vector(7 downto 0);
    signal z_0_set_reg : std_logic;
    signal z_1_set_reg : std_logic;
    signal z_2_set_reg : std_logic;
    signal z_3_set_reg : std_logic;
    signal set_two_bit_reg : std_logic;
    signal set_addr_reg : std_logic;
    signal shift_addr_reg : std_logic;
    signal show_output : std_logic;
    signal set_output_regs : std_logic;
    -- FSM states
    
    component fsm is
        port(
            clock, start, reset:  in std_logic;
            mem_we, mem_en, done, show_output_reg, rst_addr, set_addr, set_two_bit, set_output_regs : out std_logic
        );
    end component;
    
    
    -- Definitions of all the components
        
    
    -- Two bit demultiplexer, 8-bit input, 9-bit output (8-bit data + 1-bit set signal), used to choose where to send memory data
    component two_bit_demux is
        port(
            clock : in std_logic;
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
            reset_addr : in std_logic;
            shift : in std_logic;
            clock : in std_logic;
            start : in std_logic;
            output : out std_logic_vector(15 downto 0)
        );
    end component;
    
    -- 8 bit register, used to store the value of one of the circuit's output
    component output_register is
        port(
            input_data : in std_logic_vector(7 downto 0);
            set : in std_logic;
            master_set : in std_logic;
            reset : in std_logic;
            clock : in std_logic;
            show_output : in std_logic;
            output : out std_logic_vector(7 downto 0)
        );
    end component;

begin

    -- Mapping ports of external components
         
    -- Demux to select in which output we want to set a new value
    demux2 : two_bit_demux port map(
        clock => i_clk,
        input => i_mem_data,
        sel => out_two_bit_sreg,
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
        input => i_w,
        set => set_two_bit_reg,
        clock => i_clk,
        output => out_two_bit_sreg
    );

    -- Shift register to store the addres of the memory
    address_reg : address_register port map(
        input => i_w,
        set => set_addr_reg,
        reset => i_rst,
        reset_addr => rst_addr,
        shift => shift_addr_reg,
        clock => i_clk,
        output => o_mem_addr,
        start => i_start
    );
    
    -- Register for first out line
    z_0_output_register : output_register port map(
        input_data => z_0_input_reg,
        set => z_0_set_reg,
        master_set => set_output_regs,
        reset => i_rst,
        clock => i_clk ,
        show_output => show_output,
        output => o_z0
    );
    
    -- Register for second out line
    z_1_output_register : output_register port map(
        input_data => z_1_input_reg,
        set => z_1_set_reg,
        master_set => set_output_regs,
        reset => i_rst,
        clock => i_clk ,
        show_output => show_output,
        output => o_z1
    );
    
    -- Register for third out line
    z_2_output_register : output_register port map(
        input_data => z_2_input_reg,
        set => z_2_set_reg,
        master_set => set_output_regs,
        reset => i_rst,
        clock => i_clk ,
        show_output => show_output,
        output => o_z2
    );
    
    -- Register for fourth out line
    z_3_output_register : output_register port map(
        input_data => z_3_input_reg,
        set => z_3_set_reg,
        master_set => set_output_regs,
        reset => i_rst,
        clock => i_clk ,
        show_output => show_output,
        output => o_z3
    );
    
    -- Finite State Machine
    finite_state_machine: fsm port map(
        clock => i_clk,
        start => i_start,
        reset => i_rst,
        mem_we => o_mem_we,
        mem_en => o_mem_en,
        done => o_done,
        show_output_reg => show_output,
        rst_addr => rst_addr,
        set_addr => set_addr_reg,
        set_two_bit => set_two_bit_reg,
        set_output_regs => set_output_regs
    );

end project_reti_logiche_arch;
