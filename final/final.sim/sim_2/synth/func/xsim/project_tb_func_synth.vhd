-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Tue Aug 29 20:20:52 2023
-- Host        : DESKTOP-2BNRJ56 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/edoar/Documents/GitHub/RL-PROJECT-2023/final/final.sim/sim_2/synth/func/xsim/project_tb_func_synth.vhd
-- Design      : project_reti_logiche
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_reti_logiche is
  port (
    i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_start : in STD_LOGIC;
    i_w : in STD_LOGIC;
    o_z0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_z1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_z2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_z3 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_done : out STD_LOGIC;
    o_mem_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    i_mem_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_mem_we : out STD_LOGIC;
    o_mem_en : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of project_reti_logiche : entity is true;
end project_reti_logiche;

architecture STRUCTURE of project_reti_logiche is
  signal \FSM_sequential_curr_state[2]_i_1_n_0\ : STD_LOGIC;
  signal curr_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \curr_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data0 : STD_LOGIC;
  signal \data[15]_i_2_n_0\ : STD_LOGIC;
  signal data_z0 : STD_LOGIC;
  signal \data_z0_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_z0_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_z0_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_z0_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_z0_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_z0_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_z0_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_z0_reg_n_0_[7]\ : STD_LOGIC;
  signal data_z1 : STD_LOGIC;
  signal \data_z1_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_z1_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_z1_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_z1_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_z1_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_z1_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_z1_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_z1_reg_n_0_[7]\ : STD_LOGIC;
  signal data_z2 : STD_LOGIC;
  signal \data_z2_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_z2_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_z2_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_z2_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_z2_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_z2_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_z2_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_z2_reg_n_0_[7]\ : STD_LOGIC;
  signal data_z3 : STD_LOGIC;
  signal \data_z3_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_z3_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_z3_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_z3_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_z3_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_z3_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_z3_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_z3_reg_n_0_[7]\ : STD_LOGIC;
  signal i_clk_IBUF : STD_LOGIC;
  signal i_clk_IBUF_BUFG : STD_LOGIC;
  signal i_mem_data_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i_rst_IBUF : STD_LOGIC;
  signal i_start_IBUF : STD_LOGIC;
  signal i_w_IBUF : STD_LOGIC;
  signal o_done_OBUF : STD_LOGIC;
  signal o_mem_addr_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal o_mem_en_OBUF : STD_LOGIC;
  signal \o_z0[7]_i_1_n_0\ : STD_LOGIC;
  signal \o_z0[7]_i_2_n_0\ : STD_LOGIC;
  signal o_z0_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_z1_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_z2_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_z3_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal out_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \out_0[0]_i_1_n_0\ : STD_LOGIC;
  signal \out_0[1]_i_1_n_0\ : STD_LOGIC;
  signal \out_0[2]_i_1_n_0\ : STD_LOGIC;
  signal \out_0[3]_i_1_n_0\ : STD_LOGIC;
  signal \out_0[4]_i_1_n_0\ : STD_LOGIC;
  signal \out_0[5]_i_1_n_0\ : STD_LOGIC;
  signal \out_0[6]_i_1_n_0\ : STD_LOGIC;
  signal \out_0[7]_i_1_n_0\ : STD_LOGIC;
  signal \out_1_reg_n_0_[0]\ : STD_LOGIC;
  signal \out_1_reg_n_0_[1]\ : STD_LOGIC;
  signal \out_1_reg_n_0_[2]\ : STD_LOGIC;
  signal \out_1_reg_n_0_[3]\ : STD_LOGIC;
  signal \out_1_reg_n_0_[4]\ : STD_LOGIC;
  signal \out_1_reg_n_0_[5]\ : STD_LOGIC;
  signal \out_1_reg_n_0_[6]\ : STD_LOGIC;
  signal \out_1_reg_n_0_[7]\ : STD_LOGIC;
  signal \out_2[0]_i_1_n_0\ : STD_LOGIC;
  signal \out_2[1]_i_1_n_0\ : STD_LOGIC;
  signal \out_2[2]_i_1_n_0\ : STD_LOGIC;
  signal \out_2[3]_i_1_n_0\ : STD_LOGIC;
  signal \out_2[4]_i_1_n_0\ : STD_LOGIC;
  signal \out_2[5]_i_1_n_0\ : STD_LOGIC;
  signal \out_2[6]_i_1_n_0\ : STD_LOGIC;
  signal \out_2[7]_i_1_n_0\ : STD_LOGIC;
  signal \out_2[7]_i_2_n_0\ : STD_LOGIC;
  signal \out_2_reg_n_0_[0]\ : STD_LOGIC;
  signal \out_2_reg_n_0_[1]\ : STD_LOGIC;
  signal \out_2_reg_n_0_[2]\ : STD_LOGIC;
  signal \out_2_reg_n_0_[3]\ : STD_LOGIC;
  signal \out_2_reg_n_0_[4]\ : STD_LOGIC;
  signal \out_2_reg_n_0_[5]\ : STD_LOGIC;
  signal \out_2_reg_n_0_[6]\ : STD_LOGIC;
  signal \out_2_reg_n_0_[7]\ : STD_LOGIC;
  signal out_3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \out_3[7]_i_1_n_0\ : STD_LOGIC;
  signal out_two_bit_sreg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \out_two_bit_sreg[1]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal set_0 : STD_LOGIC;
  signal set_0_i_2_n_0 : STD_LOGIC;
  signal set_1 : STD_LOGIC;
  signal set_1_reg_n_0 : STD_LOGIC;
  signal set_2 : STD_LOGIC;
  signal set_2_i_1_n_0 : STD_LOGIC;
  signal set_2_reg_n_0 : STD_LOGIC;
  signal set_3_i_1_n_0 : STD_LOGIC;
  signal set_3_reg_n_0 : STD_LOGIC;
  signal set_two_bit : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[1]_i_1\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[0]\ : label is "s_wait:000,select_output_line:001,take_mem_addr:010,mem_req:011,mem:100,set_out_regs:101,s_show_output:110,s_done:111";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[1]\ : label is "s_wait:000,select_output_line:001,take_mem_addr:010,mem_req:011,mem:100,set_out_regs:101,s_show_output:110,s_done:111";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[2]\ : label is "s_wait:000,select_output_line:001,take_mem_addr:010,mem_req:011,mem:100,set_out_regs:101,s_show_output:110,s_done:111";
  attribute SOFT_HLUTNM of o_done_OBUF_inst_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of o_mem_en_OBUF_inst_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \out_0[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \out_0[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \out_0[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \out_0[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \out_0[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \out_0[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \out_0[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \out_0[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \out_1[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \out_1[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \out_1[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \out_1[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \out_1[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \out_1[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \out_1[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \out_1[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \out_2[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \out_2[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \out_2[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \out_2[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \out_2[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \out_2[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \out_2[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \out_2[7]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \out_two_bit_sreg[1]_i_1\ : label is "soft_lutpair0";
begin
\FSM_sequential_curr_state[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => curr_state(0),
      O => \curr_state__0\(0)
    );
\FSM_sequential_curr_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => curr_state(0),
      I1 => curr_state(1),
      O => \curr_state__0\(1)
    );
\FSM_sequential_curr_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFE"
    )
        port map (
      I0 => curr_state(0),
      I1 => curr_state(2),
      I2 => i_start_IBUF,
      I3 => curr_state(1),
      O => \FSM_sequential_curr_state[2]_i_1_n_0\
    );
\FSM_sequential_curr_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \FSM_sequential_curr_state[2]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \curr_state__0\(0),
      Q => curr_state(0)
    );
\FSM_sequential_curr_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \FSM_sequential_curr_state[2]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \curr_state__0\(1),
      Q => curr_state(1)
    );
\FSM_sequential_curr_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \FSM_sequential_curr_state[2]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => o_mem_en_OBUF,
      Q => curr_state(2)
    );
\data[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => i_start_IBUF,
      O => data0
    );
\data[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => i_rst_IBUF,
      I1 => curr_state(2),
      I2 => curr_state(0),
      I3 => curr_state(1),
      O => \data[15]_i_2_n_0\
    );
\data_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data0,
      CLR => \data[15]_i_2_n_0\,
      D => i_w_IBUF,
      Q => o_mem_addr_OBUF(0)
    );
\data_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data0,
      CLR => \data[15]_i_2_n_0\,
      D => o_mem_addr_OBUF(9),
      Q => o_mem_addr_OBUF(10)
    );
\data_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data0,
      CLR => \data[15]_i_2_n_0\,
      D => o_mem_addr_OBUF(10),
      Q => o_mem_addr_OBUF(11)
    );
\data_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data0,
      CLR => \data[15]_i_2_n_0\,
      D => o_mem_addr_OBUF(11),
      Q => o_mem_addr_OBUF(12)
    );
\data_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data0,
      CLR => \data[15]_i_2_n_0\,
      D => o_mem_addr_OBUF(12),
      Q => o_mem_addr_OBUF(13)
    );
\data_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data0,
      CLR => \data[15]_i_2_n_0\,
      D => o_mem_addr_OBUF(13),
      Q => o_mem_addr_OBUF(14)
    );
\data_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data0,
      CLR => \data[15]_i_2_n_0\,
      D => o_mem_addr_OBUF(14),
      Q => o_mem_addr_OBUF(15)
    );
\data_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data0,
      CLR => \data[15]_i_2_n_0\,
      D => o_mem_addr_OBUF(0),
      Q => o_mem_addr_OBUF(1)
    );
\data_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data0,
      CLR => \data[15]_i_2_n_0\,
      D => o_mem_addr_OBUF(1),
      Q => o_mem_addr_OBUF(2)
    );
\data_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data0,
      CLR => \data[15]_i_2_n_0\,
      D => o_mem_addr_OBUF(2),
      Q => o_mem_addr_OBUF(3)
    );
\data_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data0,
      CLR => \data[15]_i_2_n_0\,
      D => o_mem_addr_OBUF(3),
      Q => o_mem_addr_OBUF(4)
    );
\data_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data0,
      CLR => \data[15]_i_2_n_0\,
      D => o_mem_addr_OBUF(4),
      Q => o_mem_addr_OBUF(5)
    );
\data_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data0,
      CLR => \data[15]_i_2_n_0\,
      D => o_mem_addr_OBUF(5),
      Q => o_mem_addr_OBUF(6)
    );
\data_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data0,
      CLR => \data[15]_i_2_n_0\,
      D => o_mem_addr_OBUF(6),
      Q => o_mem_addr_OBUF(7)
    );
\data_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data0,
      CLR => \data[15]_i_2_n_0\,
      D => o_mem_addr_OBUF(7),
      Q => o_mem_addr_OBUF(8)
    );
\data_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data0,
      CLR => \data[15]_i_2_n_0\,
      D => o_mem_addr_OBUF(8),
      Q => o_mem_addr_OBUF(9)
    );
\data_z0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(0),
      I1 => curr_state(2),
      I2 => curr_state(1),
      I3 => set_0,
      O => data_z0
    );
\data_z0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z0,
      D => out_0(0),
      Q => \data_z0_reg_n_0_[0]\,
      R => i_rst_IBUF
    );
\data_z0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z0,
      D => out_0(1),
      Q => \data_z0_reg_n_0_[1]\,
      R => i_rst_IBUF
    );
