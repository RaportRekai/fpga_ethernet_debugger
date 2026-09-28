-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon Mar  9 02:08:18 2026
-- Host        : atlas1 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/dan/corundum/fpga/mqnic/Alveo/fpga_25g/fpga_AU200/fpga.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_0/ip/ip_0/bd_fb99_build_info_cmc_0_sim_netlist.vhdl
-- Design      : bd_fb99_build_info_cmc_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu200-fsgd2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_fb99_build_info_cmc_0_address_decoder is
  port (
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ : out STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\ : out STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARESETN_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    start2 : in STD_LOGIC;
    IP2Bus_WrAck : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\ : in STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2\ : in STD_LOGIC;
    bus2ip_rnw_i : in STD_LOGIC;
    \Scratch_reg[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_fb99_build_info_cmc_0_address_decoder : entity is "address_decoder";
end bd_fb99_build_info_cmc_0_address_decoder;

architecture STRUCTURE of bd_fb99_build_info_cmc_0_address_decoder is
  signal Bus2IP_CS : STD_LOGIC;
  signal \^include_dphase_timer.dpto_cnt_reg[2]\ : STD_LOGIC;
  signal \^include_dphase_timer.dpto_cnt_reg[2]_0\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \IP2Bus_Ack[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \IP2Bus_Data[31]_i_1\ : label is "soft_lutpair0";
begin
  \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\ <= \^include_dphase_timer.dpto_cnt_reg[2]\;
  \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0\ <= \^include_dphase_timer.dpto_cnt_reg[2]_0\;
\IP2Bus_Ack[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Bus2IP_CS,
      I1 => S_AXI_ARESETN,
      O => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\
    );
\IP2Bus_Data[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => Bus2IP_CS,
      O => S_AXI_ARESETN_0(0)
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005400"
    )
        port map (
      I0 => \^include_dphase_timer.dpto_cnt_reg[2]\,
      I1 => Bus2IP_CS,
      I2 => start2,
      I3 => S_AXI_ARESETN,
      I4 => IP2Bus_WrAck,
      I5 => \^include_dphase_timer.dpto_cnt_reg[2]_0\,
      O => \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\
    );
\MEM_DECODE_GEN[0].cs_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\,
      Q => Bus2IP_CS,
      R => '0'
    );
\Scratch[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => bus2ip_rnw_i,
      I1 => Bus2IP_CS,
      I2 => \Scratch_reg[0]\(0),
      I3 => \Scratch_reg[0]\(2),
      I4 => \Scratch_reg[0]\(1),
      O => E(0)
    );
s_axi_bvalid_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2\,
      I3 => Q(0),
      I4 => Q(4),
      I5 => Q(3),
      O => \^include_dphase_timer.dpto_cnt_reg[2]_0\
    );
s_axi_rvalid_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\,
      I3 => Q(0),
      I4 => Q(4),
      I5 => Q(3),
      O => \^include_dphase_timer.dpto_cnt_reg[2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_fb99_build_info_cmc_0_slave_attachment is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid_i_reg_0 : out STD_LOGIC;
    s_axi_bvalid_i_reg_0 : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARESETN_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    IP2Bus_WrAck : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \IP2Bus_Data_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_fb99_build_info_cmc_0_slave_attachment : entity is "slave_attachment";
end bd_fb99_build_info_cmc_0_slave_attachment;

architecture STRUCTURE of bd_fb99_build_info_cmc_0_slave_attachment is
  signal Bus2IP_Addr : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal I_DECODER_n_1 : STD_LOGIC;
  signal I_DECODER_n_2 : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_WREADY_INST_0_i_1_n_0 : STD_LOGIC;
  signal \bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[4]_i_1_n_0\ : STD_LOGIC;
  signal bus2ip_rnw_i : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal is_read : STD_LOGIC;
  signal is_read_i_1_n_0 : STD_LOGIC;
  signal is_read_reg_n_0 : STD_LOGIC;
  signal is_write : STD_LOGIC;
  signal is_write_reg_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rst : STD_LOGIC;
  signal s_axi_bresp_i : STD_LOGIC;
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_bvalid_i_reg_0\ : STD_LOGIC;
  signal s_axi_rresp_i : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_i_reg_0\ : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal \state1__2\ : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_2\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \IP2Bus_Data[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \IP2Bus_Data[10]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \IP2Bus_Data[11]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \IP2Bus_Data[12]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \IP2Bus_Data[13]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \IP2Bus_Data[14]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \IP2Bus_Data[15]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \IP2Bus_Data[16]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \IP2Bus_Data[17]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \IP2Bus_Data[18]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \IP2Bus_Data[19]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \IP2Bus_Data[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \IP2Bus_Data[20]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \IP2Bus_Data[21]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \IP2Bus_Data[22]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \IP2Bus_Data[23]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \IP2Bus_Data[24]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \IP2Bus_Data[25]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \IP2Bus_Data[26]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \IP2Bus_Data[27]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \IP2Bus_Data[28]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \IP2Bus_Data[29]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \IP2Bus_Data[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \IP2Bus_Data[30]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \IP2Bus_Data[31]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \IP2Bus_Data[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \IP2Bus_Data[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \IP2Bus_Data[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \IP2Bus_Data[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \IP2Bus_Data[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \IP2Bus_Data[8]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \IP2Bus_Data[9]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of is_read_i_2 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of is_write_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair2";
begin
  SR(0) <= \^sr\(0);
  s_axi_bvalid_i_reg_0 <= \^s_axi_bvalid_i_reg_0\;
  s_axi_rvalid_i_reg_0 <= \^s_axi_rvalid_i_reg_0\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF007000700070"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => S_AXI_WVALID,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => S_AXI_ARVALID,
      I4 => \state1__2\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => S_AXI_BREADY,
      I1 => \^s_axi_bvalid_i_reg_0\,
      I2 => S_AXI_RREADY,
      I3 => \^s_axi_rvalid_i_reg_0\,
      O => \state1__2\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888F8888"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => I_DECODER_n_1,
      I3 => IP2Bus_WrAck,
      I4 => s_axi_rresp_i,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"040404FF04040404"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => S_AXI_ARVALID,
      I3 => I_DECODER_n_2,
      I4 => IP2Bus_WrAck,
      I5 => s_axi_bresp_i,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => S_AXI_WVALID,
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAEEEEEAEA"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_2_n_0\,
      I1 => s_axi_bresp_i,
      I2 => I_DECODER_n_2,
      I3 => I_DECODER_n_1,
      I4 => IP2Bus_WrAck,
      I5 => s_axi_rresp_i,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002A2A2A"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \^s_axi_rvalid_i_reg_0\,
      I2 => S_AXI_RREADY,
      I3 => \^s_axi_bvalid_i_reg_0\,
      I4 => S_AXI_BREADY,
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => rst
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => s_axi_rresp_i,
      R => rst
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => s_axi_bresp_i,
      R => rst
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => rst
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      O => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(4),
      O => plusOp(4)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => plusOp(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => plusOp(3),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => plusOp(4),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(4),
      R => clear
    );
\IP2Bus_Data[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(0),
      O => D(0)
    );
\IP2Bus_Data[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C0"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(10),
      I1 => Bus2IP_Addr(2),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(4),
      O => D(10)
    );
\IP2Bus_Data[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C0"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(11),
      I1 => Bus2IP_Addr(2),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(4),
      O => D(11)
    );
\IP2Bus_Data[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C0"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(12),
      I1 => Bus2IP_Addr(2),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(4),
      O => D(12)
    );
\IP2Bus_Data[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3803"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(13),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(2),
      O => D(13)
    );
\IP2Bus_Data[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C0"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(14),
      I1 => Bus2IP_Addr(2),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(4),
      O => D(14)
    );
\IP2Bus_Data[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C0"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(15),
      I1 => Bus2IP_Addr(2),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(4),
      O => D(15)
    );
\IP2Bus_Data[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C0"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(16),
      I1 => Bus2IP_Addr(2),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(4),
      O => D(16)
    );
\IP2Bus_Data[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3803"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(17),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(2),
      O => D(17)
    );
\IP2Bus_Data[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F00"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(18),
      I1 => Bus2IP_Addr(3),
      I2 => Bus2IP_Addr(4),
      I3 => Bus2IP_Addr(2),
      O => D(18)
    );
\IP2Bus_Data[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(19),
      O => D(19)
    );
\IP2Bus_Data[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2003"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(1),
      I1 => Bus2IP_Addr(3),
      I2 => Bus2IP_Addr(4),
      I3 => Bus2IP_Addr(2),
      O => D(1)
    );
\IP2Bus_Data[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C0"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(20),
      I1 => Bus2IP_Addr(2),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(4),
      O => D(20)
    );
\IP2Bus_Data[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3803"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(21),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(2),
      O => D(21)
    );
\IP2Bus_Data[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(22),
      O => D(22)
    );
\IP2Bus_Data[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(23),
      O => D(23)
    );
\IP2Bus_Data[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(24),
      O => D(24)
    );
\IP2Bus_Data[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(25),
      O => D(25)
    );
\IP2Bus_Data[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(26),
      O => D(26)
    );
\IP2Bus_Data[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(27),
      O => D(27)
    );
\IP2Bus_Data[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(28),
      O => D(28)
    );
\IP2Bus_Data[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2003"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(29),
      I1 => Bus2IP_Addr(3),
      I2 => Bus2IP_Addr(4),
      I3 => Bus2IP_Addr(2),
      O => D(29)
    );
\IP2Bus_Data[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"200C"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(2),
      I1 => Bus2IP_Addr(3),
      I2 => Bus2IP_Addr(4),
      I3 => Bus2IP_Addr(2),
      O => D(2)
    );
\IP2Bus_Data[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(30),
      O => D(30)
    );
\IP2Bus_Data[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(31),
      O => D(31)
    );
\IP2Bus_Data[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C0"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(3),
      I1 => Bus2IP_Addr(2),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(4),
      O => D(3)
    );
\IP2Bus_Data[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C0"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(4),
      I1 => Bus2IP_Addr(2),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(4),
      O => D(4)
    );
\IP2Bus_Data[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(5),
      O => D(5)
    );
\IP2Bus_Data[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C0"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(6),
      I1 => Bus2IP_Addr(2),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(4),
      O => D(6)
    );
\IP2Bus_Data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(4),
      I2 => Bus2IP_Addr(3),
      I3 => \IP2Bus_Data_reg[31]\(7),
      O => D(7)
    );
\IP2Bus_Data[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C0"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(8),
      I1 => Bus2IP_Addr(2),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(4),
      O => D(8)
    );
\IP2Bus_Data[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C0"
    )
        port map (
      I0 => \IP2Bus_Data_reg[31]\(9),
      I1 => Bus2IP_Addr(2),
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(4),
      O => D(9)
    );
I_DECODER: entity work.bd_fb99_build_info_cmc_0_address_decoder
     port map (
      E(0) => E(0),
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\ => I_DECODER_n_1,
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0\ => I_DECODER_n_2,
      IP2Bus_WrAck => IP2Bus_WrAck,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\ => is_read_reg_n_0,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2\ => is_write_reg_n_0,
      Q(4 downto 0) => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(4 downto 0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARESETN_0(0) => S_AXI_ARESETN_0(0),
      \Scratch_reg[0]\(2 downto 0) => Bus2IP_Addr(4 downto 2),
      bus2ip_rnw_i => bus2ip_rnw_i,
      start2 => start2
    );
S_AXI_ARREADY_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00200000"
    )
        port map (
      I0 => S_AXI_WREADY_INST_0_i_1_n_0,
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I2 => is_read_reg_n_0,
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I5 => IP2Bus_WrAck,
      O => S_AXI_ARREADY
    );
S_AXI_WREADY_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00200000"
    )
        port map (
      I0 => S_AXI_WREADY_INST_0_i_1_n_0,
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I2 => is_write_reg_n_0,
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I5 => IP2Bus_WrAck,
      O => S_AXI_AWREADY
    );
S_AXI_WREADY_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(4),
      O => S_AXI_WREADY_INST_0_i_1_n_0
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_ARADDR(0),
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_AWADDR(0),
      O => \bus2ip_addr_i[2]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_ARADDR(1),
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_AWADDR(1),
      O => \bus2ip_addr_i[3]_i_1_n_0\
    );
\bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_ARADDR(2),
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_AWADDR(2),
      O => \bus2ip_addr_i[4]_i_1_n_0\
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[2]_i_1_n_0\,
      Q => Bus2IP_Addr(2),
      R => rst
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[3]_i_1_n_0\,
      Q => Bus2IP_Addr(3),
      R => rst
    );
\bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => start2_i_1_n_0,
      D => \bus2ip_addr_i[4]_i_1_n_0\,
      Q => Bus2IP_Addr(4),
      R => rst
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => start2_i_1_n_0,
      D => S_AXI_ARVALID,
      Q => bus2ip_rnw_i,
      R => rst
    );
is_read_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8880000"
    )
        port map (
      I0 => S_AXI_BREADY,
      I1 => \^s_axi_bvalid_i_reg_0\,
      I2 => S_AXI_RREADY,
      I3 => \^s_axi_rvalid_i_reg_0\,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => is_read_i_1_n_0
    );
is_read_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => S_AXI_ARVALID,
      O => is_read
    );
is_read_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => is_read_i_1_n_0,
      D => is_read,
      Q => is_read_reg_n_0,
      R => rst
    );
is_write_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => S_AXI_WVALID,
      I3 => S_AXI_AWVALID,
      O => is_write
    );
is_write_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => is_read_i_1_n_0,
      D => is_write,
      Q => is_write_reg_n_0,
      R => rst
    );
