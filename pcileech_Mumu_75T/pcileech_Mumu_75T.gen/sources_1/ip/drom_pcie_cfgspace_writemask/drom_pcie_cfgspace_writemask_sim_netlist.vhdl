-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed May 28 04:41:46 2025
-- Host        : DESKTOP-TR184UE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Administrator/Desktop/PCIeMu-USB/pcileech_Mumu_75T/pcileech_Mumu_75T.gen/sources_1/ip/drom_pcie_cfgspace_writemask/drom_pcie_cfgspace_writemask_sim_netlist.vhdl
-- Design      : drom_pcie_cfgspace_writemask
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a75tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity drom_pcie_cfgspace_writemask is
  port (
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of drom_pcie_cfgspace_writemask : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of drom_pcie_cfgspace_writemask : entity is "drom_pcie_cfgspace_writemask,dist_mem_gen_v8_0_15,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of drom_pcie_cfgspace_writemask : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of drom_pcie_cfgspace_writemask : entity is "dist_mem_gen_v8_0_15,Vivado 2024.2";
end drom_pcie_cfgspace_writemask;

architecture STRUCTURE of drom_pcie_cfgspace_writemask is
  signal \<const1>\ : STD_LOGIC;
begin
  spo(31) <= \<const1>\;
  spo(30) <= \<const1>\;
  spo(29) <= \<const1>\;
  spo(28) <= \<const1>\;
  spo(27) <= \<const1>\;
  spo(26) <= \<const1>\;
  spo(25) <= \<const1>\;
  spo(24) <= \<const1>\;
  spo(23) <= \<const1>\;
  spo(22) <= \<const1>\;
  spo(21) <= \<const1>\;
  spo(20) <= \<const1>\;
  spo(19) <= \<const1>\;
  spo(18) <= \<const1>\;
  spo(17) <= \<const1>\;
  spo(16) <= \<const1>\;
  spo(15) <= \<const1>\;
  spo(14) <= \<const1>\;
  spo(13) <= \<const1>\;
  spo(12) <= \<const1>\;
  spo(11) <= \<const1>\;
  spo(10) <= \<const1>\;
  spo(9) <= \<const1>\;
  spo(8) <= \<const1>\;
  spo(7) <= \<const1>\;
  spo(6) <= \<const1>\;
  spo(5) <= \<const1>\;
  spo(4) <= \<const1>\;
  spo(3) <= \<const1>\;
  spo(2) <= \<const1>\;
  spo(1) <= \<const1>\;
  spo(0) <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