\data_z0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z0,
      D => out_0(2),
      Q => \data_z0_reg_n_0_[2]\,
      R => i_rst_IBUF
    );
\data_z0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z0,
      D => out_0(3),
      Q => \data_z0_reg_n_0_[3]\,
      R => i_rst_IBUF
    );
\data_z0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z0,
      D => out_0(4),
      Q => \data_z0_reg_n_0_[4]\,
      R => i_rst_IBUF
    );
\data_z0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z0,
      D => out_0(5),
      Q => \data_z0_reg_n_0_[5]\,
      R => i_rst_IBUF
    );
\data_z0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z0,
      D => out_0(6),
      Q => \data_z0_reg_n_0_[6]\,
      R => i_rst_IBUF
    );
\data_z0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z0,
      D => out_0(7),
      Q => \data_z0_reg_n_0_[7]\,
      R => i_rst_IBUF
    );
\data_z1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(0),
      I1 => curr_state(2),
      I2 => curr_state(1),
      I3 => set_1_reg_n_0,
      O => data_z1
    );
\data_z1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z1,
      D => \out_1_reg_n_0_[0]\,
      Q => \data_z1_reg_n_0_[0]\,
      R => i_rst_IBUF
    );
\data_z1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z1,
      D => \out_1_reg_n_0_[1]\,
      Q => \data_z1_reg_n_0_[1]\,
      R => i_rst_IBUF
    );