rst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => \^sr\(0)
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \^sr\(0),
      Q => rst,
      R => '0'
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E0FFFF00E000E0"
    )
        port map (
      I0 => I_DECODER_n_2,
      I1 => IP2Bus_WrAck,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => S_AXI_BREADY,
      I5 => \^s_axi_bvalid_i_reg_0\,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^s_axi_bvalid_i_reg_0\,
      R => rst
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(0),
      Q => S_AXI_RDATA(0),
      R => rst
    );
\s_axi_rdata_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(10),
      Q => S_AXI_RDATA(10),
      R => rst
    );
\s_axi_rdata_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(11),
      Q => S_AXI_RDATA(11),
      R => rst
    );
\s_axi_rdata_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(12),
      Q => S_AXI_RDATA(12),
      R => rst
    );
\s_axi_rdata_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(13),
      Q => S_AXI_RDATA(13),
      R => rst
    );
\s_axi_rdata_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(14),
      Q => S_AXI_RDATA(14),
      R => rst
    );
\s_axi_rdata_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(15),
      Q => S_AXI_RDATA(15),
      R => rst
    );
\s_axi_rdata_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(16),
      Q => S_AXI_RDATA(16),
      R => rst
    );
\s_axi_rdata_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(17),
      Q => S_AXI_RDATA(17),
      R => rst
    );
