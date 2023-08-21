----------------------------------------------------------------------------------
-- Company: 
-- Engineer: D'Alessio Edoardo, Deider Simone
-- 
-- Create Date: 03/27/2023 05:27:04 PM
-- Design Name: 
-- Module Name: fsm - fsm_arch
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

entity fsm is
    port(
            clock, start, reset:  in std_logic;
            mem_we, mem_en, done, reset_all_regs, select_register,  show_output_reg, rst_addr, set_addr, set_two_bit, set_output_regs: out std_logic
        );
end fsm;

architecture fsm_arch of fsm is

    type S is (S_RESET, S_WAIT, SELECT_OUTPUT_LINE, TAKE_MEM_ADDR, MEM, WRITE_REGS, WRITE_REGS_2, WRITE_REGS_3, S_DONE );
    signal curr_state : S;
    signal counter_reset: std_logic;
    
    


    begin
        
    fsm : process(clock, reset)
    
    begin
        if reset = '1' then
            curr_state <= S_WAIT;
        elsif clock'event and clock = '1' then
            case curr_state is
                when S_RESET =>
                    curr_state <= S_WAIT;
                when S_WAIT =>
                    if start='1' then
                        curr_state <= SELECT_OUTPUT_LINE;
                    end if;
                when SELECT_OUTPUT_LINE =>
                    curr_state <= TAKE_MEM_ADDR;
                when TAKE_MEM_ADDR =>
                    if start = '0' then 
                        curr_state <= MEM;
                    end if;
                when MEM =>
                    curr_state <= WRITE_REGS;
                when WRITE_REGS =>
                    curr_state <= WRITE_REGS_2;
                when WRITE_REGS_2 =>
                    curr_state <= WRITE_REGS_3;    
                when WRITE_REGS_3 =>
                    curr_state <= S_DONE;
                when S_DONE =>                 
                    curr_state <= S_WAIT;
            end case;
        end if;
    end process;
    
    
    fsm_lambda : process( curr_state)
    
    begin
        mem_we <= '0';
        mem_en <= '0';
        done <= '0';
        reset_all_regs <= '0';
        select_register <= '0';
        show_output_reg <= '0';
        rst_addr <= '0';
        set_addr <= '0';
        set_two_bit <= '1';       
        set_output_regs <= '0';
        
        case curr_state is
            when S_RESET =>
                reset_all_regs <= '1';
            when S_WAIT =>
                reset_all_regs <= '0';
                rst_addr <= '0';
                done <= '0';
                select_register<= '0';
                show_output_reg <= '0';
            when SELECT_OUTPUT_LINE =>
                set_two_bit <= '1';
            when TAKE_MEM_ADDR =>
                select_register<= '1'; 
                set_two_bit <= '0';
                set_addr <= '1';
            when MEM =>
                set_two_bit <= '0'; 
                set_addr <= '0';
                mem_en <= '1';             
            when WRITE_REGS =>
                set_two_bit <= '0'; 
                mem_en <= '1';
            when WRITE_REGS_2 =>
                set_two_bit <= '0'; 
                set_output_regs <= '1';
                mem_en <= '1';
            when WRITE_REGS_3 =>
                set_two_bit <= '0'; 
                mem_en <= '1';
                show_output_reg <= '1';    
            when S_DONE =>
                rst_addr <= '1';
                set_two_bit <= '1';
                select_register <= '0';
                show_output_reg <= '0';
                done <= '1';
                mem_en <= '0';
        end case;
                     
        
    end process;
    
    
    

end fsm_arch;