\data_z1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z1,
      D => \out_1_reg_n_0_[2]\,
      Q => \data_z1_reg_n_0_[2]\,
      R => i_rst_IBUF
    );
\data_z1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z1,
      D => \out_1_reg_n_0_[3]\,
      Q => \data_z1_reg_n_0_[3]\,
      R => i_rst_IBUF
    );
\data_z1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z1,
      D => \out_1_reg_n_0_[4]\,
      Q => \data_z1_reg_n_0_[4]\,
      R => i_rst_IBUF
    );
\data_z1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z1,
      D => \out_1_reg_n_0_[5]\,
      Q => \data_z1_reg_n_0_[5]\,
      R => i_rst_IBUF
    );
\data_z1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z1,
      D => \out_1_reg_n_0_[6]\,
      Q => \data_z1_reg_n_0_[6]\,
      R => i_rst_IBUF
    );
\data_z1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z1,
      D => \out_1_reg_n_0_[7]\,
      Q => \data_z1_reg_n_0_[7]\,
      R => i_rst_IBUF
    );
\data_z2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(0),
      I1 => curr_state(2),
      I2 => curr_state(1),
      I3 => set_2_reg_n_0,
      O => data_z2
    );
\data_z2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z2,
      D => \out_2_reg_n_0_[0]\,
      Q => \data_z2_reg_n_0_[0]\,
      R => i_rst_IBUF
    );