\s_axi_rdata_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(18),
      Q => S_AXI_RDATA(18),
      R => rst
    );
\s_axi_rdata_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(19),
      Q => S_AXI_RDATA(19),
      R => rst
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(1),
      Q => S_AXI_RDATA(1),
      R => rst
    );
\s_axi_rdata_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(20),
      Q => S_AXI_RDATA(20),
      R => rst
    );
\s_axi_rdata_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(21),
      Q => S_AXI_RDATA(21),
      R => rst
    );
\s_axi_rdata_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(22),
      Q => S_AXI_RDATA(22),
      R => rst
    );
\s_axi_rdata_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(23),
      Q => S_AXI_RDATA(23),
      R => rst
    );
\s_axi_rdata_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(24),
      Q => S_AXI_RDATA(24),
      R => rst
    );
\s_axi_rdata_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(25),
      Q => S_AXI_RDATA(25),
      R => rst
    );
\s_axi_rdata_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(26),
      Q => S_AXI_RDATA(26),
      R => rst
    );
\s_axi_rdata_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(27),
      Q => S_AXI_RDATA(27),
      R => rst
    );
\s_axi_rdata_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(28),
      Q => S_AXI_RDATA(28),
      R => rst
    );
\s_axi_rdata_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(29),
      Q => S_AXI_RDATA(29),
      R => rst
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(2),
      Q => S_AXI_RDATA(2),
      R => rst
    );
