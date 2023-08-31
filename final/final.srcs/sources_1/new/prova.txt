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
    
    --FSM
    type S is (S_WAIT, SELECT_OUTPUT_LINE, TAKE_MEM_ADDR, MEM_REQ, MEM, SET_OUT_REGS, S_SHOW_OUTPUT, S_DONE );
    signal curr_state : S;
    signal show_output, rst_addr, set_addr, set_two_bit, master_set: std_logic;
          
    
    -- Two bit demultiplexer, 9-bit output (8-bit data + 1-bit set signal), used to choose where to send memory data
    signal out_0 :  std_logic_vector(7 downto 0);
    signal out_1 :  std_logic_vector(7 downto 0);
    signal out_2 :  std_logic_vector(7 downto 0);
    signal out_3 :  std_logic_vector(7 downto 0);
    signal set_0 :  std_logic;
    signal set_1 :  std_logic;
    signal set_2 :  std_logic;
    signal set_3 :  std_logic;
    
    -- Two bit shift register, used to store the output selection index
    signal out_two_bit_sreg : std_logic_vector(1 downto 0);
    
    -- 16 bit shift register, used to store the 16-bit memory address
    signal data : std_logic_vector(15 downto 0);
    
    -- 8 bit register, used to store the value of one of the circuit's output
    signal data_z0: std_logic_vector(7 downto 0);
    signal data_z1: std_logic_vector(7 downto 0);
    signal data_z2: std_logic_vector(7 downto 0);
    signal data_z3: std_logic_vector(7 downto 0);
        