\data_z2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z2,
      D => \out_2_reg_n_0_[1]\,
      Q => \data_z2_reg_n_0_[1]\,
      R => i_rst_IBUF
    );
\data_z2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z2,
      D => \out_2_reg_n_0_[2]\,
      Q => \data_z2_reg_n_0_[2]\,
      R => i_rst_IBUF
    );
\data_z2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z2,
      D => \out_2_reg_n_0_[3]\,
      Q => \data_z2_reg_n_0_[3]\,
      R => i_rst_IBUF
    );
\data_z2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z2,
      D => \out_2_reg_n_0_[4]\,
      Q => \data_z2_reg_n_0_[4]\,
      R => i_rst_IBUF
    );
\data_z2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z2,
      D => \out_2_reg_n_0_[5]\,
      Q => \data_z2_reg_n_0_[5]\,
      R => i_rst_IBUF
    );
\data_z2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z2,
      D => \out_2_reg_n_0_[6]\,
      Q => \data_z2_reg_n_0_[6]\,
      R => i_rst_IBUF
    );
\data_z2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z2,
      D => \out_2_reg_n_0_[7]\,
      Q => \data_z2_reg_n_0_[7]\,
      R => i_rst_IBUF
    );
\data_z3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(0),
      I1 => curr_state(2),
      I2 => curr_state(1),
      I3 => set_3_reg_n_0,
      O => data_z3
    );
\data_z3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z3,
      D => out_3(0),
      Q => \data_z3_reg_n_0_[0]\,
      R => i_rst_IBUF
    );
\data_z3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z3,
      D => out_3(1),
      Q => \data_z3_reg_n_0_[1]\,
      R => i_rst_IBUF
    );
\data_z3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z3,
      D => out_3(2),
      Q => \data_z3_reg_n_0_[2]\,
      R => i_rst_IBUF
    );
\data_z3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z3,
      D => out_3(3),
      Q => \data_z3_reg_n_0_[3]\,
      R => i_rst_IBUF
    );
\data_z3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z3,
      D => out_3(4),
      Q => \data_z3_reg_n_0_[4]\,
      R => i_rst_IBUF
    );
\data_z3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z3,
      D => out_3(5),
      Q => \data_z3_reg_n_0_[5]\,
      R => i_rst_IBUF
    );
\data_z3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z3,
      D => out_3(6),
      Q => \data_z3_reg_n_0_[6]\,
      R => i_rst_IBUF
    );
\data_z3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => data_z3,
      D => out_3(7),
      Q => \data_z3_reg_n_0_[7]\,
      R => i_rst_IBUF
    );
i_clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => i_clk_IBUF,
      O => i_clk_IBUF_BUFG
    );
i_clk_IBUF_inst: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_clk,
      O => i_clk_IBUF
    );
\i_mem_data_IBUF[0]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_mem_data(0),
      O => i_mem_data_IBUF(0)
    );
\i_mem_data_IBUF[1]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_mem_data(1),
      O => i_mem_data_IBUF(1)
    );
\i_mem_data_IBUF[2]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_mem_data(2),
      O => i_mem_data_IBUF(2)
    );
\i_mem_data_IBUF[3]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_mem_data(3),
      O => i_mem_data_IBUF(3)
    );
\i_mem_data_IBUF[4]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_mem_data(4),
      O => i_mem_data_IBUF(4)
    );
\i_mem_data_IBUF[5]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_mem_data(5),
      O => i_mem_data_IBUF(5)
    );
\i_mem_data_IBUF[6]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_mem_data(6),
      O => i_mem_data_IBUF(6)
    );
\i_mem_data_IBUF[7]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_mem_data(7),
      O => i_mem_data_IBUF(7)
    );
i_rst_IBUF_inst: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_rst,
      O => i_rst_IBUF
    );
i_start_IBUF_inst: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_start,
      O => i_start_IBUF
    );
i_w_IBUF_inst: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_w,
      O => i_w_IBUF
    );
o_done_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_done_OBUF,
      O => o_done
    );