\s_axi_rdata_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(30),
      Q => S_AXI_RDATA(30),
      R => rst
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(31),
      Q => S_AXI_RDATA(31),
      R => rst
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(3),
      Q => S_AXI_RDATA(3),
      R => rst
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(4),
      Q => S_AXI_RDATA(4),
      R => rst
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(5),
      Q => S_AXI_RDATA(5),
      R => rst
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(6),
      Q => S_AXI_RDATA(6),
      R => rst
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(7),
      Q => S_AXI_RDATA(7),
      R => rst
    );
\s_axi_rdata_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(8),
      Q => S_AXI_RDATA(8),
      R => rst
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => Q(9),
      Q => S_AXI_RDATA(9),
      R => rst
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E0FFFF00E000E0"
    )
        port map (
      I0 => I_DECODER_n_1,
      I1 => IP2Bus_WrAck,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => S_AXI_RREADY,
      I5 => \^s_axi_rvalid_i_reg_0\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_rvalid_i_reg_0\,
      R => rst
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F8"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => S_AXI_WVALID,
      I2 => S_AXI_ARVALID,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => rst
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FEEFFFF0FEEFF00"
    )
        port map (
      I0 => IP2Bus_WrAck,
      I1 => I_DECODER_n_2,
      I2 => \state1__2\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => S_AXI_ARVALID,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4440EEEA"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => IP2Bus_WrAck,
      I3 => I_DECODER_n_1,
      I4 => \state1__2\,
      I5 => \state[1]_i_2_n_0\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF0008"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => S_AXI_WVALID,
      I2 => S_AXI_ARVALID,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      O => \state[1]_i_2_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => rst
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_fb99_build_info_cmc_0_axi_lite_ipif is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid_i_reg : out STD_LOGIC;
    s_axi_bvalid_i_reg : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARESETN_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    IP2Bus_WrAck : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \IP2Bus_Data_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_fb99_build_info_cmc_0_axi_lite_ipif : entity is "axi_lite_ipif";
end bd_fb99_build_info_cmc_0_axi_lite_ipif;

architecture STRUCTURE of bd_fb99_build_info_cmc_0_axi_lite_ipif is
begin
I_SLAVE_ATTACHMENT: entity work.bd_fb99_build_info_cmc_0_slave_attachment
     port map (
      D(31 downto 0) => D(31 downto 0),
      E(0) => E(0),
      \IP2Bus_Data_reg[31]\(31 downto 0) => \IP2Bus_Data_reg[31]\(31 downto 0),
      IP2Bus_WrAck => IP2Bus_WrAck,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      Q(31 downto 0) => Q(31 downto 0),
      SR(0) => SR(0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(2 downto 0) => S_AXI_ARADDR(2 downto 0),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARESETN_0(0) => S_AXI_ARESETN_0(0),
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(2 downto 0) => S_AXI_AWADDR(2 downto 0),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_WVALID => S_AXI_WVALID,
      s_axi_bvalid_i_reg_0 => s_axi_bvalid_i_reg,
      s_axi_rvalid_i_reg_0 => s_axi_rvalid_i_reg
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
WZwslNUvxQZsXn79NcOp4Z7PnrnSD46zevYDg8mrJzjCbs0tTTR2HP2nzMCYcU9SOXZhegwLOvnB
O30Iyp5XXROMUBQRmKf8fZZFpYHaaXSRoR5wqANJ2TkmuhI9MgpEk73ld9Z3wJP6HT6iF2298vMz
PTts7D9wDSg5vkZfJws=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
sUWJ31BiZTj2f4k5NGzDlohns7ylf5BzBT9A6CMfpso6OQ30HUbbD85LtCyhBNn4KqYu15f+TZqf
Ir3LEXHXgIFTzw8GwzYL/GyBRhaFkCNe17zfLP0jFJM6V2ranMQZ+O+8yOmTLuYFkQbjKSUrywGm
K+m+9fLaoext7iOzkbmNZtJtii9Vq1qU/WqUDQwHPAuMep5V7JkOb7GS5uBGx3+mfqF4MNvf0ViF
NsJGrIbpll0N0bG3a0r0nEcwJlsiYtQizHfIa+FSbfAxTdzaxWsizG3tZVCbS6SvlojQz9jPo3ZS
ytboOAKx5MZNKc/za9ZPZ/jkE64GvGl1iE/Q6Q==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
CdUNiwPuTejJrcMt6AY7FVIA2RhCFMisZC8Yht8scwAWQmCb2POfNQ10Heq3bwmDmjaugOrSWdil
wjAX4eGII3n0u5+hwf+uXmyQLlPGjH71/vAt/+LzRDIwdqsMKFI1UdiMEOjbkwgZ0oFObsbdaZyr
A5UBEGSsab8B9NWWwYA=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
XcflpchNS+sCr6VQWlYOThmE1Ae+0tVlnoG2iiBh84HjVfsckhNspygH13FQJbEoJT9vaX8S1g2+
fgaKKcaa/E0CBF25ck/u0Im/oW/CZAmhFSwSA8JUk1e7O6dNB2ucuxAAesSyOvjNGat0ULEP20bP
HqtOcyI9xTrRgLwOfP7iqQzaY/qILuAHVB+cbdF94jiWdHu+dnTiDP2ylvDPQAdYfJttGvHxmfJe
YLlg+Nvnwv8uXPJXfIVspBzIK4kH1NJgl02y0bNoYfeDnmTP0M2nYSLze0oGxzKTJFEphCxN/dM6
RCmgmciv5GzH0smW8uxcfr5Cqz7avJl3B/tlqg==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
5IwwyjV6MXUNvlkzsRUVC2F6OeH/C+u9FXZEUMsBBXIra5Nbbw9AA1uPwdZcebSdbH4YK9jFsafH
q4CTrFJtI0qRxQKC4Y99k7cRaFd531sl2AeVtd8XkUyyuFdDD0tNoERgqZWiBQ5V9FdHeLgl+zP+
Nq/GE/fOCv5EewIuXW4X1azNEZp5zVfhulc/x446MqqAOtZQ2w4yxty0K34fx+x3EZH4FIAnwv2u
ACv4uOEP7CwifmpztgoiCYpi9WzngYYRiIfanLsqZ65kp0Oqa8ZEijhX1n5pWx066LCJO6fTdq/Z
l1/5GvGXBALOv44Wt0GnRxWKGq16F9IKWb9/3A==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Sf536L0PKWnB9CUbE7SeiBOZ4ay1X/JZ8r1Br50dSjYUDrqC4OWQ7tsQSI03J5bTYSF7ZcUyg89p
Dd3dlAMZeFOxAaaRGQU8PX24LCIeE/1SOQ82rfOn1fyAOsj3b31FuPzBUITIacVy4N+PVHahELV/
xSvaQ5oWDhIzJV72Ft5Lr5vQvABXMy1nNF8oZ5AsrqwfmHcCjgAb0sIWpQ0C3k34wgu970OXuagA
eCu8MnX4ECzCe3y5os+2/JzMWwaAi0SDjtO5DAlLbDkqCDbHra1jakp7/6cGPI+uHybt4kljCSBk
+SUk+cDjz5k8oiv90jmBv2W6QcA61xsJMFBEGQ==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
J+udShblpCk44uoSpJJv3IeIhXBy/pm7iBsJZrKJDQshqtuPikJLuWbU7fPfFiWF/8N8LLSd/VJp
O4wCWggUSVP4m37elRJnQk59lGODXijRVkDr4qp2HGu4sU608862GAM9508RkveHH5B5rzT0H4io
w5OpUin0atQVGUq2+AAB8aFdmrdp/v1shkaVtYI1vKolU1gtqTPDnc5msL4UK9qCgLPIVaZcJ8zr
/CqYvoxYcY1DUg5OBv4kDrQiFoExV0iDlmEE7CBDNkKBFmELjyx7TInUTDsRnMZex9EDoj8BHz9s
zgCoUR9xMlQtbE6VWRg0YgFAPgowMZOdR2b9ug==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
m0hnNYI4KBfg22EMBAM4Any+pGxSNVq7hUgvjS1ubEfxVn64wRbP126WMhzM5EdO0zI9j23R6a7b
4ZqW4SPIe2qklkGkUbQmPQK2zOnG2GVzn6d2WhUBpqcbWHztDFl8ffW7pYJeQKeAtfJPJfj6i/No
xA6gY9nYizhgRwubaRuQOMF40lUUzSEJeU7CMBifQs/zEPdgBvuuMTzlK0fCelr3Vg6tmDZqIvwB
c9TiANezN0+VijvnTuMZvh1USszTcmrXChLnrvzqc10r7RpkmU2jCqc77JG4xaG0fkonEexOgJab
aT6gtHmHkIuYSTs8Dl5zDhDpqB7c8UrAeSh69vRoW8WxIpccO7r2eNXcvdJHg3YPWwxO68oCuJQ5
jTZgKBKpVwrEAX8ARuX7iyKY5m2yOT6hnOxE35XIx4/+HQEJ/UCvzuaqrzSvGTwOJxXX5OsgMZqn
b3kqi4zWplC/cr/7igK5TbN7fF/iPVj8aI3YtUZ9UKnO0SR87odx7VLV

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
ianLYk2aKRCDUrXK5yhKlVJ6wt4sTkzAIQeajG9vWOEFN4SxnRMV443Wmltx79hPfBS+tVslS8sv
+wToO0J4cVqQqIVBuqCvEZsBYdHK503OKRqfbgcsS484gKRpKOpxbn6Shy0ecsKA7MI2TtHoLByB
3i3wBy9GHCpdAzV9Q8QOxZ5fJUXXSOI0odOU2htGRyyD/1Wmgz5Rw8yUv9DDiKzSI4evzVjWHcMo
vsxGo+lGGYG38OgnAWRwkcxj2t4XgHIKWbg07WNVwuwlU0bLsIeSrcpfI3pnro3voMQO7x01DBcH
stNVSO/kt/452JP/kmUf3RdTGMYm9/NAuTvTpQ==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 24544)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_fb99_build_info_cmc_0 is
  port (
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_fb99_build_info_cmc_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_fb99_build_info_cmc_0 : entity is "bd_fb99_build_info_cmc_0,shell_utils_build_info_v1_0_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of bd_fb99_build_info_cmc_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of bd_fb99_build_info_cmc_0 : entity is "shell_utils_build_info_v1_0_0,Vivado 2022.2";
end bd_fb99_build_info_cmc_0;

architecture STRUCTURE of bd_fb99_build_info_cmc_0 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_U0_S_AXI_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_S_AXI_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_CORE_REVISION : integer;
  attribute C_CORE_REVISION of U0 : label is 4;
  attribute C_MAJOR_VERSION : integer;
  attribute C_MAJOR_VERSION of U0 : label is 4;
  attribute C_MINOR_VERSION : integer;
  attribute C_MINOR_VERSION of U0 : label is 0;
  attribute C_PATCH_VERSION : integer;
  attribute C_PATCH_VERSION of U0 : label is 0;
  attribute C_PERFORCE_CL : integer;
  attribute C_PERFORCE_CL of U0 : label is 3669848;
  attribute C_RESERVED_TAG : string;
  attribute C_RESERVED_TAG of U0 : label is "32'b00000000000000000000000000000000";
  attribute C_SUBSYSTEM_ID : integer;
  attribute C_SUBSYSTEM_ID of U0 : label is 2;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 5;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_VIV_VERSION : integer;
  attribute C_VIV_VERSION of U0 : label is 2105888;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "virtexuplus";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of U0 : label is "true";
  attribute x_interface_info : string;
  attribute x_interface_info of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cms_aclk_ctrl_0, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute x_interface_parameter of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_parameter of S_AXI_AWADDR : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN cms_aclk_ctrl_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.bd_fb99_build_info_cmc_0_shell_utils_build_info_v1_0_0
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(4 downto 2) => S_AXI_ARADDR(4 downto 2),
      S_AXI_ARADDR(1 downto 0) => B"00",
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(4 downto 2) => S_AXI_AWADDR(4 downto 2),
      S_AXI_AWADDR(1 downto 0) => B"00",
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BRESP(1 downto 0) => NLW_U0_S_AXI_BRESP_UNCONNECTED(1 downto 0),
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RRESP(1 downto 0) => NLW_U0_S_AXI_RRESP_UNCONNECTED(1 downto 0),
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => B"0000",
      S_AXI_WVALID => S_AXI_WVALID
    );
end STRUCTURE;