begin

    demux_proc : process(i_mem_data, out_two_bit_sreg, i_clk)
    begin
    if i_clk = '1' and i_clk'event then
        if (out_two_bit_sreg = "00") then
                out_0 <= i_mem_data;
                out_1 <= "00000000";
                out_2 <= "00000000";
                out_3 <= "00000000";
                set_0 <= '1';
                set_1 <= '0';
                set_2 <= '0';
                set_3 <= '0';
                
        elsif out_two_bit_sreg = "01" then
                out_0 <= "00000000";
                out_1 <= i_mem_data;
                out_2 <= "00000000";
                out_3 <= "00000000";
                set_0 <= '0';
                set_1 <= '1';
                set_2 <= '0';
                set_3 <= '0';
         elsif out_two_bit_sreg = "10" then
                out_0 <= "00000000";
                out_1 <= "00000000";
                out_2 <= i_mem_data;
                out_3 <= "00000000";
                set_0 <= '0';
                set_1 <= '0';
                set_2 <= '1';
                set_3 <= '0';
         elsif out_two_bit_sreg = "11" then
                out_0 <= "00000000";
                out_1 <= "00000000";
                out_2 <= "00000000";
                out_3 <= i_mem_data;
                set_0 <= '0';
                set_1 <= '0';
                set_2 <= '0';
                set_3 <= '1';
            
        end if;
    end if;
    end process;



    two_bit_sreg_proc : process(i_w, set_two_bit, i_clk)
    begin
        if i_clk'event and i_clk = '1' then
            if set_two_bit = '1' then
                out_two_bit_sreg(1) <= out_two_bit_sreg(0);
                out_two_bit_sreg(0) <= i_w; 
            end if;    
        end if;
        
    end process;
    
    


 address_register_proc : process(i_w, set_addr, i_rst, rst_addr, i_clk, i_start, data)
    
    begin
        if i_rst = '1' or rst_addr = '1' then
            data <= "0000000000000000";
        elsif i_clk'event and i_clk = '1' and set_addr = '1' and i_start = '1' then
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
            data(0) <= i_w;
         end if;
         o_mem_addr <= data;
    end process;
    
    
    z0_proc : process(out_0, set_0, i_rst, i_clk, master_set, show_output)
    begin
    if i_clk = '1' and i_clk'event then  
            if i_rst = '1' then
                data_z0 <= "00000000";
            elsif show_output = '1' and master_set = '0' then
                o_z0 <= data_z0;    
            elsif show_output = '0' and master_set = '0' then
                o_z0 <= "00000000"; 
            elsif set_0 = '1' and master_set = '1' then
                data_z0 <= out_0;
                o_z0 <= "00000000";
            else
                o_z0 <= "00000000";       
     end if;       
        end if;
    end process;
    
    z1_proc : process(out_1, set_1, i_rst, i_clk, master_set, show_output)
    begin
    if i_clk = '1' and i_clk'event then  
            if i_rst = '1' then
                data_z1 <= "00000000";
            elsif show_output = '1' and master_set = '0' then
                o_z1 <= data_z1;    
            elsif show_output = '0' and master_set = '0' then
                o_z1 <= "00000000"; 
            elsif set_1 = '1' and master_set = '1' then
                data_z1 <= out_1;
                o_z1 <= "00000000";
            else
                o_z1 <= "00000000";       
     end if;       
        end if;
    end process;
    
    z2_proc : process(out_2, set_2, i_rst, i_clk, master_set, show_output)
    begin
    if i_clk = '1' and i_clk'event then  
            if i_rst = '1' then
                data_z2 <= "00000000";
            elsif show_output = '1' and master_set = '0' then
                o_z2 <= data_z2;    
            elsif show_output = '0' and master_set = '0' then
                o_z2 <= "00000000"; 
            elsif set_2 = '1' and master_set = '1' then
                data_z2 <= out_2;
                o_z2 <= "00000000";
            else
                o_z2 <= "00000000";       
     end if;       
        end if;
    end process;

    z3_proc : process(out_3, set_3, i_rst, i_clk, master_set, show_output)
    begin
    if i_clk = '1' and i_clk'event then  
            if i_rst = '1' then
                data_z3 <= "00000000";
            elsif show_output = '1' and master_set = '0' then
                o_z3 <= data_z3;    
            elsif show_output = '0' and master_set = '0' then
                o_z3 <= "00000000"; 
            elsif set_3 = '1' and master_set = '1' then
                data_z3 <= out_3;
                o_z3 <= "00000000";
            else
                o_z3 <= "00000000";       
     end if;       
        end if;
    end process;

    --FSM process
    fsm : process(i_clk, i_rst)
    
    begin
        if i_rst = '1' then
            curr_state <= S_WAIT;
        elsif i_clk'event and i_clk = '1' then
            case curr_state is
                when S_WAIT =>
                    if i_start='1' then
                        curr_state <= SELECT_OUTPUT_LINE;
                    end if;
                when SELECT_OUTPUT_LINE =>
                    curr_state <= TAKE_MEM_ADDR;
                when TAKE_MEM_ADDR =>
                    if i_start = '0' then 
                        curr_state <= MEM_REQ;
                    end if;
                when MEM_REQ =>
                    curr_state <= MEM;
                when MEM =>
                    curr_state <= SET_OUT_REGS;
                when SET_OUT_REGS =>
                    curr_state <= S_SHOW_OUTPUT;    
                when S_SHOW_OUTPUT =>
                    curr_state <= S_DONE;
                when S_DONE =>                 
                    curr_state <= S_WAIT;
            end case;
        end if;
    end process;
    
    
    fsm_lambda : process( curr_state)
    
    begin
        o_mem_we <= '0';
        o_mem_en <= '0';
        o_done <= '0';
        show_output <= '0';
        rst_addr <= '0';
        set_addr <= '0';
        set_two_bit <= '0';       
        master_set <= '0';
        
        case curr_state is
            when S_WAIT =>
                set_two_bit <= '1';  
            when SELECT_OUTPUT_LINE =>
                set_two_bit <= '1';  
            when TAKE_MEM_ADDR =>
                set_addr <= '1';
            when MEM_REQ =>
                o_mem_en <= '1';             
            when MEM =>
                o_mem_en <= '1';
            when SET_OUT_REGS =>
                master_set <= '1';
                o_mem_en <= '1';
            when S_SHOW_OUTPUT =>
                o_mem_en <= '1';
                show_output <= '1';    
            when S_DONE =>
                rst_addr <= '1';
                o_done <= '1';
                set_two_bit <= '1';  
        end case;
                     
        
    end process;
    




end project_reti_logiche_arch;