o_done_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => curr_state(2),
      O => o_done_OBUF
    );
\o_mem_addr_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(0),
      O => o_mem_addr(0)
    );
\o_mem_addr_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(10),
      O => o_mem_addr(10)
    );
\o_mem_addr_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(11),
      O => o_mem_addr(11)
    );
\o_mem_addr_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(12),
      O => o_mem_addr(12)
    );
\o_mem_addr_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(13),
      O => o_mem_addr(13)
    );
\o_mem_addr_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(14),
      O => o_mem_addr(14)
    );
\o_mem_addr_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(15),
      O => o_mem_addr(15)
    );
\o_mem_addr_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(1),
      O => o_mem_addr(1)
    );
\o_mem_addr_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(2),
      O => o_mem_addr(2)
    );
\o_mem_addr_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(3),
      O => o_mem_addr(3)
    );
\o_mem_addr_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(4),
      O => o_mem_addr(4)
    );
\o_mem_addr_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(5),
      O => o_mem_addr(5)
    );
\o_mem_addr_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(6),
      O => o_mem_addr(6)
    );
\o_mem_addr_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(7),
      O => o_mem_addr(7)
    );
\o_mem_addr_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(8),
      O => o_mem_addr(8)
    );
\o_mem_addr_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(9),
      O => o_mem_addr(9)
    );
o_mem_en_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_mem_en_OBUF,
      O => o_mem_en
    );
o_mem_en_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => curr_state(2),
      O => o_mem_en_OBUF
    );
o_mem_we_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_mem_we
    );
\o_z0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00BF"
    )
        port map (
      I0 => curr_state(0),
      I1 => curr_state(2),
      I2 => curr_state(1),
      I3 => i_rst_IBUF,
      O => \o_z0[7]_i_1_n_0\
    );
\o_z0[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_rst_IBUF,
      O => \o_z0[7]_i_2_n_0\
    );
\o_z0_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z0_OBUF(0),
      O => o_z0(0)
    );
\o_z0_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z0_OBUF(1),
      O => o_z0(1)
    );
\o_z0_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z0_OBUF(2),
      O => o_z0(2)
    );
\o_z0_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z0_OBUF(3),
      O => o_z0(3)
    );
\o_z0_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z0_OBUF(4),
      O => o_z0(4)
    );
\o_z0_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z0_OBUF(5),
      O => o_z0(5)
    );
\o_z0_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z0_OBUF(6),
      O => o_z0(6)
    );
\o_z0_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z0_OBUF(7),
      O => o_z0(7)
    );
\o_z0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z0_reg_n_0_[0]\,
      Q => o_z0_OBUF(0),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z0_reg_n_0_[1]\,
      Q => o_z0_OBUF(1),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z0_reg_n_0_[2]\,
      Q => o_z0_OBUF(2),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z0_reg_n_0_[3]\,
      Q => o_z0_OBUF(3),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z0_reg_n_0_[4]\,
      Q => o_z0_OBUF(4),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z0_reg_n_0_[5]\,
      Q => o_z0_OBUF(5),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z0_reg_n_0_[6]\,
      Q => o_z0_OBUF(6),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z0_reg_n_0_[7]\,
      Q => o_z0_OBUF(7),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z1_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z1_OBUF(0),
      O => o_z1(0)
    );
\o_z1_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z1_OBUF(1),
      O => o_z1(1)
    );
\o_z1_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z1_OBUF(2),
      O => o_z1(2)
    );
\o_z1_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z1_OBUF(3),
      O => o_z1(3)
    );
\o_z1_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z1_OBUF(4),
      O => o_z1(4)
    );
\o_z1_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z1_OBUF(5),
      O => o_z1(5)
    );
\o_z1_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z1_OBUF(6),
      O => o_z1(6)
    );
\o_z1_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z1_OBUF(7),
      O => o_z1(7)
    );
\o_z1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z1_reg_n_0_[0]\,
      Q => o_z1_OBUF(0),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z1_reg_n_0_[1]\,
      Q => o_z1_OBUF(1),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z1_reg_n_0_[2]\,
      Q => o_z1_OBUF(2),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z1_reg_n_0_[3]\,
      Q => o_z1_OBUF(3),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z1_reg_n_0_[4]\,
      Q => o_z1_OBUF(4),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z1_reg_n_0_[5]\,
      Q => o_z1_OBUF(5),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z1_reg_n_0_[6]\,
      Q => o_z1_OBUF(6),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z1_reg_n_0_[7]\,
      Q => o_z1_OBUF(7),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z2_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z2_OBUF(0),
      O => o_z2(0)
    );
