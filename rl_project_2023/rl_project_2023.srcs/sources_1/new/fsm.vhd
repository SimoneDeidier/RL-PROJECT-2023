----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
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
            mem_we, mem_en, done, reset_reg, select_register, set: out std_logic
        );
end fsm;

architecture fsm_arch of fsm is

    type S is (S_RESET, S_WAIT, SELECT_OUTPUT_LINE, TAKE_MEM_ADDR, MEM, S_DONE );
    signal curr_state : S;
    signal counter_reset: std_logic;
    signal clk_count: std_logic_vector(1 downto 0);
    
    component counter is
    port(
            clock: in std_logic;
            reset: in std_logic;
            output : out std_logic_vector(1 downto 0)
        );
    end component;

    begin 
    clk_counter : counter port map(
        clock => clock,
        reset => counter_reset,
        output => clk_count
    );


        
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
                    if clk_count = "11" then
                            curr_state <= TAKE_MEM_ADDR;
                    end if;
                when TAKE_MEM_ADDR =>
                    if start = '0' then 
                        curr_state <= MEM;
                    end if;
                when MEM =>
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
        select_register <= '0';
        done <= '0';
        reset_reg <= '0';
        select_register<= '0'; 
        set <= '0';
        
        
        
        case curr_state is
            when S_RESET =>
                reset_reg <= '1';
            when S_WAIT =>
                reset_reg <= '0';
                done <= '0';
                select_register<= '0'; 
            when SELECT_OUTPUT_LINE =>
                set <= '1';
            when TAKE_MEM_ADDR =>
                select_register<= '1'; 
            when MEM =>
                set <= '0';
                mem_en <= '1';
            when S_DONE =>
                done <= '1';
                mem_en <= '0';
        end case;
            
               
              
        
    
    end process;
    
    
    

end fsm_arch;