\o_z2_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z2_OBUF(1),
      O => o_z2(1)
    );
\o_z2_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z2_OBUF(2),
      O => o_z2(2)
    );
\o_z2_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z2_OBUF(3),
      O => o_z2(3)
    );
\o_z2_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z2_OBUF(4),
      O => o_z2(4)
    );
\o_z2_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z2_OBUF(5),
      O => o_z2(5)
    );
\o_z2_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z2_OBUF(6),
      O => o_z2(6)
    );
\o_z2_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z2_OBUF(7),
      O => o_z2(7)
    );
\o_z2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z2_reg_n_0_[0]\,
      Q => o_z2_OBUF(0),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z2_reg_n_0_[1]\,
      Q => o_z2_OBUF(1),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z2_reg_n_0_[2]\,
      Q => o_z2_OBUF(2),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z2_reg_n_0_[3]\,
      Q => o_z2_OBUF(3),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z2_reg_n_0_[4]\,
      Q => o_z2_OBUF(4),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z2_reg_n_0_[5]\,
      Q => o_z2_OBUF(5),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z2_reg_n_0_[6]\,
      Q => o_z2_OBUF(6),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z2_reg_n_0_[7]\,
      Q => o_z2_OBUF(7),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z3_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z3_OBUF(0),
      O => o_z3(0)
    );
\o_z3_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z3_OBUF(1),
      O => o_z3(1)
    );
\o_z3_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z3_OBUF(2),
      O => o_z3(2)
    );
\o_z3_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z3_OBUF(3),
      O => o_z3(3)
    );
\o_z3_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z3_OBUF(4),
      O => o_z3(4)
    );
\o_z3_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z3_OBUF(5),
      O => o_z3(5)
    );
\o_z3_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z3_OBUF(6),
      O => o_z3(6)
    );
\o_z3_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z3_OBUF(7),
      O => o_z3(7)
    );
\o_z3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z3_reg_n_0_[0]\,
      Q => o_z3_OBUF(0),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z3_reg_n_0_[1]\,
      Q => o_z3_OBUF(1),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z3_reg_n_0_[2]\,
      Q => o_z3_OBUF(2),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z3_reg_n_0_[3]\,
      Q => o_z3_OBUF(3),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z3_reg_n_0_[4]\,
      Q => o_z3_OBUF(4),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z3_reg_n_0_[5]\,
      Q => o_z3_OBUF(5),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z3_reg_n_0_[6]\,
      Q => o_z3_OBUF(6),
      R => \o_z0[7]_i_1_n_0\
    );
\o_z3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_z0[7]_i_2_n_0\,
      D => \data_z3_reg_n_0_[7]\,
      Q => o_z3_OBUF(7),
      R => \o_z0[7]_i_1_n_0\
    );
\out_0[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_mem_data_IBUF(0),
      I1 => out_two_bit_sreg(0),
      O => \out_0[0]_i_1_n_0\
    );
\out_0[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_mem_data_IBUF(1),
      I1 => out_two_bit_sreg(0),
      O => \out_0[1]_i_1_n_0\
    );
\out_0[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_mem_data_IBUF(2),
      I1 => out_two_bit_sreg(0),
      O => \out_0[2]_i_1_n_0\
    );
\out_0[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_mem_data_IBUF(3),
      I1 => out_two_bit_sreg(0),
      O => \out_0[3]_i_1_n_0\
    );
\out_0[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_mem_data_IBUF(4),
      I1 => out_two_bit_sreg(0),
      O => \out_0[4]_i_1_n_0\
    );
\out_0[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_mem_data_IBUF(5),
      I1 => out_two_bit_sreg(0),
      O => \out_0[5]_i_1_n_0\
    );
\out_0[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_mem_data_IBUF(6),
      I1 => out_two_bit_sreg(0),
      O => \out_0[6]_i_1_n_0\
    );
\out_0[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_mem_data_IBUF(7),
      I1 => out_two_bit_sreg(0),
      O => \out_0[7]_i_1_n_0\
    );
\out_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \out_0[0]_i_1_n_0\,
      Q => out_0(0),
      R => out_two_bit_sreg(1)
    );
\out_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \out_0[1]_i_1_n_0\,
      Q => out_0(1),
      R => out_two_bit_sreg(1)
    );
\out_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \out_0[2]_i_1_n_0\,
      Q => out_0(2),
      R => out_two_bit_sreg(1)
    );
\out_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \out_0[3]_i_1_n_0\,
      Q => out_0(3),
      R => out_two_bit_sreg(1)
    );
\out_0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \out_0[4]_i_1_n_0\,
      Q => out_0(4),
      R => out_two_bit_sreg(1)
    );
\out_0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \out_0[5]_i_1_n_0\,
      Q => out_0(5),
      R => out_two_bit_sreg(1)
    );
\out_0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \out_0[6]_i_1_n_0\,
      Q => out_0(6),
      R => out_two_bit_sreg(1)
    );
\out_0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \out_0[7]_i_1_n_0\,
      Q => out_0(7),
      R => out_two_bit_sreg(1)
    );
\out_1[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_mem_data_IBUF(0),
      I1 => out_two_bit_sreg(0),
      I2 => out_two_bit_sreg(1),
      O => p_0_in(0)
    );
\out_1[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_mem_data_IBUF(1),
      I1 => out_two_bit_sreg(0),
      I2 => out_two_bit_sreg(1),
      O => p_0_in(1)
    );
\out_1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_mem_data_IBUF(2),
      I1 => out_two_bit_sreg(0),
      I2 => out_two_bit_sreg(1),
      O => p_0_in(2)
    );
\out_1[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_mem_data_IBUF(3),
      I1 => out_two_bit_sreg(0),
      I2 => out_two_bit_sreg(1),
      O => p_0_in(3)
    );
\out_1[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_mem_data_IBUF(4),
      I1 => out_two_bit_sreg(0),
      I2 => out_two_bit_sreg(1),
      O => p_0_in(4)
    );
\out_1[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_mem_data_IBUF(5),
      I1 => out_two_bit_sreg(0),
      I2 => out_two_bit_sreg(1),
      O => p_0_in(5)
    );
\out_1[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_mem_data_IBUF(6),
      I1 => out_two_bit_sreg(0),
      I2 => out_two_bit_sreg(1),
      O => p_0_in(6)
    );
\out_1[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => i_mem_data_IBUF(7),
      I1 => out_two_bit_sreg(0),
      I2 => out_two_bit_sreg(1),
      O => p_0_in(7)
    );
\out_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => set_0_i_2_n_0,
      D => p_0_in(0),
      Q => \out_1_reg_n_0_[0]\,
      R => set_1
    );
\out_1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => set_0_i_2_n_0,
      D => p_0_in(1),
      Q => \out_1_reg_n_0_[1]\,
      R => set_1
    );
\out_1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => set_0_i_2_n_0,
      D => p_0_in(2),
      Q => \out_1_reg_n_0_[2]\,
      R => set_1
    );
\out_1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => set_0_i_2_n_0,
      D => p_0_in(3),
      Q => \out_1_reg_n_0_[3]\,
      R => set_1
    );
\out_1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => set_0_i_2_n_0,
      D => p_0_in(4),
      Q => \out_1_reg_n_0_[4]\,
      R => set_1
    );
\out_1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => set_0_i_2_n_0,
      D => p_0_in(5),
      Q => \out_1_reg_n_0_[5]\,
      R => set_1
    );
\out_1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => set_0_i_2_n_0,
      D => p_0_in(6),
      Q => \out_1_reg_n_0_[6]\,
      R => set_1
    );
\out_1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => set_0_i_2_n_0,
      D => p_0_in(7),
      Q => \out_1_reg_n_0_[7]\,
      R => set_1
    );
\out_2[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_mem_data_IBUF(0),
      I1 => out_two_bit_sreg(0),
      O => \out_2[0]_i_1_n_0\
    );
\out_2[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_mem_data_IBUF(1),
      I1 => out_two_bit_sreg(0),
      O => \out_2[1]_i_1_n_0\
    );
\out_2[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_mem_data_IBUF(2),
      I1 => out_two_bit_sreg(0),
      O => \out_2[2]_i_1_n_0\
    );
\out_2[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_mem_data_IBUF(3),
      I1 => out_two_bit_sreg(0),
      O => \out_2[3]_i_1_n_0\
    );
\out_2[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_mem_data_IBUF(4),
      I1 => out_two_bit_sreg(0),
      O => \out_2[4]_i_1_n_0\
    );
\out_2[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_mem_data_IBUF(5),
      I1 => out_two_bit_sreg(0),
      O => \out_2[5]_i_1_n_0\
    );
\out_2[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_mem_data_IBUF(6),
      I1 => out_two_bit_sreg(0),
      O => \out_2[6]_i_1_n_0\
    );
\out_2[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => out_two_bit_sreg(1),
      O => \out_2[7]_i_1_n_0\
    );
\out_2[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_mem_data_IBUF(7),
      I1 => out_two_bit_sreg(0),
      O => \out_2[7]_i_2_n_0\
    );
\out_2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \out_2[0]_i_1_n_0\,
      Q => \out_2_reg_n_0_[0]\,
      R => \out_2[7]_i_1_n_0\
    );
\out_2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \out_2[1]_i_1_n_0\,
      Q => \out_2_reg_n_0_[1]\,
      R => \out_2[7]_i_1_n_0\
    );
\out_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \out_2[2]_i_1_n_0\,
      Q => \out_2_reg_n_0_[2]\,
      R => \out_2[7]_i_1_n_0\
    );
\out_2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \out_2[3]_i_1_n_0\,
      Q => \out_2_reg_n_0_[3]\,
      R => \out_2[7]_i_1_n_0\
    );
\out_2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \out_2[4]_i_1_n_0\,
      Q => \out_2_reg_n_0_[4]\,
      R => \out_2[7]_i_1_n_0\
    );
\out_2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \out_2[5]_i_1_n_0\,
      Q => \out_2_reg_n_0_[5]\,
      R => \out_2[7]_i_1_n_0\
    );
\out_2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \out_2[6]_i_1_n_0\,
      Q => \out_2_reg_n_0_[6]\,
      R => \out_2[7]_i_1_n_0\
    );
\out_2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \out_2[7]_i_2_n_0\,
      Q => \out_2_reg_n_0_[7]\,
      R => \out_2[7]_i_1_n_0\
    );
\out_3[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => out_two_bit_sreg(0),
      I1 => out_two_bit_sreg(1),
      O => \out_3[7]_i_1_n_0\
    );
\out_3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => i_mem_data_IBUF(0),
      Q => out_3(0),
      R => \out_3[7]_i_1_n_0\
    );
\out_3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => i_mem_data_IBUF(1),
      Q => out_3(1),
      R => \out_3[7]_i_1_n_0\
    );
\out_3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => i_mem_data_IBUF(2),
      Q => out_3(2),
      R => \out_3[7]_i_1_n_0\
    );
\out_3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => i_mem_data_IBUF(3),
      Q => out_3(3),
      R => \out_3[7]_i_1_n_0\
    );
\out_3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => i_mem_data_IBUF(4),
      Q => out_3(4),
      R => \out_3[7]_i_1_n_0\
    );
\out_3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => i_mem_data_IBUF(5),
      Q => out_3(5),
      R => \out_3[7]_i_1_n_0\
    );
\out_3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => i_mem_data_IBUF(6),
      Q => out_3(6),
      R => \out_3[7]_i_1_n_0\
    );
\out_3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => i_mem_data_IBUF(7),
      Q => out_3(7),
      R => \out_3[7]_i_1_n_0\
    );
\out_two_bit_sreg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"83"
    )
        port map (
      I0 => curr_state(0),
      I1 => curr_state(1),
      I2 => curr_state(2),
      O => set_two_bit
    );
\out_two_bit_sreg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFA800A"
    )
        port map (
      I0 => out_two_bit_sreg(0),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => curr_state(2),
      I4 => out_two_bit_sreg(1),
      O => \out_two_bit_sreg[1]_i_1_n_0\
    );
\out_two_bit_sreg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => set_two_bit,
      D => i_w_IBUF,
      Q => out_two_bit_sreg(0),
      R => '0'
    );
\out_two_bit_sreg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \out_two_bit_sreg[1]_i_1_n_0\,
      Q => out_two_bit_sreg(1),
      R => '0'
    );
set_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => out_two_bit_sreg(1),
      I1 => out_two_bit_sreg(0),
      O => set_1
    );
set_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => out_two_bit_sreg(1),
      I1 => out_two_bit_sreg(0),
      O => set_0_i_2_n_0
    );
set_0_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => set_0_i_2_n_0,
      D => '0',
      Q => set_0,
      S => set_1
    );
set_1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => out_two_bit_sreg(0),
      I1 => out_two_bit_sreg(1),
      O => set_2
    );
set_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => set_0_i_2_n_0,
      D => set_2,
      Q => set_1_reg_n_0,
      R => set_1
    );
set_2_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => out_two_bit_sreg(0),
      O => set_2_i_1_n_0
    );
set_2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => set_2_i_1_n_0,
      Q => set_2_reg_n_0,
      R => \out_2[7]_i_1_n_0\
    );
set_3_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => out_two_bit_sreg(1),
      I1 => out_two_bit_sreg(0),
      O => set_3_i_1_n_0
    );
set_3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => set_3_i_1_n_0,
      Q => set_3_reg_n_0,
      R => '0'
    );
end STRUCTURE;
