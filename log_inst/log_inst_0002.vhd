-- ------------------------------------------------------------------------- 
-- Intel Altera DSP Builder Advanced Flow Tools Release Version 16.1
-- Quartus Prime development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2016 Intel Corporation.  All rights reserved.
-- Your use of  Intel  Corporation's design tools,  logic functions and other
-- software and tools,  and its AMPP  partner logic functions, and  any output
-- files  any of the  foregoing  device programming or simulation files),  and
-- any associated  documentation or information are expressly subject  to  the
-- terms and conditions  of the Intel FPGA Software License Agreement,
-- Intel  MegaCore  Function  License  Agreement, or other applicable license
-- agreement,  including,  without limitation,  that your use  is for the sole
-- purpose of  programming  logic  devices  manufactured by Intel and sold by
-- Intel or its authorized  distributors.  Please  refer  to  the  applicable
-- agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from log_inst_0002
-- VHDL created on Mon Jun 24 23:32:42 2024


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity log_inst_0002 is
    port (
        a : in std_logic_vector(31 downto 0);  -- float32_m23
        q : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end log_inst_0002;

architecture normal of log_inst_0002 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expX_uid6_fpLogE1pxTest_in : STD_LOGIC_VECTOR (31 downto 0);
    signal expX_uid6_fpLogE1pxTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal signX_uid7_fpLogE1pxTest_in : STD_LOGIC_VECTOR (31 downto 0);
    signal signX_uid7_fpLogE1pxTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal cstAllZWF_uid8_fpLogE1pxTest_q : STD_LOGIC_VECTOR (22 downto 0);
    signal cstBias_uid9_fpLogE1pxTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstBiasMO_uid10_fpLogE1pxTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstBiasPWFP1_uid12_fpLogE1pxTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstBiasMWFP1_uid13_fpLogE1pxTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstAllOWE_uid14_fpLogE1pxTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstAllZWE_uid16_fpLogE1pxTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_x_uid18_fpLogE1pxTest_in : STD_LOGIC_VECTOR (31 downto 0);
    signal frac_x_uid18_fpLogE1pxTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_x_uid19_fpLogE1pxTest_a : STD_LOGIC_VECTOR (7 downto 0);
    signal excZ_x_uid19_fpLogE1pxTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal excZ_x_uid19_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid20_fpLogE1pxTest_a : STD_LOGIC_VECTOR (7 downto 0);
    signal expXIsMax_uid20_fpLogE1pxTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal expXIsMax_uid20_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid21_fpLogE1pxTest_a : STD_LOGIC_VECTOR (22 downto 0);
    signal fracXIsZero_uid21_fpLogE1pxTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal fracXIsZero_uid21_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid22_fpLogE1pxTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid22_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_x_uid23_fpLogE1pxTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_x_uid23_fpLogE1pxTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_x_uid23_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid24_fpLogE1pxTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid24_fpLogE1pxTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid24_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid25_fpLogE1pxTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid25_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid26_fpLogE1pxTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid26_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_x_uid27_fpLogE1pxTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_x_uid27_fpLogE1pxTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_x_uid27_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal oFracX_uid29_fpLogE1pxTest_q : STD_LOGIC_VECTOR (23 downto 0);
    signal shifterAddrExt_uid30_fpLogE1pxTest_a : STD_LOGIC_VECTOR (8 downto 0);
    signal shifterAddrExt_uid30_fpLogE1pxTest_b : STD_LOGIC_VECTOR (8 downto 0);
    signal shifterAddrExt_uid30_fpLogE1pxTest_o : STD_LOGIC_VECTOR (8 downto 0);
    signal shifterAddrExt_uid30_fpLogE1pxTest_q : STD_LOGIC_VECTOR (8 downto 0);
    signal shifterAddr_uid31_fpLogE1pxTest_in : STD_LOGIC_VECTOR (4 downto 0);
    signal shifterAddr_uid31_fpLogE1pxTest_b : STD_LOGIC_VECTOR (4 downto 0);
    signal padConst_uid32_fpLogE1pxTest_q : STD_LOGIC_VECTOR (23 downto 0);
    signal rightPaddedIn_uid33_fpLogE1pxTest_q : STD_LOGIC_VECTOR (47 downto 0);
    signal fracXRS_uid35_fpLogE1pxTest_in : STD_LOGIC_VECTOR (47 downto 0);
    signal fracXRS_uid35_fpLogE1pxTest_b : STD_LOGIC_VECTOR (24 downto 0);
    signal padACst_uid37_fpLogE1pxTest_q : STD_LOGIC_VECTOR (46 downto 0);
    signal aPostPad_uid38_fpLogE1pxTest_q : STD_LOGIC_VECTOR (47 downto 0);
    signal oMfracXRSExt_uid39_fpLogE1pxTest_a : STD_LOGIC_VECTOR (48 downto 0);
    signal oMfracXRSExt_uid39_fpLogE1pxTest_b : STD_LOGIC_VECTOR (48 downto 0);
    signal oMfracXRSExt_uid39_fpLogE1pxTest_o : STD_LOGIC_VECTOR (48 downto 0);
    signal oMfracXRSExt_uid39_fpLogE1pxTest_q : STD_LOGIC_VECTOR (48 downto 0);
    signal oMfracXRSLZCIn_uid40_fpLogE1pxTest_in : STD_LOGIC_VECTOR (46 downto 0);
    signal oMfracXRSLZCIn_uid40_fpLogE1pxTest_b : STD_LOGIC_VECTOR (23 downto 0);
    signal expBran3PreExt_uid42_fpLogE1pxTest_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expBran3PreExt_uid42_fpLogE1pxTest_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expBran3PreExt_uid42_fpLogE1pxTest_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expBran3PreExt_uid42_fpLogE1pxTest_q : STD_LOGIC_VECTOR (8 downto 0);
    signal expBran3Pre_uid43_fpLogE1pxTest_in : STD_LOGIC_VECTOR (7 downto 0);
    signal expBran3Pre_uid43_fpLogE1pxTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal redLO_uid44_fpLogE1pxTest_in : STD_LOGIC_VECTOR (46 downto 0);
    signal redLO_uid44_fpLogE1pxTest_b : STD_LOGIC_VECTOR (46 downto 0);
    signal fracXBranch4_uid46_fpLogE1pxTest_in : STD_LOGIC_VECTOR (46 downto 0);
    signal fracXBranch4_uid46_fpLogE1pxTest_b : STD_LOGIC_VECTOR (24 downto 0);
    signal addrMaskExt_uid47_fpLogE1pxTest_a : STD_LOGIC_VECTOR (8 downto 0);
    signal addrMaskExt_uid47_fpLogE1pxTest_b : STD_LOGIC_VECTOR (8 downto 0);
    signal addrMaskExt_uid47_fpLogE1pxTest_o : STD_LOGIC_VECTOR (8 downto 0);
    signal addrMaskExt_uid47_fpLogE1pxTest_q : STD_LOGIC_VECTOR (8 downto 0);
    signal addrMask_uid48_fpLogE1pxTest_in : STD_LOGIC_VECTOR (4 downto 0);
    signal addrMask_uid48_fpLogE1pxTest_b : STD_LOGIC_VECTOR (4 downto 0);
    signal maskIncrementTable_uid49_fpLogE1pxTest_q : STD_LOGIC_VECTOR (23 downto 0);
    signal oPlusOFracX_uid50_fpLogE1pxTest_a : STD_LOGIC_VECTOR (24 downto 0);
    signal oPlusOFracX_uid50_fpLogE1pxTest_b : STD_LOGIC_VECTOR (24 downto 0);
    signal oPlusOFracX_uid50_fpLogE1pxTest_o : STD_LOGIC_VECTOR (24 downto 0);
    signal oPlusOFracX_uid50_fpLogE1pxTest_q : STD_LOGIC_VECTOR (24 downto 0);
    signal msbUoPlusOFracX_uid51_fpLogE1pxTest_in : STD_LOGIC_VECTOR (24 downto 0);
    signal msbUoPlusOFracX_uid51_fpLogE1pxTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal eUpdateOPOFracX_uid52_fpLogE1pxTest_a : STD_LOGIC_VECTOR (8 downto 0);
    signal eUpdateOPOFracX_uid52_fpLogE1pxTest_b : STD_LOGIC_VECTOR (8 downto 0);
    signal eUpdateOPOFracX_uid52_fpLogE1pxTest_o : STD_LOGIC_VECTOR (8 downto 0);
    signal eUpdateOPOFracX_uid52_fpLogE1pxTest_q : STD_LOGIC_VECTOR (8 downto 0);
    signal oPlusOFracXNormLow_uid54_fpLogE1pxTest_in : STD_LOGIC_VECTOR (22 downto 0);
    signal oPlusOFracXNormLow_uid54_fpLogE1pxTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal lowPart_uid55_fpLogE1pxTest_q : STD_LOGIC_VECTOR (23 downto 0);
    signal oPlusOFracXNormHigh_uid56_fpLogE1pxTest_in : STD_LOGIC_VECTOR (23 downto 0);
    signal oPlusOFracXNormHigh_uid56_fpLogE1pxTest_b : STD_LOGIC_VECTOR (23 downto 0);
    signal oPlusOFracXNorm_uid58_fpLogE1pxTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal oPlusOFracXNorm_uid58_fpLogE1pxTest_q : STD_LOGIC_VECTOR (23 downto 0);
    signal resIsX_uid59_fpLogE1pxTest_a : STD_LOGIC_VECTOR (9 downto 0);
    signal resIsX_uid59_fpLogE1pxTest_b : STD_LOGIC_VECTOR (9 downto 0);
    signal resIsX_uid59_fpLogE1pxTest_o : STD_LOGIC_VECTOR (9 downto 0);
    signal resIsX_uid59_fpLogE1pxTest_c : STD_LOGIC_VECTOR (0 downto 0);
    signal branch12_uid60_fpLogE1pxTest_a : STD_LOGIC_VECTOR (9 downto 0);
    signal branch12_uid60_fpLogE1pxTest_b : STD_LOGIC_VECTOR (9 downto 0);
    signal branch12_uid60_fpLogE1pxTest_o : STD_LOGIC_VECTOR (9 downto 0);
    signal branch12_uid60_fpLogE1pxTest_c : STD_LOGIC_VECTOR (0 downto 0);
    signal branch12_uid60_fpLogE1pxTest_n : STD_LOGIC_VECTOR (0 downto 0);
    signal branch11_uid61_fpLogE1pxTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal branch11_uid61_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal branch1_uid62_fpLogE1pxTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal branch1_uid62_fpLogE1pxTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal branch1_uid62_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal branch22_uid63_fpLogE1pxTest_a : STD_LOGIC_VECTOR (9 downto 0);
    signal branch22_uid63_fpLogE1pxTest_b : STD_LOGIC_VECTOR (9 downto 0);
    signal branch22_uid63_fpLogE1pxTest_o : STD_LOGIC_VECTOR (9 downto 0);
    signal branch22_uid63_fpLogE1pxTest_c : STD_LOGIC_VECTOR (0 downto 0);
    signal branch22_uid63_fpLogE1pxTest_n : STD_LOGIC_VECTOR (0 downto 0);
    signal branch2_uid66_fpLogE1pxTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal branch2_uid66_fpLogE1pxTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal branch2_uid66_fpLogE1pxTest_c : STD_LOGIC_VECTOR (0 downto 0);
    signal branch2_uid66_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invResIsX_uid69_fpLogE1pxTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invResIsX_uid69_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal branch3_uid70_fpLogE1pxTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal branch3_uid70_fpLogE1pxTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal branch3_uid70_fpLogE1pxTest_c : STD_LOGIC_VECTOR (0 downto 0);
    signal branch3_uid70_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal branch4_uid72_fpLogE1pxTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal branch4_uid72_fpLogE1pxTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal branch4_uid72_fpLogE1pxTest_c : STD_LOGIC_VECTOR (0 downto 0);
    signal branch4_uid72_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal concBranch_uid73_fpLogE1pxTest_q : STD_LOGIC_VECTOR (3 downto 0);
    signal branEnc_uid74_fpLogE1pxTest_q : STD_LOGIC_VECTOR (1 downto 0);
    signal eUpdateOPOFracXRed_uid75_fpLogE1pxTest_in : STD_LOGIC_VECTOR (7 downto 0);
    signal eUpdateOPOFracXRed_uid75_fpLogE1pxTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal expB_uid76_fpLogE1pxTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expB_uid76_fpLogE1pxTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal fracXBranch4Red_uid77_fpLogE1pxTest_in : STD_LOGIC_VECTOR (23 downto 0);
    signal fracXBranch4Red_uid77_fpLogE1pxTest_b : STD_LOGIC_VECTOR (23 downto 0);
    signal fracXRSRange_uid78_fpLogE1pxTest_in : STD_LOGIC_VECTOR (23 downto 0);
    signal fracXRSRange_uid78_fpLogE1pxTest_b : STD_LOGIC_VECTOR (23 downto 0);
    signal fracXz_uid79_fpLogE1pxTest_q : STD_LOGIC_VECTOR (23 downto 0);
    signal fracB_uid80_fpLogE1pxTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal fracB_uid80_fpLogE1pxTest_q : STD_LOGIC_VECTOR (23 downto 0);
    signal e_uid81_fpLogE1pxTest_a : STD_LOGIC_VECTOR (8 downto 0);
    signal e_uid81_fpLogE1pxTest_b : STD_LOGIC_VECTOR (8 downto 0);
    signal e_uid81_fpLogE1pxTest_o : STD_LOGIC_VECTOR (8 downto 0);
    signal e_uid81_fpLogE1pxTest_q : STD_LOGIC_VECTOR (8 downto 0);
    signal expXIsMo_uid83_fpLogE1pxTest_a : STD_LOGIC_VECTOR (9 downto 0);
    signal expXIsMo_uid83_fpLogE1pxTest_b : STD_LOGIC_VECTOR (9 downto 0);
    signal expXIsMo_uid83_fpLogE1pxTest_o : STD_LOGIC_VECTOR (9 downto 0);
    signal expXIsMo_uid83_fpLogE1pxTest_c : STD_LOGIC_VECTOR (0 downto 0);
    signal c_uid84_fpLogE1pxTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal c_uid84_fpLogE1pxTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal c_uid84_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal addrFull_uid85_fpLogE1pxTest_q : STD_LOGIC_VECTOR (24 downto 0);
    signal yAddr_uid87_fpLogE1pxTest_in : STD_LOGIC_VECTOR (24 downto 0);
    signal yAddr_uid87_fpLogE1pxTest_b : STD_LOGIC_VECTOR (8 downto 0);
    signal zPPolyEval_uid88_fpLogE1pxTest_in : STD_LOGIC_VECTOR (15 downto 0);
    signal zPPolyEval_uid88_fpLogE1pxTest_b : STD_LOGIC_VECTOR (14 downto 0);
    signal peOR_uid90_fpLogE1pxTest_in : STD_LOGIC_VECTOR (31 downto 0);
    signal peOR_uid90_fpLogE1pxTest_b : STD_LOGIC_VECTOR (25 downto 0);
    signal branch3OrC_uid91_fpLogE1pxTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal branch3OrC_uid91_fpLogE1pxTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal branch3OrC_uid91_fpLogE1pxTest_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal branch3OrC_uid91_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal o2_uid96_fpLogE1pxTest_q : STD_LOGIC_VECTOR (1 downto 0);
    signal sEz_uid97_fpLogE1pxTest_q : STD_LOGIC_VECTOR (24 downto 0);
    signal fracBRed_uid98_fpLogE1pxTest_in : STD_LOGIC_VECTOR (23 downto 0);
    signal fracBRed_uid98_fpLogE1pxTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal z2_uid99_fpLogE1pxTest_q : STD_LOGIC_VECTOR (1 downto 0);
    signal sEz_uid100_fpLogE1pxTest_q : STD_LOGIC_VECTOR (24 downto 0);
    signal sEz_uid101_fpLogE1pxTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal sEz_uid101_fpLogE1pxTest_q : STD_LOGIC_VECTOR (24 downto 0);
    signal lowRangeB_uid106_fpLogE1pxTest_in : STD_LOGIC_VECTOR (21 downto 0);
    signal lowRangeB_uid106_fpLogE1pxTest_b : STD_LOGIC_VECTOR (21 downto 0);
    signal highBBits_uid107_fpLogE1pxTest_in : STD_LOGIC_VECTOR (50 downto 0);
    signal highBBits_uid107_fpLogE1pxTest_b : STD_LOGIC_VECTOR (28 downto 0);
    signal finalSumsumAHighB_uid108_fpLogE1pxTest_a : STD_LOGIC_VECTOR (35 downto 0);
    signal finalSumsumAHighB_uid108_fpLogE1pxTest_b : STD_LOGIC_VECTOR (35 downto 0);
    signal finalSumsumAHighB_uid108_fpLogE1pxTest_i : STD_LOGIC_VECTOR (35 downto 0);
    signal finalSumsumAHighB_uid108_fpLogE1pxTest_o : STD_LOGIC_VECTOR (35 downto 0);
    signal finalSumsumAHighB_uid108_fpLogE1pxTest_q : STD_LOGIC_VECTOR (35 downto 0);
    signal finalSum_uid109_fpLogE1pxTest_q : STD_LOGIC_VECTOR (57 downto 0);
    signal msbUFinalSum_uid110_fpLogE1pxTest_in : STD_LOGIC_VECTOR (57 downto 0);
    signal msbUFinalSum_uid110_fpLogE1pxTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal finalSumOneComp_uid112_fpLogE1pxTest_a : STD_LOGIC_VECTOR (57 downto 0);
    signal finalSumOneComp_uid112_fpLogE1pxTest_b : STD_LOGIC_VECTOR (57 downto 0);
    signal finalSumOneComp_uid112_fpLogE1pxTest_q : STD_LOGIC_VECTOR (57 downto 0);
    signal finalSumAbs_uid113_fpLogE1pxTest_a : STD_LOGIC_VECTOR (58 downto 0);
    signal finalSumAbs_uid113_fpLogE1pxTest_b : STD_LOGIC_VECTOR (58 downto 0);
    signal finalSumAbs_uid113_fpLogE1pxTest_o : STD_LOGIC_VECTOR (58 downto 0);
    signal finalSumAbs_uid113_fpLogE1pxTest_q : STD_LOGIC_VECTOR (58 downto 0);
    signal cstMSBFinalSumPBias_uid116_fpLogE1pxTest_q : STD_LOGIC_VECTOR (8 downto 0);
    signal expRExt0_uid117_fpLogE1pxTest_a : STD_LOGIC_VECTOR (9 downto 0);
    signal expRExt0_uid117_fpLogE1pxTest_b : STD_LOGIC_VECTOR (9 downto 0);
    signal expRExt0_uid117_fpLogE1pxTest_o : STD_LOGIC_VECTOR (9 downto 0);
    signal expRExt0_uid117_fpLogE1pxTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal branch4ExpCorrection_uid118_fpLogE1pxTest_a : STD_LOGIC_VECTOR (5 downto 0);
    signal branch4ExpCorrection_uid118_fpLogE1pxTest_b : STD_LOGIC_VECTOR (5 downto 0);
    signal branch4ExpCorrection_uid118_fpLogE1pxTest_o : STD_LOGIC_VECTOR (5 downto 0);
    signal branch4ExpCorrection_uid118_fpLogE1pxTest_q : STD_LOGIC_VECTOR (5 downto 0);
    signal expRExt1_uid119_fpLogE1pxTest_a : STD_LOGIC_VECTOR (10 downto 0);
    signal expRExt1_uid119_fpLogE1pxTest_b : STD_LOGIC_VECTOR (10 downto 0);
    signal expRExt1_uid119_fpLogE1pxTest_o : STD_LOGIC_VECTOR (10 downto 0);
    signal expRExt1_uid119_fpLogE1pxTest_q : STD_LOGIC_VECTOR (10 downto 0);
    signal expRExt1Red_uid120_fpLogE1pxTest_in : STD_LOGIC_VECTOR (9 downto 0);
    signal expRExt1Red_uid120_fpLogE1pxTest_b : STD_LOGIC_VECTOR (9 downto 0);
    signal expRExt_uid121_fpLogE1pxTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal expRExt_uid121_fpLogE1pxTest_q : STD_LOGIC_VECTOR (9 downto 0);
    signal fracR_uid122_fpLogE1pxTest_in : STD_LOGIC_VECTOR (57 downto 0);
    signal fracR_uid122_fpLogE1pxTest_b : STD_LOGIC_VECTOR (23 downto 0);
    signal expFracConc_uid123_fpLogE1pxTest_q : STD_LOGIC_VECTOR (33 downto 0);
    signal expFracPostRnd_uid125_fpLogE1pxTest_a : STD_LOGIC_VECTOR (34 downto 0);
    signal expFracPostRnd_uid125_fpLogE1pxTest_b : STD_LOGIC_VECTOR (34 downto 0);
    signal expFracPostRnd_uid125_fpLogE1pxTest_o : STD_LOGIC_VECTOR (34 downto 0);
    signal expFracPostRnd_uid125_fpLogE1pxTest_q : STD_LOGIC_VECTOR (34 downto 0);
    signal fracR0_uid126_fpLogE1pxTest_in : STD_LOGIC_VECTOR (23 downto 0);
    signal fracR0_uid126_fpLogE1pxTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal fracR_uid127_fpLogE1pxTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fracR_uid127_fpLogE1pxTest_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expR_uid128_fpLogE1pxTest_in : STD_LOGIC_VECTOR (31 downto 0);
    signal expR_uid128_fpLogE1pxTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal expR_uid129_fpLogE1pxTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal expR_uid129_fpLogE1pxTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal mO_uid131_fpLogE1pxTest_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xM1_uid132_fpLogE1pxTest_a : STD_LOGIC_VECTOR (31 downto 0);
    signal xM1_uid132_fpLogE1pxTest_b : STD_LOGIC_VECTOR (31 downto 0);
    signal xM1_uid132_fpLogE1pxTest_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal xM1_uid132_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xLTM1_uid134_fpLogE1pxTest_a : STD_LOGIC_VECTOR (33 downto 0);
    signal xLTM1_uid134_fpLogE1pxTest_b : STD_LOGIC_VECTOR (33 downto 0);
    signal xLTM1_uid134_fpLogE1pxTest_o : STD_LOGIC_VECTOR (33 downto 0);
    signal xLTM1_uid134_fpLogE1pxTest_c : STD_LOGIC_VECTOR (0 downto 0);
    signal excRInf0_uid135_fpLogE1pxTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal excRInf0_uid135_fpLogE1pxTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal excRInf0_uid135_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal posInf_uid137_fpLogE1pxTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal posInf_uid137_fpLogE1pxTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal posInf_uid137_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRInf0_uid138_fpLogE1pxTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal excRInf0_uid138_fpLogE1pxTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal excRInf0_uid138_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal negInf_uid139_fpLogE1pxTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal negInf_uid139_fpLogE1pxTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal negInf_uid139_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN0_uid140_fpLogE1pxTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN0_uid140_fpLogE1pxTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN0_uid140_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid141_fpLogE1pxTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid141_fpLogE1pxTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid141_fpLogE1pxTest_c : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid141_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExcRNaN_uid142_fpLogE1pxTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal invExcRNaN_uid142_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRFull_uid143_fpLogE1pxTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal signRFull_uid143_fpLogE1pxTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signRFull_uid143_fpLogE1pxTest_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal signRFull_uid143_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal concExc_uid144_fpLogE1pxTest_q : STD_LOGIC_VECTOR (2 downto 0);
    signal excREnc_uid145_fpLogE1pxTest_q : STD_LOGIC_VECTOR (1 downto 0);
    signal oneFracRPostExc2_uid146_fpLogE1pxTest_q : STD_LOGIC_VECTOR (22 downto 0);
    signal fracRPostExc_uid150_fpLogE1pxTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid150_fpLogE1pxTest_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPostExc_uid154_fpLogE1pxTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid154_fpLogE1pxTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal RLn1px_uid155_fpLogE1pxTest_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zs_uid157_leadingZeros_uid41_fpLogE1pxTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid158_leadingZeros_uid41_fpLogE1pxTest_in : STD_LOGIC_VECTOR (23 downto 0);
    signal rVStage_uid158_leadingZeros_uid41_fpLogE1pxTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid159_leadingZeros_uid41_fpLogE1pxTest_a : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid159_leadingZeros_uid41_fpLogE1pxTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid159_leadingZeros_uid41_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal mO_uid160_leadingZeros_uid41_fpLogE1pxTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal vStage_uid161_leadingZeros_uid41_fpLogE1pxTest_in : STD_LOGIC_VECTOR (7 downto 0);
    signal vStage_uid161_leadingZeros_uid41_fpLogE1pxTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal cStage_uid162_leadingZeros_uid41_fpLogE1pxTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vStagei_uid164_leadingZeros_uid41_fpLogE1pxTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid164_leadingZeros_uid41_fpLogE1pxTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid166_leadingZeros_uid41_fpLogE1pxTest_in : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid166_leadingZeros_uid41_fpLogE1pxTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal vCount_uid167_leadingZeros_uid41_fpLogE1pxTest_a : STD_LOGIC_VECTOR (7 downto 0);
    signal vCount_uid167_leadingZeros_uid41_fpLogE1pxTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal vCount_uid167_leadingZeros_uid41_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStage_uid168_leadingZeros_uid41_fpLogE1pxTest_in : STD_LOGIC_VECTOR (7 downto 0);
    signal vStage_uid168_leadingZeros_uid41_fpLogE1pxTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal vStagei_uid170_leadingZeros_uid41_fpLogE1pxTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid170_leadingZeros_uid41_fpLogE1pxTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal zs_uid171_leadingZeros_uid41_fpLogE1pxTest_q : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid172_leadingZeros_uid41_fpLogE1pxTest_in : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid172_leadingZeros_uid41_fpLogE1pxTest_b : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid173_leadingZeros_uid41_fpLogE1pxTest_a : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid173_leadingZeros_uid41_fpLogE1pxTest_b : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid173_leadingZeros_uid41_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStage_uid174_leadingZeros_uid41_fpLogE1pxTest_in : STD_LOGIC_VECTOR (3 downto 0);
    signal vStage_uid174_leadingZeros_uid41_fpLogE1pxTest_b : STD_LOGIC_VECTOR (3 downto 0);
    signal vStagei_uid176_leadingZeros_uid41_fpLogE1pxTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid176_leadingZeros_uid41_fpLogE1pxTest_q : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid178_leadingZeros_uid41_fpLogE1pxTest_in : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid178_leadingZeros_uid41_fpLogE1pxTest_b : STD_LOGIC_VECTOR (1 downto 0);
    signal vCount_uid179_leadingZeros_uid41_fpLogE1pxTest_a : STD_LOGIC_VECTOR (1 downto 0);
    signal vCount_uid179_leadingZeros_uid41_fpLogE1pxTest_b : STD_LOGIC_VECTOR (1 downto 0);
    signal vCount_uid179_leadingZeros_uid41_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStage_uid180_leadingZeros_uid41_fpLogE1pxTest_in : STD_LOGIC_VECTOR (1 downto 0);
    signal vStage_uid180_leadingZeros_uid41_fpLogE1pxTest_b : STD_LOGIC_VECTOR (1 downto 0);
    signal vStagei_uid182_leadingZeros_uid41_fpLogE1pxTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid182_leadingZeros_uid41_fpLogE1pxTest_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid184_leadingZeros_uid41_fpLogE1pxTest_in : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid184_leadingZeros_uid41_fpLogE1pxTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid185_leadingZeros_uid41_fpLogE1pxTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid185_leadingZeros_uid41_fpLogE1pxTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid185_leadingZeros_uid41_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid186_leadingZeros_uid41_fpLogE1pxTest_q : STD_LOGIC_VECTOR (4 downto 0);
    signal xv0_uid188_eLn2_uid82_fpLogE1pxTest_in : STD_LOGIC_VECTOR (3 downto 0);
    signal xv0_uid188_eLn2_uid82_fpLogE1pxTest_b : STD_LOGIC_VECTOR (3 downto 0);
    signal xv1_uid189_eLn2_uid82_fpLogE1pxTest_in : STD_LOGIC_VECTOR (7 downto 0);
    signal xv1_uid189_eLn2_uid82_fpLogE1pxTest_b : STD_LOGIC_VECTOR (3 downto 0);
    signal xv2_uid190_eLn2_uid82_fpLogE1pxTest_in : STD_LOGIC_VECTOR (8 downto 0);
    signal xv2_uid190_eLn2_uid82_fpLogE1pxTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal p2_uid191_eLn2_uid82_fpLogE1pxTest_q : STD_LOGIC_VECTOR (37 downto 0);
    signal p1_uid192_eLn2_uid82_fpLogE1pxTest_q : STD_LOGIC_VECTOR (36 downto 0);
    signal p0_uid193_eLn2_uid82_fpLogE1pxTest_q : STD_LOGIC_VECTOR (32 downto 0);
    signal lowRangeB_uid194_eLn2_uid82_fpLogE1pxTest_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid194_eLn2_uid82_fpLogE1pxTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid195_eLn2_uid82_fpLogE1pxTest_in : STD_LOGIC_VECTOR (36 downto 0);
    signal highBBits_uid195_eLn2_uid82_fpLogE1pxTest_b : STD_LOGIC_VECTOR (35 downto 0);
    signal lev1_a0sumAHighB_uid196_eLn2_uid82_fpLogE1pxTest_a : STD_LOGIC_VECTOR (39 downto 0);
    signal lev1_a0sumAHighB_uid196_eLn2_uid82_fpLogE1pxTest_b : STD_LOGIC_VECTOR (39 downto 0);
    signal lev1_a0sumAHighB_uid196_eLn2_uid82_fpLogE1pxTest_o : STD_LOGIC_VECTOR (39 downto 0);
    signal lev1_a0sumAHighB_uid196_eLn2_uid82_fpLogE1pxTest_q : STD_LOGIC_VECTOR (38 downto 0);
    signal lev1_a0_uid197_eLn2_uid82_fpLogE1pxTest_q : STD_LOGIC_VECTOR (39 downto 0);
    signal lev2_a0_uid198_eLn2_uid82_fpLogE1pxTest_a : STD_LOGIC_VECTOR (41 downto 0);
    signal lev2_a0_uid198_eLn2_uid82_fpLogE1pxTest_b : STD_LOGIC_VECTOR (41 downto 0);
    signal lev2_a0_uid198_eLn2_uid82_fpLogE1pxTest_o : STD_LOGIC_VECTOR (41 downto 0);
    signal lev2_a0_uid198_eLn2_uid82_fpLogE1pxTest_q : STD_LOGIC_VECTOR (40 downto 0);
    signal maxValInOutFormat_uid199_eLn2_uid82_fpLogE1pxTest_q : STD_LOGIC_VECTOR (34 downto 0);
    signal minValueInFormat_uid200_eLn2_uid82_fpLogE1pxTest_q : STD_LOGIC_VECTOR (34 downto 0);
    signal paddingX_uid201_eLn2_uid82_fpLogE1pxTest_q : STD_LOGIC_VECTOR (2 downto 0);
    signal updatedX_uid202_eLn2_uid82_fpLogE1pxTest_q : STD_LOGIC_VECTOR (37 downto 0);
    signal ovf_uid201_eLn2_uid82_fpLogE1pxTest_a : STD_LOGIC_VECTOR (42 downto 0);
    signal ovf_uid201_eLn2_uid82_fpLogE1pxTest_b : STD_LOGIC_VECTOR (42 downto 0);
    signal ovf_uid201_eLn2_uid82_fpLogE1pxTest_o : STD_LOGIC_VECTOR (42 downto 0);
    signal ovf_uid201_eLn2_uid82_fpLogE1pxTest_c : STD_LOGIC_VECTOR (0 downto 0);
    signal updatedY_uid205_eLn2_uid82_fpLogE1pxTest_q : STD_LOGIC_VECTOR (37 downto 0);
    signal udf_uid204_eLn2_uid82_fpLogE1pxTest_a : STD_LOGIC_VECTOR (42 downto 0);
    signal udf_uid204_eLn2_uid82_fpLogE1pxTest_b : STD_LOGIC_VECTOR (42 downto 0);
    signal udf_uid204_eLn2_uid82_fpLogE1pxTest_o : STD_LOGIC_VECTOR (42 downto 0);
    signal udf_uid204_eLn2_uid82_fpLogE1pxTest_c : STD_LOGIC_VECTOR (0 downto 0);
    signal ovfudfcond_uid207_eLn2_uid82_fpLogE1pxTest_q : STD_LOGIC_VECTOR (1 downto 0);
    signal sR_uid208_eLn2_uid82_fpLogE1pxTest_in : STD_LOGIC_VECTOR (37 downto 0);
    signal sR_uid208_eLn2_uid82_fpLogE1pxTest_b : STD_LOGIC_VECTOR (34 downto 0);
    signal sRA0_uid209_eLn2_uid82_fpLogE1pxTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal sRA0_uid209_eLn2_uid82_fpLogE1pxTest_q : STD_LOGIC_VECTOR (34 downto 0);
    signal os_uid233_lnTables_q : STD_LOGIC_VECTOR (30 downto 0);
    signal os_uid237_lnTables_q : STD_LOGIC_VECTOR (20 downto 0);
    signal yT1_uid245_invPolyEval_in : STD_LOGIC_VECTOR (14 downto 0);
    signal yT1_uid245_invPolyEval_b : STD_LOGIC_VECTOR (12 downto 0);
    signal cIncludingRoundingBit_uid248_invPolyEval_q : STD_LOGIC_VECTOR (22 downto 0);
    signal ts1_uid250_invPolyEval_a : STD_LOGIC_VECTOR (23 downto 0);
    signal ts1_uid250_invPolyEval_b : STD_LOGIC_VECTOR (23 downto 0);
    signal ts1_uid250_invPolyEval_o : STD_LOGIC_VECTOR (23 downto 0);
    signal ts1_uid250_invPolyEval_q : STD_LOGIC_VECTOR (23 downto 0);
    signal s1_uid251_invPolyEval_in : STD_LOGIC_VECTOR (23 downto 0);
    signal s1_uid251_invPolyEval_b : STD_LOGIC_VECTOR (22 downto 0);
    signal rndBit_uid254_invPolyEval_q : STD_LOGIC_VECTOR (2 downto 0);
    signal cIncludingRoundingBit_uid255_invPolyEval_q : STD_LOGIC_VECTOR (33 downto 0);
    signal ts2_uid257_invPolyEval_a : STD_LOGIC_VECTOR (34 downto 0);
    signal ts2_uid257_invPolyEval_b : STD_LOGIC_VECTOR (34 downto 0);
    signal ts2_uid257_invPolyEval_o : STD_LOGIC_VECTOR (34 downto 0);
    signal ts2_uid257_invPolyEval_q : STD_LOGIC_VECTOR (34 downto 0);
    signal s2_uid258_invPolyEval_in : STD_LOGIC_VECTOR (34 downto 0);
    signal s2_uid258_invPolyEval_b : STD_LOGIC_VECTOR (33 downto 0);
    signal zs_uid260_countZ_uid114_fpLogE1pxTest_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rVStage_uid261_countZ_uid114_fpLogE1pxTest_in : STD_LOGIC_VECTOR (58 downto 0);
    signal rVStage_uid261_countZ_uid114_fpLogE1pxTest_b : STD_LOGIC_VECTOR (31 downto 0);
    signal vCount_uid262_countZ_uid114_fpLogE1pxTest_a : STD_LOGIC_VECTOR (31 downto 0);
    signal vCount_uid262_countZ_uid114_fpLogE1pxTest_b : STD_LOGIC_VECTOR (31 downto 0);
    signal vCount_uid262_countZ_uid114_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal mO_uid263_countZ_uid114_fpLogE1pxTest_q : STD_LOGIC_VECTOR (4 downto 0);
    signal vStage_uid264_countZ_uid114_fpLogE1pxTest_in : STD_LOGIC_VECTOR (26 downto 0);
    signal vStage_uid264_countZ_uid114_fpLogE1pxTest_b : STD_LOGIC_VECTOR (26 downto 0);
    signal cStage_uid265_countZ_uid114_fpLogE1pxTest_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vStagei_uid267_countZ_uid114_fpLogE1pxTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid267_countZ_uid114_fpLogE1pxTest_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rVStage_uid269_countZ_uid114_fpLogE1pxTest_in : STD_LOGIC_VECTOR (31 downto 0);
    signal rVStage_uid269_countZ_uid114_fpLogE1pxTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid270_countZ_uid114_fpLogE1pxTest_a : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid270_countZ_uid114_fpLogE1pxTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid270_countZ_uid114_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStage_uid271_countZ_uid114_fpLogE1pxTest_in : STD_LOGIC_VECTOR (15 downto 0);
    signal vStage_uid271_countZ_uid114_fpLogE1pxTest_b : STD_LOGIC_VECTOR (15 downto 0);
    signal vStagei_uid273_countZ_uid114_fpLogE1pxTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid273_countZ_uid114_fpLogE1pxTest_q : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid275_countZ_uid114_fpLogE1pxTest_in : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid275_countZ_uid114_fpLogE1pxTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal vCount_uid276_countZ_uid114_fpLogE1pxTest_a : STD_LOGIC_VECTOR (7 downto 0);
    signal vCount_uid276_countZ_uid114_fpLogE1pxTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal vCount_uid276_countZ_uid114_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStage_uid277_countZ_uid114_fpLogE1pxTest_in : STD_LOGIC_VECTOR (7 downto 0);
    signal vStage_uid277_countZ_uid114_fpLogE1pxTest_b : STD_LOGIC_VECTOR (7 downto 0);
    signal vStagei_uid279_countZ_uid114_fpLogE1pxTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid279_countZ_uid114_fpLogE1pxTest_q : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid281_countZ_uid114_fpLogE1pxTest_in : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid281_countZ_uid114_fpLogE1pxTest_b : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid282_countZ_uid114_fpLogE1pxTest_a : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid282_countZ_uid114_fpLogE1pxTest_b : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid282_countZ_uid114_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStage_uid283_countZ_uid114_fpLogE1pxTest_in : STD_LOGIC_VECTOR (3 downto 0);
    signal vStage_uid283_countZ_uid114_fpLogE1pxTest_b : STD_LOGIC_VECTOR (3 downto 0);
    signal vStagei_uid285_countZ_uid114_fpLogE1pxTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid285_countZ_uid114_fpLogE1pxTest_q : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid287_countZ_uid114_fpLogE1pxTest_in : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid287_countZ_uid114_fpLogE1pxTest_b : STD_LOGIC_VECTOR (1 downto 0);
    signal vCount_uid288_countZ_uid114_fpLogE1pxTest_a : STD_LOGIC_VECTOR (1 downto 0);
    signal vCount_uid288_countZ_uid114_fpLogE1pxTest_b : STD_LOGIC_VECTOR (1 downto 0);
    signal vCount_uid288_countZ_uid114_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStage_uid289_countZ_uid114_fpLogE1pxTest_in : STD_LOGIC_VECTOR (1 downto 0);
    signal vStage_uid289_countZ_uid114_fpLogE1pxTest_b : STD_LOGIC_VECTOR (1 downto 0);
    signal vStagei_uid291_countZ_uid114_fpLogE1pxTest_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid291_countZ_uid114_fpLogE1pxTest_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid293_countZ_uid114_fpLogE1pxTest_in : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid293_countZ_uid114_fpLogE1pxTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid294_countZ_uid114_fpLogE1pxTest_a : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid294_countZ_uid114_fpLogE1pxTest_b : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid294_countZ_uid114_fpLogE1pxTest_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid295_countZ_uid114_fpLogE1pxTest_q : STD_LOGIC_VECTOR (5 downto 0);
    signal nx_mergedSignalTM_uid299_pT1_uid246_invPolyEval_q : STD_LOGIC_VECTOR (13 downto 0);
    signal topRangeX_mergedSignalTM_uid311_pT1_uid246_invPolyEval_q : STD_LOGIC_VECTOR (16 downto 0);
    signal topRangeY_mergedSignalTM_uid315_pT1_uid246_invPolyEval_q : STD_LOGIC_VECTOR (16 downto 0);
    signal sm0_uid317_pT1_uid246_invPolyEval_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal sm0_uid317_pT1_uid246_invPolyEval_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal sm0_uid317_pT1_uid246_invPolyEval_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal sm0_uid317_pT1_uid246_invPolyEval_reset : std_logic;
    signal sm0_uid317_pT1_uid246_invPolyEval_q : STD_LOGIC_VECTOR (33 downto 0);
    signal osig_uid318_pT1_uid246_invPolyEval_in : STD_LOGIC_VECTOR (32 downto 0);
    signal osig_uid318_pT1_uid246_invPolyEval_b : STD_LOGIC_VECTOR (14 downto 0);
    signal nx_mergedSignalTM_uid322_pT2_uid253_invPolyEval_q : STD_LOGIC_VECTOR (15 downto 0);
    signal topRangeX_mergedSignalTM_uid334_pT2_uid253_invPolyEval_q : STD_LOGIC_VECTOR (16 downto 0);
    signal topRangeY_uid336_pT2_uid253_invPolyEval_in : STD_LOGIC_VECTOR (22 downto 0);
    signal topRangeY_uid336_pT2_uid253_invPolyEval_b : STD_LOGIC_VECTOR (16 downto 0);
    signal aboveLeftX_uid342_pT2_uid253_invPolyEval_in : STD_LOGIC_VECTOR (15 downto 0);
    signal aboveLeftX_uid342_pT2_uid253_invPolyEval_b : STD_LOGIC_VECTOR (7 downto 0);
    signal aboveLeftY_bottomRange_uid344_pT2_uid253_invPolyEval_in : STD_LOGIC_VECTOR (5 downto 0);
    signal aboveLeftY_bottomRange_uid344_pT2_uid253_invPolyEval_b : STD_LOGIC_VECTOR (5 downto 0);
    signal aboveLeftY_mergedSignalTM_uid345_pT2_uid253_invPolyEval_q : STD_LOGIC_VECTOR (7 downto 0);
    signal rightBottomX_uid353_pT2_uid253_invPolyEval_in : STD_LOGIC_VECTOR (7 downto 0);
    signal rightBottomX_uid353_pT2_uid253_invPolyEval_b : STD_LOGIC_VECTOR (4 downto 0);
    signal rightBottomY_uid354_pT2_uid253_invPolyEval_in : STD_LOGIC_VECTOR (5 downto 0);
    signal rightBottomY_uid354_pT2_uid253_invPolyEval_b : STD_LOGIC_VECTOR (4 downto 0);
    signal n1_uid363_pT2_uid253_invPolyEval_in : STD_LOGIC_VECTOR (4 downto 0);
    signal n1_uid363_pT2_uid253_invPolyEval_b : STD_LOGIC_VECTOR (3 downto 0);
    signal n0_uid364_pT2_uid253_invPolyEval_in : STD_LOGIC_VECTOR (4 downto 0);
    signal n0_uid364_pT2_uid253_invPolyEval_b : STD_LOGIC_VECTOR (3 downto 0);
    signal n1_uid371_pT2_uid253_invPolyEval_in : STD_LOGIC_VECTOR (3 downto 0);
    signal n1_uid371_pT2_uid253_invPolyEval_b : STD_LOGIC_VECTOR (2 downto 0);
    signal n0_uid372_pT2_uid253_invPolyEval_in : STD_LOGIC_VECTOR (3 downto 0);
    signal n0_uid372_pT2_uid253_invPolyEval_b : STD_LOGIC_VECTOR (2 downto 0);
    signal sm0_uid385_pT2_uid253_invPolyEval_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal sm0_uid385_pT2_uid253_invPolyEval_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal sm0_uid385_pT2_uid253_invPolyEval_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal sm0_uid385_pT2_uid253_invPolyEval_reset : std_logic;
    signal sm0_uid385_pT2_uid253_invPolyEval_q : STD_LOGIC_VECTOR (33 downto 0);
    signal sm0_uid386_pT2_uid253_invPolyEval_a0 : STD_LOGIC_VECTOR (7 downto 0);
    signal sm0_uid386_pT2_uid253_invPolyEval_b0 : STD_LOGIC_VECTOR (8 downto 0);
    signal sm0_uid386_pT2_uid253_invPolyEval_s1 : STD_LOGIC_VECTOR (16 downto 0);
    signal sm0_uid386_pT2_uid253_invPolyEval_reset : std_logic;
    signal sm0_uid386_pT2_uid253_invPolyEval_q : STD_LOGIC_VECTOR (15 downto 0);
    signal sm0_uid387_pT2_uid253_invPolyEval_a0 : STD_LOGIC_VECTOR (2 downto 0);
    signal sm0_uid387_pT2_uid253_invPolyEval_b0 : STD_LOGIC_VECTOR (2 downto 0);
    signal sm0_uid387_pT2_uid253_invPolyEval_s1 : STD_LOGIC_VECTOR (5 downto 0);
    signal sm0_uid387_pT2_uid253_invPolyEval_reset : std_logic;
    signal sm0_uid387_pT2_uid253_invPolyEval_q : STD_LOGIC_VECTOR (5 downto 0);
    signal lowRangeA_uid388_pT2_uid253_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeA_uid388_pT2_uid253_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highABits_uid389_pT2_uid253_invPolyEval_in : STD_LOGIC_VECTOR (33 downto 0);
    signal highABits_uid389_pT2_uid253_invPolyEval_b : STD_LOGIC_VECTOR (32 downto 0);
    signal lev1_a0high_uid390_pT2_uid253_invPolyEval_a : STD_LOGIC_VECTOR (33 downto 0);
    signal lev1_a0high_uid390_pT2_uid253_invPolyEval_b : STD_LOGIC_VECTOR (33 downto 0);
    signal lev1_a0high_uid390_pT2_uid253_invPolyEval_o : STD_LOGIC_VECTOR (33 downto 0);
    signal lev1_a0high_uid390_pT2_uid253_invPolyEval_q : STD_LOGIC_VECTOR (33 downto 0);
    signal lev1_a0_uid391_pT2_uid253_invPolyEval_q : STD_LOGIC_VECTOR (34 downto 0);
    signal lowRangeA_uid392_pT2_uid253_invPolyEval_in : STD_LOGIC_VECTOR (2 downto 0);
    signal lowRangeA_uid392_pT2_uid253_invPolyEval_b : STD_LOGIC_VECTOR (2 downto 0);
    signal highABits_uid393_pT2_uid253_invPolyEval_in : STD_LOGIC_VECTOR (34 downto 0);
    signal highABits_uid393_pT2_uid253_invPolyEval_b : STD_LOGIC_VECTOR (31 downto 0);
    signal lev2_a0high_uid394_pT2_uid253_invPolyEval_a : STD_LOGIC_VECTOR (33 downto 0);
    signal lev2_a0high_uid394_pT2_uid253_invPolyEval_b : STD_LOGIC_VECTOR (33 downto 0);
    signal lev2_a0high_uid394_pT2_uid253_invPolyEval_o : STD_LOGIC_VECTOR (33 downto 0);
    signal lev2_a0high_uid394_pT2_uid253_invPolyEval_q : STD_LOGIC_VECTOR (32 downto 0);
    signal lev2_a0_uid395_pT2_uid253_invPolyEval_q : STD_LOGIC_VECTOR (35 downto 0);
    signal osig_uid396_pT2_uid253_invPolyEval_in : STD_LOGIC_VECTOR (32 downto 0);
    signal osig_uid396_pT2_uid253_invPolyEval_b : STD_LOGIC_VECTOR (24 downto 0);
    signal rightShiftStage0Idx1Rng4_uid400_fracXRSExt_uid32_fpLogE1pxTest_in : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage0Idx1Rng4_uid400_fracXRSExt_uid32_fpLogE1pxTest_b : STD_LOGIC_VECTOR (43 downto 0);
    signal rightShiftStage0Idx1_uid402_fracXRSExt_uid32_fpLogE1pxTest_q : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage0Idx2Rng8_uid403_fracXRSExt_uid32_fpLogE1pxTest_in : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage0Idx2Rng8_uid403_fracXRSExt_uid32_fpLogE1pxTest_b : STD_LOGIC_VECTOR (39 downto 0);
    signal rightShiftStage0Idx2_uid405_fracXRSExt_uid32_fpLogE1pxTest_q : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage0Idx3Rng12_uid406_fracXRSExt_uid32_fpLogE1pxTest_in : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage0Idx3Rng12_uid406_fracXRSExt_uid32_fpLogE1pxTest_b : STD_LOGIC_VECTOR (35 downto 0);
    signal rightShiftStage0Idx3Pad12_uid407_fracXRSExt_uid32_fpLogE1pxTest_q : STD_LOGIC_VECTOR (11 downto 0);
    signal rightShiftStage0Idx3_uid408_fracXRSExt_uid32_fpLogE1pxTest_q : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage0Idx4Rng16_uid409_fracXRSExt_uid32_fpLogE1pxTest_in : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage0Idx4Rng16_uid409_fracXRSExt_uid32_fpLogE1pxTest_b : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx4_uid411_fracXRSExt_uid32_fpLogE1pxTest_q : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage0Idx5Rng20_uid412_fracXRSExt_uid32_fpLogE1pxTest_in : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage0Idx5Rng20_uid412_fracXRSExt_uid32_fpLogE1pxTest_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage0Idx5Pad20_uid413_fracXRSExt_uid32_fpLogE1pxTest_q : STD_LOGIC_VECTOR (19 downto 0);
    signal rightShiftStage0Idx5_uid414_fracXRSExt_uid32_fpLogE1pxTest_q : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage0Idx6Rng24_uid415_fracXRSExt_uid32_fpLogE1pxTest_in : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage0Idx6Rng24_uid415_fracXRSExt_uid32_fpLogE1pxTest_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage0Idx6_uid417_fracXRSExt_uid32_fpLogE1pxTest_q : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage0Idx7Rng28_uid418_fracXRSExt_uid32_fpLogE1pxTest_in : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage0Idx7Rng28_uid418_fracXRSExt_uid32_fpLogE1pxTest_b : STD_LOGIC_VECTOR (19 downto 0);
    signal rightShiftStage0Idx7Pad28_uid419_fracXRSExt_uid32_fpLogE1pxTest_q : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage0Idx7_uid420_fracXRSExt_uid32_fpLogE1pxTest_q : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStageSel4Dto2_uid421_fracXRSExt_uid32_fpLogE1pxTest_in : STD_LOGIC_VECTOR (4 downto 0);
    signal rightShiftStageSel4Dto2_uid421_fracXRSExt_uid32_fpLogE1pxTest_b : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStage1Idx1Rng1_uid423_fracXRSExt_uid32_fpLogE1pxTest_in : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage1Idx1Rng1_uid423_fracXRSExt_uid32_fpLogE1pxTest_b : STD_LOGIC_VECTOR (46 downto 0);
    signal rightShiftStage1Idx1_uid425_fracXRSExt_uid32_fpLogE1pxTest_q : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage1Idx2Rng2_uid426_fracXRSExt_uid32_fpLogE1pxTest_in : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage1Idx2Rng2_uid426_fracXRSExt_uid32_fpLogE1pxTest_b : STD_LOGIC_VECTOR (45 downto 0);
    signal rightShiftStage1Idx2_uid428_fracXRSExt_uid32_fpLogE1pxTest_q : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage1Idx3Rng3_uid429_fracXRSExt_uid32_fpLogE1pxTest_in : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage1Idx3Rng3_uid429_fracXRSExt_uid32_fpLogE1pxTest_b : STD_LOGIC_VECTOR (44 downto 0);
    signal rightShiftStage1Idx3_uid431_fracXRSExt_uid32_fpLogE1pxTest_q : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStageSel1Dto0_uid432_fracXRSExt_uid32_fpLogE1pxTest_in : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel1Dto0_uid432_fracXRSExt_uid32_fpLogE1pxTest_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1_uid433_fracXRSExt_uid32_fpLogE1pxTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1_uid433_fracXRSExt_uid32_fpLogE1pxTest_q : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage0Idx1Rng4_uid438_fracXBranch4Ext_uid45_fpLogE1pxTest_in : STD_LOGIC_VECTOR (42 downto 0);
    signal leftShiftStage0Idx1Rng4_uid438_fracXBranch4Ext_uid45_fpLogE1pxTest_b : STD_LOGIC_VECTOR (42 downto 0);
    signal leftShiftStage0Idx1_uid439_fracXBranch4Ext_uid45_fpLogE1pxTest_q : STD_LOGIC_VECTOR (46 downto 0);
    signal leftShiftStage0Idx2Rng8_uid441_fracXBranch4Ext_uid45_fpLogE1pxTest_in : STD_LOGIC_VECTOR (38 downto 0);
    signal leftShiftStage0Idx2Rng8_uid441_fracXBranch4Ext_uid45_fpLogE1pxTest_b : STD_LOGIC_VECTOR (38 downto 0);
    signal leftShiftStage0Idx2_uid442_fracXBranch4Ext_uid45_fpLogE1pxTest_q : STD_LOGIC_VECTOR (46 downto 0);
    signal leftShiftStage0Idx3Rng12_uid444_fracXBranch4Ext_uid45_fpLogE1pxTest_in : STD_LOGIC_VECTOR (34 downto 0);
    signal leftShiftStage0Idx3Rng12_uid444_fracXBranch4Ext_uid45_fpLogE1pxTest_b : STD_LOGIC_VECTOR (34 downto 0);
    signal leftShiftStage0Idx3_uid445_fracXBranch4Ext_uid45_fpLogE1pxTest_q : STD_LOGIC_VECTOR (46 downto 0);
    signal leftShiftStage0Idx4Rng16_uid447_fracXBranch4Ext_uid45_fpLogE1pxTest_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx4Rng16_uid447_fracXBranch4Ext_uid45_fpLogE1pxTest_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx4_uid448_fracXBranch4Ext_uid45_fpLogE1pxTest_q : STD_LOGIC_VECTOR (46 downto 0);
    signal leftShiftStage0Idx5Rng20_uid450_fracXBranch4Ext_uid45_fpLogE1pxTest_in : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage0Idx5Rng20_uid450_fracXBranch4Ext_uid45_fpLogE1pxTest_b : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage0Idx5_uid451_fracXBranch4Ext_uid45_fpLogE1pxTest_q : STD_LOGIC_VECTOR (46 downto 0);
    signal leftShiftStage0Idx6Rng24_uid453_fracXBranch4Ext_uid45_fpLogE1pxTest_in : STD_LOGIC_VECTOR (22 downto 0);
    signal leftShiftStage0Idx6Rng24_uid453_fracXBranch4Ext_uid45_fpLogE1pxTest_b : STD_LOGIC_VECTOR (22 downto 0);
    signal leftShiftStage0Idx6_uid454_fracXBranch4Ext_uid45_fpLogE1pxTest_q : STD_LOGIC_VECTOR (46 downto 0);
    signal leftShiftStage0Idx7Rng28_uid456_fracXBranch4Ext_uid45_fpLogE1pxTest_in : STD_LOGIC_VECTOR (18 downto 0);
    signal leftShiftStage0Idx7Rng28_uid456_fracXBranch4Ext_uid45_fpLogE1pxTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal leftShiftStage0Idx7_uid457_fracXBranch4Ext_uid45_fpLogE1pxTest_q : STD_LOGIC_VECTOR (46 downto 0);
    signal leftShiftStageSel4Dto2_uid458_fracXBranch4Ext_uid45_fpLogE1pxTest_in : STD_LOGIC_VECTOR (4 downto 0);
    signal leftShiftStageSel4Dto2_uid458_fracXBranch4Ext_uid45_fpLogE1pxTest_b : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage1Idx1Rng1_uid461_fracXBranch4Ext_uid45_fpLogE1pxTest_in : STD_LOGIC_VECTOR (45 downto 0);
    signal leftShiftStage1Idx1Rng1_uid461_fracXBranch4Ext_uid45_fpLogE1pxTest_b : STD_LOGIC_VECTOR (45 downto 0);
    signal leftShiftStage1Idx1_uid462_fracXBranch4Ext_uid45_fpLogE1pxTest_q : STD_LOGIC_VECTOR (46 downto 0);
    signal leftShiftStage1Idx2Rng2_uid464_fracXBranch4Ext_uid45_fpLogE1pxTest_in : STD_LOGIC_VECTOR (44 downto 0);
    signal leftShiftStage1Idx2Rng2_uid464_fracXBranch4Ext_uid45_fpLogE1pxTest_b : STD_LOGIC_VECTOR (44 downto 0);
    signal leftShiftStage1Idx2_uid465_fracXBranch4Ext_uid45_fpLogE1pxTest_q : STD_LOGIC_VECTOR (46 downto 0);
    signal leftShiftStage1Idx3Rng3_uid467_fracXBranch4Ext_uid45_fpLogE1pxTest_in : STD_LOGIC_VECTOR (43 downto 0);
    signal leftShiftStage1Idx3Rng3_uid467_fracXBranch4Ext_uid45_fpLogE1pxTest_b : STD_LOGIC_VECTOR (43 downto 0);
    signal leftShiftStage1Idx3_uid468_fracXBranch4Ext_uid45_fpLogE1pxTest_q : STD_LOGIC_VECTOR (46 downto 0);
    signal leftShiftStageSel1Dto0_uid469_fracXBranch4Ext_uid45_fpLogE1pxTest_in : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel1Dto0_uid469_fracXBranch4Ext_uid45_fpLogE1pxTest_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid470_fracXBranch4Ext_uid45_fpLogE1pxTest_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid470_fracXBranch4Ext_uid45_fpLogE1pxTest_q : STD_LOGIC_VECTOR (46 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_im0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_im0_b0 : STD_LOGIC_VECTOR (16 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_im0_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_im0_reset : std_logic;
    signal postPEMul_uid103_fpLogE1pxTest_im0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_bs1_in : STD_LOGIC_VECTOR (16 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_bs1_b : STD_LOGIC_VECTOR (16 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_im3_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_im3_b0 : STD_LOGIC_VECTOR (8 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_im3_s1 : STD_LOGIC_VECTOR (25 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_im3_reset : std_logic;
    signal postPEMul_uid103_fpLogE1pxTest_im3_q : STD_LOGIC_VECTOR (25 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_bs5_in : STD_LOGIC_VECTOR (25 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_bs5_b : STD_LOGIC_VECTOR (8 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_im6_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_im6_b0 : STD_LOGIC_VECTOR (7 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_im6_s1 : STD_LOGIC_VECTOR (25 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_im6_reset : std_logic;
    signal postPEMul_uid103_fpLogE1pxTest_im6_q : STD_LOGIC_VECTOR (25 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_bs7_in : STD_LOGIC_VECTOR (24 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_bs7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_bs8_in : STD_LOGIC_VECTOR (16 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_bs8_b : STD_LOGIC_VECTOR (16 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_bjB9_q : STD_LOGIC_VECTOR (17 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_im10_a0 : STD_LOGIC_VECTOR (9 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_im10_b0 : STD_LOGIC_VECTOR (7 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_im10_s1 : STD_LOGIC_VECTOR (17 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_im10_reset : std_logic;
    signal postPEMul_uid103_fpLogE1pxTest_im10_q : STD_LOGIC_VECTOR (17 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_bs12_in : STD_LOGIC_VECTOR (25 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_bs12_b : STD_LOGIC_VECTOR (8 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_bjB13_q : STD_LOGIC_VECTOR (9 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_join_14_q : STD_LOGIC_VECTOR (51 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_align_15_q : STD_LOGIC_VECTOR (42 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_align_15_qint : STD_LOGIC_VECTOR (42 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_align_17_q : STD_LOGIC_VECTOR (42 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_align_17_qint : STD_LOGIC_VECTOR (42 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_result_add_0_0_a : STD_LOGIC_VECTOR (53 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_result_add_0_0_b : STD_LOGIC_VECTOR (53 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_result_add_0_0_o : STD_LOGIC_VECTOR (53 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_result_add_0_0_q : STD_LOGIC_VECTOR (52 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_result_add_1_0_a : STD_LOGIC_VECTOR (53 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_result_add_1_0_b : STD_LOGIC_VECTOR (53 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_result_add_1_0_o : STD_LOGIC_VECTOR (53 downto 0);
    signal postPEMul_uid103_fpLogE1pxTest_result_add_1_0_q : STD_LOGIC_VECTOR (53 downto 0);
    signal leftShiftStage0Idx1Rng8_uid496_normVal_uid115_fpLogE1pxTest_in : STD_LOGIC_VECTOR (50 downto 0);
    signal leftShiftStage0Idx1Rng8_uid496_normVal_uid115_fpLogE1pxTest_b : STD_LOGIC_VECTOR (50 downto 0);
    signal leftShiftStage0Idx1_uid497_normVal_uid115_fpLogE1pxTest_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage0Idx2Rng16_uid499_normVal_uid115_fpLogE1pxTest_in : STD_LOGIC_VECTOR (42 downto 0);
    signal leftShiftStage0Idx2Rng16_uid499_normVal_uid115_fpLogE1pxTest_b : STD_LOGIC_VECTOR (42 downto 0);
    signal leftShiftStage0Idx2_uid500_normVal_uid115_fpLogE1pxTest_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage0Idx3Rng24_uid502_normVal_uid115_fpLogE1pxTest_in : STD_LOGIC_VECTOR (34 downto 0);
    signal leftShiftStage0Idx3Rng24_uid502_normVal_uid115_fpLogE1pxTest_b : STD_LOGIC_VECTOR (34 downto 0);
    signal leftShiftStage0Idx3_uid503_normVal_uid115_fpLogE1pxTest_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage0Idx4_uid506_normVal_uid115_fpLogE1pxTest_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage0Idx5Pad40_uid507_normVal_uid115_fpLogE1pxTest_q : STD_LOGIC_VECTOR (39 downto 0);
    signal leftShiftStage0Idx5Rng40_uid508_normVal_uid115_fpLogE1pxTest_in : STD_LOGIC_VECTOR (18 downto 0);
    signal leftShiftStage0Idx5Rng40_uid508_normVal_uid115_fpLogE1pxTest_b : STD_LOGIC_VECTOR (18 downto 0);
    signal leftShiftStage0Idx5_uid509_normVal_uid115_fpLogE1pxTest_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage0Idx6Pad48_uid510_normVal_uid115_fpLogE1pxTest_q : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage0Idx6Rng48_uid511_normVal_uid115_fpLogE1pxTest_in : STD_LOGIC_VECTOR (10 downto 0);
    signal leftShiftStage0Idx6Rng48_uid511_normVal_uid115_fpLogE1pxTest_b : STD_LOGIC_VECTOR (10 downto 0);
    signal leftShiftStage0Idx6_uid512_normVal_uid115_fpLogE1pxTest_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage0Idx7Pad56_uid513_normVal_uid115_fpLogE1pxTest_q : STD_LOGIC_VECTOR (55 downto 0);
    signal leftShiftStage0Idx7Rng56_uid514_normVal_uid115_fpLogE1pxTest_in : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0Idx7Rng56_uid514_normVal_uid115_fpLogE1pxTest_b : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0Idx7_uid515_normVal_uid115_fpLogE1pxTest_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStageSel5Dto3_uid516_normVal_uid115_fpLogE1pxTest_in : STD_LOGIC_VECTOR (5 downto 0);
    signal leftShiftStageSel5Dto3_uid516_normVal_uid115_fpLogE1pxTest_b : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage1Idx1Rng1_uid519_normVal_uid115_fpLogE1pxTest_in : STD_LOGIC_VECTOR (57 downto 0);
    signal leftShiftStage1Idx1Rng1_uid519_normVal_uid115_fpLogE1pxTest_b : STD_LOGIC_VECTOR (57 downto 0);
    signal leftShiftStage1Idx1_uid520_normVal_uid115_fpLogE1pxTest_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage1Idx2Rng2_uid522_normVal_uid115_fpLogE1pxTest_in : STD_LOGIC_VECTOR (56 downto 0);
    signal leftShiftStage1Idx2Rng2_uid522_normVal_uid115_fpLogE1pxTest_b : STD_LOGIC_VECTOR (56 downto 0);
    signal leftShiftStage1Idx2_uid523_normVal_uid115_fpLogE1pxTest_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage1Idx3Rng3_uid525_normVal_uid115_fpLogE1pxTest_in : STD_LOGIC_VECTOR (55 downto 0);
    signal leftShiftStage1Idx3Rng3_uid525_normVal_uid115_fpLogE1pxTest_b : STD_LOGIC_VECTOR (55 downto 0);
    signal leftShiftStage1Idx3_uid526_normVal_uid115_fpLogE1pxTest_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage1Idx4Rng4_uid528_normVal_uid115_fpLogE1pxTest_in : STD_LOGIC_VECTOR (54 downto 0);
    signal leftShiftStage1Idx4Rng4_uid528_normVal_uid115_fpLogE1pxTest_b : STD_LOGIC_VECTOR (54 downto 0);
    signal leftShiftStage1Idx4_uid529_normVal_uid115_fpLogE1pxTest_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage1Idx5Pad5_uid530_normVal_uid115_fpLogE1pxTest_q : STD_LOGIC_VECTOR (4 downto 0);
    signal leftShiftStage1Idx5Rng5_uid531_normVal_uid115_fpLogE1pxTest_in : STD_LOGIC_VECTOR (53 downto 0);
    signal leftShiftStage1Idx5Rng5_uid531_normVal_uid115_fpLogE1pxTest_b : STD_LOGIC_VECTOR (53 downto 0);
    signal leftShiftStage1Idx5_uid532_normVal_uid115_fpLogE1pxTest_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage1Idx6Pad6_uid533_normVal_uid115_fpLogE1pxTest_q : STD_LOGIC_VECTOR (5 downto 0);
    signal leftShiftStage1Idx6Rng6_uid534_normVal_uid115_fpLogE1pxTest_in : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage1Idx6Rng6_uid534_normVal_uid115_fpLogE1pxTest_b : STD_LOGIC_VECTOR (52 downto 0);
    signal leftShiftStage1Idx6_uid535_normVal_uid115_fpLogE1pxTest_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage1Idx7Pad7_uid536_normVal_uid115_fpLogE1pxTest_q : STD_LOGIC_VECTOR (6 downto 0);
    signal leftShiftStage1Idx7Rng7_uid537_normVal_uid115_fpLogE1pxTest_in : STD_LOGIC_VECTOR (51 downto 0);
    signal leftShiftStage1Idx7Rng7_uid537_normVal_uid115_fpLogE1pxTest_b : STD_LOGIC_VECTOR (51 downto 0);
    signal leftShiftStage1Idx7_uid538_normVal_uid115_fpLogE1pxTest_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStageSel2Dto0_uid539_normVal_uid115_fpLogE1pxTest_in : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStageSel2Dto0_uid539_normVal_uid115_fpLogE1pxTest_b : STD_LOGIC_VECTOR (2 downto 0);
    signal memoryC0_uid231_lnTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid231_lnTables_lutmem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal memoryC0_uid231_lnTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC0_uid231_lnTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC0_uid231_lnTables_lutmem_ir : STD_LOGIC_VECTOR (17 downto 0);
    signal memoryC0_uid231_lnTables_lutmem_r : STD_LOGIC_VECTOR (17 downto 0);
    signal memoryC0_uid232_lnTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid232_lnTables_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal memoryC0_uid232_lnTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC0_uid232_lnTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC0_uid232_lnTables_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal memoryC0_uid232_lnTables_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal memoryC1_uid235_lnTables_lutmem_reset0 : std_logic;
    signal memoryC1_uid235_lnTables_lutmem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal memoryC1_uid235_lnTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC1_uid235_lnTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC1_uid235_lnTables_lutmem_ir : STD_LOGIC_VECTOR (17 downto 0);
    signal memoryC1_uid235_lnTables_lutmem_r : STD_LOGIC_VECTOR (17 downto 0);
    signal memoryC1_uid236_lnTables_lutmem_reset0 : std_logic;
    signal memoryC1_uid236_lnTables_lutmem_ia : STD_LOGIC_VECTOR (2 downto 0);
    signal memoryC1_uid236_lnTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC1_uid236_lnTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC1_uid236_lnTables_lutmem_ir : STD_LOGIC_VECTOR (2 downto 0);
    signal memoryC1_uid236_lnTables_lutmem_r : STD_LOGIC_VECTOR (2 downto 0);
    signal memoryC2_uid239_lnTables_lutmem_reset0 : std_logic;
    signal memoryC2_uid239_lnTables_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal memoryC2_uid239_lnTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC2_uid239_lnTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC2_uid239_lnTables_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal memoryC2_uid239_lnTables_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_selLSBs_in : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_selLSBs_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_selMSBs_in : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_selMSBs_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_msplit_0_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_msplit_0_q : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_msplit_1_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_msplit_1_q : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_mfinal_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_mfinal_q : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_selLSBs_in : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_selLSBs_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_selMSBs_in : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_selMSBs_b : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_msplit_0_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_msplit_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_msplit_1_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_msplit_1_q : STD_LOGIC_VECTOR (46 downto 0);
    signal leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_mfinal_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_mfinal_q : STD_LOGIC_VECTOR (46 downto 0);
    signal leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_selLSBs_in : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_selLSBs_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_selMSBs_in : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_selMSBs_b : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_msplit_0_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_msplit_0_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_msplit_1_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_msplit_1_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_mfinal_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_mfinal_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_selLSBs_in : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_selLSBs_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_selMSBs_in : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_selMSBs_b : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_msplit_0_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_msplit_0_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_msplit_1_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_msplit_1_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_mfinal_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_mfinal_q : STD_LOGIC_VECTOR (58 downto 0);
    signal redist0_r_uid295_countZ_uid114_fpLogE1pxTest_q_1_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist1_excREnc_uid145_fpLogE1pxTest_q_10_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist2_signRFull_uid143_fpLogE1pxTest_q_10_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_branch4ExpCorrection_uid118_fpLogE1pxTest_q_10_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist4_lowRangeB_uid106_fpLogE1pxTest_b_1_q : STD_LOGIC_VECTOR (21 downto 0);
    signal redist5_fracBRed_uid98_fpLogE1pxTest_b_4_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist6_branch3OrC_uid91_fpLogE1pxTest_q_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_branch3OrC_uid91_fpLogE1pxTest_q_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_branch3OrC_uid91_fpLogE1pxTest_q_10_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_zPPolyEval_uid88_fpLogE1pxTest_b_2_q : STD_LOGIC_VECTOR (14 downto 0);
    signal redist10_yAddr_uid87_fpLogE1pxTest_b_2_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist11_yAddr_uid87_fpLogE1pxTest_b_4_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist12_fracB_uid80_fpLogE1pxTest_q_2_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist13_fracXRSRange_uid78_fpLogE1pxTest_b_1_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist14_expB_uid76_fpLogE1pxTest_q_8_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist15_resIsX_uid59_fpLogE1pxTest_c_10_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_shifterAddr_uid31_fpLogE1pxTest_b_1_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist17_oFracX_uid29_fpLogE1pxTest_q_1_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist18_frac_x_uid18_fpLogE1pxTest_b_1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist19_frac_x_uid18_fpLogE1pxTest_b_7_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist20_frac_x_uid18_fpLogE1pxTest_b_11_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist21_signX_uid7_fpLogE1pxTest_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist22_expX_uid6_fpLogE1pxTest_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist23_expX_uid6_fpLogE1pxTest_b_11_q : STD_LOGIC_VECTOR (7 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- xIn(GPIN,3)@0

    -- signX_uid7_fpLogE1pxTest(BITSELECT,6)@0
    signX_uid7_fpLogE1pxTest_in <= STD_LOGIC_VECTOR(a);
    signX_uid7_fpLogE1pxTest_b <= STD_LOGIC_VECTOR(signX_uid7_fpLogE1pxTest_in(31 downto 31));

    -- redist21_signX_uid7_fpLogE1pxTest_b_1(DELAY,587)
    redist21_signX_uid7_fpLogE1pxTest_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => signX_uid7_fpLogE1pxTest_b, xout => redist21_signX_uid7_fpLogE1pxTest_b_1_q, clk => clk, aclr => areset );

    -- frac_x_uid18_fpLogE1pxTest(BITSELECT,17)@0
    frac_x_uid18_fpLogE1pxTest_in <= a;
    frac_x_uid18_fpLogE1pxTest_b <= frac_x_uid18_fpLogE1pxTest_in(22 downto 0);

    -- redist18_frac_x_uid18_fpLogE1pxTest_b_1(DELAY,584)
    redist18_frac_x_uid18_fpLogE1pxTest_b_1 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => frac_x_uid18_fpLogE1pxTest_b, xout => redist18_frac_x_uid18_fpLogE1pxTest_b_1_q, clk => clk, aclr => areset );

    -- cstAllZWF_uid8_fpLogE1pxTest(CONSTANT,7)
    cstAllZWF_uid8_fpLogE1pxTest_q <= "00000000000000000000000";

    -- fracXIsZero_uid21_fpLogE1pxTest(LOGICAL,20)@1
    fracXIsZero_uid21_fpLogE1pxTest_a <= cstAllZWF_uid8_fpLogE1pxTest_q;
    fracXIsZero_uid21_fpLogE1pxTest_b <= redist18_frac_x_uid18_fpLogE1pxTest_b_1_q;
    fracXIsZero_uid21_fpLogE1pxTest_q <= "1" WHEN fracXIsZero_uid21_fpLogE1pxTest_a = fracXIsZero_uid21_fpLogE1pxTest_b ELSE "0";

    -- cstAllOWE_uid14_fpLogE1pxTest(CONSTANT,13)
    cstAllOWE_uid14_fpLogE1pxTest_q <= "11111111";

    -- expX_uid6_fpLogE1pxTest(BITSELECT,5)@0
    expX_uid6_fpLogE1pxTest_in <= a;
    expX_uid6_fpLogE1pxTest_b <= expX_uid6_fpLogE1pxTest_in(30 downto 23);

    -- redist22_expX_uid6_fpLogE1pxTest_b_1(DELAY,588)
    redist22_expX_uid6_fpLogE1pxTest_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expX_uid6_fpLogE1pxTest_b, xout => redist22_expX_uid6_fpLogE1pxTest_b_1_q, clk => clk, aclr => areset );

    -- expXIsMax_uid20_fpLogE1pxTest(LOGICAL,19)@1
    expXIsMax_uid20_fpLogE1pxTest_a <= redist22_expX_uid6_fpLogE1pxTest_b_1_q;
    expXIsMax_uid20_fpLogE1pxTest_b <= cstAllOWE_uid14_fpLogE1pxTest_q;
    expXIsMax_uid20_fpLogE1pxTest_q <= "1" WHEN expXIsMax_uid20_fpLogE1pxTest_a = expXIsMax_uid20_fpLogE1pxTest_b ELSE "0";

    -- excI_x_uid23_fpLogE1pxTest(LOGICAL,22)@1
    excI_x_uid23_fpLogE1pxTest_a <= expXIsMax_uid20_fpLogE1pxTest_q;
    excI_x_uid23_fpLogE1pxTest_b <= fracXIsZero_uid21_fpLogE1pxTest_q;
    excI_x_uid23_fpLogE1pxTest_q <= excI_x_uid23_fpLogE1pxTest_a and excI_x_uid23_fpLogE1pxTest_b;

    -- negInf_uid139_fpLogE1pxTest(LOGICAL,138)@1
    negInf_uid139_fpLogE1pxTest_a <= redist21_signX_uid7_fpLogE1pxTest_b_1_q;
    negInf_uid139_fpLogE1pxTest_b <= excI_x_uid23_fpLogE1pxTest_q;
    negInf_uid139_fpLogE1pxTest_q <= negInf_uid139_fpLogE1pxTest_a and negInf_uid139_fpLogE1pxTest_b;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- cstBias_uid9_fpLogE1pxTest(CONSTANT,8)
    cstBias_uid9_fpLogE1pxTest_q <= "01111111";

    -- mO_uid131_fpLogE1pxTest(BITJOIN,130)@0
    mO_uid131_fpLogE1pxTest_q <= VCC_q & cstBias_uid9_fpLogE1pxTest_q & cstAllZWF_uid8_fpLogE1pxTest_q;

    -- xLTM1_uid134_fpLogE1pxTest(COMPARE,133)@0 + 1
    xLTM1_uid134_fpLogE1pxTest_a <= STD_LOGIC_VECTOR("00" & mO_uid131_fpLogE1pxTest_q);
    xLTM1_uid134_fpLogE1pxTest_b <= STD_LOGIC_VECTOR("00" & a);
    xLTM1_uid134_fpLogE1pxTest_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            xLTM1_uid134_fpLogE1pxTest_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            xLTM1_uid134_fpLogE1pxTest_o <= STD_LOGIC_VECTOR(UNSIGNED(xLTM1_uid134_fpLogE1pxTest_a) - UNSIGNED(xLTM1_uid134_fpLogE1pxTest_b));
        END IF;
    END PROCESS;
    xLTM1_uid134_fpLogE1pxTest_c(0) <= xLTM1_uid134_fpLogE1pxTest_o(33);

    -- invExpXIsMax_uid25_fpLogE1pxTest(LOGICAL,24)@1
    invExpXIsMax_uid25_fpLogE1pxTest_a <= expXIsMax_uid20_fpLogE1pxTest_q;
    invExpXIsMax_uid25_fpLogE1pxTest_q <= not (invExpXIsMax_uid25_fpLogE1pxTest_a);

    -- cstAllZWE_uid16_fpLogE1pxTest(CONSTANT,15)
    cstAllZWE_uid16_fpLogE1pxTest_q <= "00000000";

    -- excZ_x_uid19_fpLogE1pxTest(LOGICAL,18)@1
    excZ_x_uid19_fpLogE1pxTest_a <= redist22_expX_uid6_fpLogE1pxTest_b_1_q;
    excZ_x_uid19_fpLogE1pxTest_b <= cstAllZWE_uid16_fpLogE1pxTest_q;
    excZ_x_uid19_fpLogE1pxTest_q <= "1" WHEN excZ_x_uid19_fpLogE1pxTest_a = excZ_x_uid19_fpLogE1pxTest_b ELSE "0";

    -- InvExpXIsZero_uid26_fpLogE1pxTest(LOGICAL,25)@1
    InvExpXIsZero_uid26_fpLogE1pxTest_a <= excZ_x_uid19_fpLogE1pxTest_q;
    InvExpXIsZero_uid26_fpLogE1pxTest_q <= not (InvExpXIsZero_uid26_fpLogE1pxTest_a);

    -- excR_x_uid27_fpLogE1pxTest(LOGICAL,26)@1
    excR_x_uid27_fpLogE1pxTest_a <= InvExpXIsZero_uid26_fpLogE1pxTest_q;
    excR_x_uid27_fpLogE1pxTest_b <= invExpXIsMax_uid25_fpLogE1pxTest_q;
    excR_x_uid27_fpLogE1pxTest_q <= excR_x_uid27_fpLogE1pxTest_a and excR_x_uid27_fpLogE1pxTest_b;

    -- excRNaN0_uid140_fpLogE1pxTest(LOGICAL,139)@1
    excRNaN0_uid140_fpLogE1pxTest_a <= excR_x_uid27_fpLogE1pxTest_q;
    excRNaN0_uid140_fpLogE1pxTest_b <= xLTM1_uid134_fpLogE1pxTest_c;
    excRNaN0_uid140_fpLogE1pxTest_q <= excRNaN0_uid140_fpLogE1pxTest_a and excRNaN0_uid140_fpLogE1pxTest_b;

    -- fracXIsNotZero_uid22_fpLogE1pxTest(LOGICAL,21)@1
    fracXIsNotZero_uid22_fpLogE1pxTest_a <= fracXIsZero_uid21_fpLogE1pxTest_q;
    fracXIsNotZero_uid22_fpLogE1pxTest_q <= not (fracXIsNotZero_uid22_fpLogE1pxTest_a);

    -- excN_x_uid24_fpLogE1pxTest(LOGICAL,23)@1
    excN_x_uid24_fpLogE1pxTest_a <= expXIsMax_uid20_fpLogE1pxTest_q;
    excN_x_uid24_fpLogE1pxTest_b <= fracXIsNotZero_uid22_fpLogE1pxTest_q;
    excN_x_uid24_fpLogE1pxTest_q <= excN_x_uid24_fpLogE1pxTest_a and excN_x_uid24_fpLogE1pxTest_b;

    -- excRNaN_uid141_fpLogE1pxTest(LOGICAL,140)@1
    excRNaN_uid141_fpLogE1pxTest_a <= excN_x_uid24_fpLogE1pxTest_q;
    excRNaN_uid141_fpLogE1pxTest_b <= excRNaN0_uid140_fpLogE1pxTest_q;
    excRNaN_uid141_fpLogE1pxTest_c <= negInf_uid139_fpLogE1pxTest_q;
    excRNaN_uid141_fpLogE1pxTest_q <= excRNaN_uid141_fpLogE1pxTest_a or excRNaN_uid141_fpLogE1pxTest_b or excRNaN_uid141_fpLogE1pxTest_c;

    -- invExcRNaN_uid142_fpLogE1pxTest(LOGICAL,141)@1
    invExcRNaN_uid142_fpLogE1pxTest_a <= excRNaN_uid141_fpLogE1pxTest_q;
    invExcRNaN_uid142_fpLogE1pxTest_q <= not (invExcRNaN_uid142_fpLogE1pxTest_a);

    -- signRFull_uid143_fpLogE1pxTest(LOGICAL,142)@1 + 1
    signRFull_uid143_fpLogE1pxTest_a <= invExcRNaN_uid142_fpLogE1pxTest_q;
    signRFull_uid143_fpLogE1pxTest_b <= redist21_signX_uid7_fpLogE1pxTest_b_1_q;
    signRFull_uid143_fpLogE1pxTest_qi <= signRFull_uid143_fpLogE1pxTest_a and signRFull_uid143_fpLogE1pxTest_b;
    signRFull_uid143_fpLogE1pxTest_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => signRFull_uid143_fpLogE1pxTest_qi, xout => signRFull_uid143_fpLogE1pxTest_q, clk => clk, aclr => areset );

    -- redist2_signRFull_uid143_fpLogE1pxTest_q_10(DELAY,568)
    redist2_signRFull_uid143_fpLogE1pxTest_q_10 : dspba_delay
    GENERIC MAP ( width => 1, depth => 9, reset_kind => "ASYNC" )
    PORT MAP ( xin => signRFull_uid143_fpLogE1pxTest_q, xout => redist2_signRFull_uid143_fpLogE1pxTest_q_10_q, clk => clk, aclr => areset );

    -- redist23_expX_uid6_fpLogE1pxTest_b_11(DELAY,589)
    redist23_expX_uid6_fpLogE1pxTest_b_11 : dspba_delay
    GENERIC MAP ( width => 8, depth => 10, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist22_expX_uid6_fpLogE1pxTest_b_1_q, xout => redist23_expX_uid6_fpLogE1pxTest_b_11_q, clk => clk, aclr => areset );

    -- cstBiasMO_uid10_fpLogE1pxTest(CONSTANT,9)
    cstBiasMO_uid10_fpLogE1pxTest_q <= "01111110";

    -- expXIsMo_uid83_fpLogE1pxTest(COMPARE,82)@1
    expXIsMo_uid83_fpLogE1pxTest_a <= STD_LOGIC_VECTOR("00" & redist22_expX_uid6_fpLogE1pxTest_b_1_q);
    expXIsMo_uid83_fpLogE1pxTest_b <= STD_LOGIC_VECTOR("00" & cstBiasMO_uid10_fpLogE1pxTest_q);
    expXIsMo_uid83_fpLogE1pxTest_o <= STD_LOGIC_VECTOR(UNSIGNED(expXIsMo_uid83_fpLogE1pxTest_a) - UNSIGNED(expXIsMo_uid83_fpLogE1pxTest_b));
    expXIsMo_uid83_fpLogE1pxTest_c(0) <= expXIsMo_uid83_fpLogE1pxTest_o(9);

    -- cstBiasMWFP1_uid13_fpLogE1pxTest(CONSTANT,12)
    cstBiasMWFP1_uid13_fpLogE1pxTest_q <= "01100111";

    -- resIsX_uid59_fpLogE1pxTest(COMPARE,58)@1
    resIsX_uid59_fpLogE1pxTest_a <= STD_LOGIC_VECTOR("00" & redist22_expX_uid6_fpLogE1pxTest_b_1_q);
    resIsX_uid59_fpLogE1pxTest_b <= STD_LOGIC_VECTOR("00" & cstBiasMWFP1_uid13_fpLogE1pxTest_q);
    resIsX_uid59_fpLogE1pxTest_o <= STD_LOGIC_VECTOR(UNSIGNED(resIsX_uid59_fpLogE1pxTest_a) - UNSIGNED(resIsX_uid59_fpLogE1pxTest_b));
    resIsX_uid59_fpLogE1pxTest_c(0) <= resIsX_uid59_fpLogE1pxTest_o(9);

    -- invResIsX_uid69_fpLogE1pxTest(LOGICAL,68)@1
    invResIsX_uid69_fpLogE1pxTest_a <= resIsX_uid59_fpLogE1pxTest_c;
    invResIsX_uid69_fpLogE1pxTest_q <= not (invResIsX_uid69_fpLogE1pxTest_a);

    -- branch22_uid63_fpLogE1pxTest(COMPARE,62)@1
    branch22_uid63_fpLogE1pxTest_a <= STD_LOGIC_VECTOR("00" & redist22_expX_uid6_fpLogE1pxTest_b_1_q);
    branch22_uid63_fpLogE1pxTest_b <= STD_LOGIC_VECTOR("00" & cstBias_uid9_fpLogE1pxTest_q);
    branch22_uid63_fpLogE1pxTest_o <= STD_LOGIC_VECTOR(UNSIGNED(branch22_uid63_fpLogE1pxTest_a) - UNSIGNED(branch22_uid63_fpLogE1pxTest_b));
    branch22_uid63_fpLogE1pxTest_c(0) <= branch22_uid63_fpLogE1pxTest_o(9);
    branch22_uid63_fpLogE1pxTest_n(0) <= not (branch22_uid63_fpLogE1pxTest_o(9));

    -- branch4_uid72_fpLogE1pxTest(LOGICAL,71)@1
    branch4_uid72_fpLogE1pxTest_a <= branch22_uid63_fpLogE1pxTest_c;
    branch4_uid72_fpLogE1pxTest_b <= invResIsX_uid69_fpLogE1pxTest_q;
    branch4_uid72_fpLogE1pxTest_c <= redist21_signX_uid7_fpLogE1pxTest_b_1_q;
    branch4_uid72_fpLogE1pxTest_q <= branch4_uid72_fpLogE1pxTest_a and branch4_uid72_fpLogE1pxTest_b and branch4_uid72_fpLogE1pxTest_c;

    -- c_uid84_fpLogE1pxTest(LOGICAL,83)@1
    c_uid84_fpLogE1pxTest_a <= branch4_uid72_fpLogE1pxTest_q;
    c_uid84_fpLogE1pxTest_b <= expXIsMo_uid83_fpLogE1pxTest_c;
    c_uid84_fpLogE1pxTest_q <= c_uid84_fpLogE1pxTest_a and c_uid84_fpLogE1pxTest_b;

    -- shifterAddrExt_uid30_fpLogE1pxTest(SUB,29)@0
    shifterAddrExt_uid30_fpLogE1pxTest_a <= STD_LOGIC_VECTOR("0" & cstBias_uid9_fpLogE1pxTest_q);
    shifterAddrExt_uid30_fpLogE1pxTest_b <= STD_LOGIC_VECTOR("0" & expX_uid6_fpLogE1pxTest_b);
    shifterAddrExt_uid30_fpLogE1pxTest_o <= STD_LOGIC_VECTOR(UNSIGNED(shifterAddrExt_uid30_fpLogE1pxTest_a) - UNSIGNED(shifterAddrExt_uid30_fpLogE1pxTest_b));
    shifterAddrExt_uid30_fpLogE1pxTest_q <= shifterAddrExt_uid30_fpLogE1pxTest_o(8 downto 0);

    -- shifterAddr_uid31_fpLogE1pxTest(BITSELECT,30)@0
    shifterAddr_uid31_fpLogE1pxTest_in <= shifterAddrExt_uid30_fpLogE1pxTest_q(4 downto 0);
    shifterAddr_uid31_fpLogE1pxTest_b <= shifterAddr_uid31_fpLogE1pxTest_in(4 downto 0);

    -- redist16_shifterAddr_uid31_fpLogE1pxTest_b_1(DELAY,582)
    redist16_shifterAddr_uid31_fpLogE1pxTest_b_1 : dspba_delay
    GENERIC MAP ( width => 5, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => shifterAddr_uid31_fpLogE1pxTest_b, xout => redist16_shifterAddr_uid31_fpLogE1pxTest_b_1_q, clk => clk, aclr => areset );

    -- branch4ExpCorrection_uid118_fpLogE1pxTest(SUB,117)@1 + 1
    branch4ExpCorrection_uid118_fpLogE1pxTest_a <= STD_LOGIC_VECTOR("0" & redist16_shifterAddr_uid31_fpLogE1pxTest_b_1_q);
    branch4ExpCorrection_uid118_fpLogE1pxTest_b <= STD_LOGIC_VECTOR("00000" & c_uid84_fpLogE1pxTest_q);
    branch4ExpCorrection_uid118_fpLogE1pxTest_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            branch4ExpCorrection_uid118_fpLogE1pxTest_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            branch4ExpCorrection_uid118_fpLogE1pxTest_o <= STD_LOGIC_VECTOR(UNSIGNED(branch4ExpCorrection_uid118_fpLogE1pxTest_a) - UNSIGNED(branch4ExpCorrection_uid118_fpLogE1pxTest_b));
        END IF;
    END PROCESS;
    branch4ExpCorrection_uid118_fpLogE1pxTest_q <= branch4ExpCorrection_uid118_fpLogE1pxTest_o(5 downto 0);

    -- redist3_branch4ExpCorrection_uid118_fpLogE1pxTest_q_10(DELAY,569)
    redist3_branch4ExpCorrection_uid118_fpLogE1pxTest_q_10 : dspba_delay
    GENERIC MAP ( width => 6, depth => 9, reset_kind => "ASYNC" )
    PORT MAP ( xin => branch4ExpCorrection_uid118_fpLogE1pxTest_q, xout => redist3_branch4ExpCorrection_uid118_fpLogE1pxTest_q_10_q, clk => clk, aclr => areset );

    -- expRExt1_uid119_fpLogE1pxTest(SUB,118)@11
    expRExt1_uid119_fpLogE1pxTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => expRExt0_uid117_fpLogE1pxTest_q(9)) & expRExt0_uid117_fpLogE1pxTest_q));
    expRExt1_uid119_fpLogE1pxTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 6 => redist3_branch4ExpCorrection_uid118_fpLogE1pxTest_q_10_q(5)) & redist3_branch4ExpCorrection_uid118_fpLogE1pxTest_q_10_q));
    expRExt1_uid119_fpLogE1pxTest_o <= STD_LOGIC_VECTOR(SIGNED(expRExt1_uid119_fpLogE1pxTest_a) - SIGNED(expRExt1_uid119_fpLogE1pxTest_b));
    expRExt1_uid119_fpLogE1pxTest_q <= expRExt1_uid119_fpLogE1pxTest_o(10 downto 0);

    -- expRExt1Red_uid120_fpLogE1pxTest(BITSELECT,119)@11
    expRExt1Red_uid120_fpLogE1pxTest_in <= STD_LOGIC_VECTOR(expRExt1_uid119_fpLogE1pxTest_q(9 downto 0));
    expRExt1Red_uid120_fpLogE1pxTest_b <= STD_LOGIC_VECTOR(expRExt1Red_uid120_fpLogE1pxTest_in(9 downto 0));

    -- zs_uid260_countZ_uid114_fpLogE1pxTest(CONSTANT,259)
    zs_uid260_countZ_uid114_fpLogE1pxTest_q <= "00000000000000000000000000000000";

    -- branch11_uid61_fpLogE1pxTest(LOGICAL,60)@1
    branch11_uid61_fpLogE1pxTest_a <= redist21_signX_uid7_fpLogE1pxTest_b_1_q;
    branch11_uid61_fpLogE1pxTest_q <= not (branch11_uid61_fpLogE1pxTest_a);

    -- branch3_uid70_fpLogE1pxTest(LOGICAL,69)@1
    branch3_uid70_fpLogE1pxTest_a <= branch22_uid63_fpLogE1pxTest_c;
    branch3_uid70_fpLogE1pxTest_b <= invResIsX_uid69_fpLogE1pxTest_q;
    branch3_uid70_fpLogE1pxTest_c <= branch11_uid61_fpLogE1pxTest_q;
    branch3_uid70_fpLogE1pxTest_q <= branch3_uid70_fpLogE1pxTest_a and branch3_uid70_fpLogE1pxTest_b and branch3_uid70_fpLogE1pxTest_c;

    -- branch3OrC_uid91_fpLogE1pxTest(LOGICAL,90)@1 + 1
    branch3OrC_uid91_fpLogE1pxTest_a <= branch3_uid70_fpLogE1pxTest_q;
    branch3OrC_uid91_fpLogE1pxTest_b <= c_uid84_fpLogE1pxTest_q;
    branch3OrC_uid91_fpLogE1pxTest_qi <= branch3OrC_uid91_fpLogE1pxTest_a or branch3OrC_uid91_fpLogE1pxTest_b;
    branch3OrC_uid91_fpLogE1pxTest_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => branch3OrC_uid91_fpLogE1pxTest_qi, xout => branch3OrC_uid91_fpLogE1pxTest_q, clk => clk, aclr => areset );

    -- redist6_branch3OrC_uid91_fpLogE1pxTest_q_6(DELAY,572)
    redist6_branch3OrC_uid91_fpLogE1pxTest_q_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => branch3OrC_uid91_fpLogE1pxTest_q, xout => redist6_branch3OrC_uid91_fpLogE1pxTest_q_6_q, clk => clk, aclr => areset );

    -- redist7_branch3OrC_uid91_fpLogE1pxTest_q_8(DELAY,573)
    redist7_branch3OrC_uid91_fpLogE1pxTest_q_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist6_branch3OrC_uid91_fpLogE1pxTest_q_6_q, xout => redist7_branch3OrC_uid91_fpLogE1pxTest_q_8_q, clk => clk, aclr => areset );

    -- o2_uid96_fpLogE1pxTest(CONSTANT,95)
    o2_uid96_fpLogE1pxTest_q <= "01";

    -- redist19_frac_x_uid18_fpLogE1pxTest_b_7(DELAY,585)
    redist19_frac_x_uid18_fpLogE1pxTest_b_7 : dspba_delay
    GENERIC MAP ( width => 23, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist18_frac_x_uid18_fpLogE1pxTest_b_1_q, xout => redist19_frac_x_uid18_fpLogE1pxTest_b_7_q, clk => clk, aclr => areset );

    -- sEz_uid97_fpLogE1pxTest(BITJOIN,96)@7
    sEz_uid97_fpLogE1pxTest_q <= o2_uid96_fpLogE1pxTest_q & redist19_frac_x_uid18_fpLogE1pxTest_b_7_q;

    -- z2_uid99_fpLogE1pxTest(CONSTANT,98)
    z2_uid99_fpLogE1pxTest_q <= "00";

    -- leftShiftStage1Idx3Rng3_uid467_fracXBranch4Ext_uid45_fpLogE1pxTest(BITSELECT,466)@1
    leftShiftStage1Idx3Rng3_uid467_fracXBranch4Ext_uid45_fpLogE1pxTest_in <= leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_mfinal_q(43 downto 0);
    leftShiftStage1Idx3Rng3_uid467_fracXBranch4Ext_uid45_fpLogE1pxTest_b <= leftShiftStage1Idx3Rng3_uid467_fracXBranch4Ext_uid45_fpLogE1pxTest_in(43 downto 0);

    -- paddingX_uid201_eLn2_uid82_fpLogE1pxTest(CONSTANT,200)
    paddingX_uid201_eLn2_uid82_fpLogE1pxTest_q <= "000";

    -- leftShiftStage1Idx3_uid468_fracXBranch4Ext_uid45_fpLogE1pxTest(BITJOIN,467)@1
    leftShiftStage1Idx3_uid468_fracXBranch4Ext_uid45_fpLogE1pxTest_q <= leftShiftStage1Idx3Rng3_uid467_fracXBranch4Ext_uid45_fpLogE1pxTest_b & paddingX_uid201_eLn2_uid82_fpLogE1pxTest_q;

    -- leftShiftStage1Idx2Rng2_uid464_fracXBranch4Ext_uid45_fpLogE1pxTest(BITSELECT,463)@1
    leftShiftStage1Idx2Rng2_uid464_fracXBranch4Ext_uid45_fpLogE1pxTest_in <= leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_mfinal_q(44 downto 0);
    leftShiftStage1Idx2Rng2_uid464_fracXBranch4Ext_uid45_fpLogE1pxTest_b <= leftShiftStage1Idx2Rng2_uid464_fracXBranch4Ext_uid45_fpLogE1pxTest_in(44 downto 0);

    -- leftShiftStage1Idx2_uid465_fracXBranch4Ext_uid45_fpLogE1pxTest(BITJOIN,464)@1
    leftShiftStage1Idx2_uid465_fracXBranch4Ext_uid45_fpLogE1pxTest_q <= leftShiftStage1Idx2Rng2_uid464_fracXBranch4Ext_uid45_fpLogE1pxTest_b & z2_uid99_fpLogE1pxTest_q;

    -- leftShiftStage1Idx1Rng1_uid461_fracXBranch4Ext_uid45_fpLogE1pxTest(BITSELECT,460)@1
    leftShiftStage1Idx1Rng1_uid461_fracXBranch4Ext_uid45_fpLogE1pxTest_in <= leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_mfinal_q(45 downto 0);
    leftShiftStage1Idx1Rng1_uid461_fracXBranch4Ext_uid45_fpLogE1pxTest_b <= leftShiftStage1Idx1Rng1_uid461_fracXBranch4Ext_uid45_fpLogE1pxTest_in(45 downto 0);

    -- leftShiftStage1Idx1_uid462_fracXBranch4Ext_uid45_fpLogE1pxTest(BITJOIN,461)@1
    leftShiftStage1Idx1_uid462_fracXBranch4Ext_uid45_fpLogE1pxTest_q <= leftShiftStage1Idx1Rng1_uid461_fracXBranch4Ext_uid45_fpLogE1pxTest_b & GND_q;

    -- rightShiftStage1Idx3Rng3_uid429_fracXRSExt_uid32_fpLogE1pxTest(BITSELECT,428)@0
    rightShiftStage1Idx3Rng3_uid429_fracXRSExt_uid32_fpLogE1pxTest_in <= rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_mfinal_q;
    rightShiftStage1Idx3Rng3_uid429_fracXRSExt_uid32_fpLogE1pxTest_b <= rightShiftStage1Idx3Rng3_uid429_fracXRSExt_uid32_fpLogE1pxTest_in(47 downto 3);

    -- rightShiftStage1Idx3_uid431_fracXRSExt_uid32_fpLogE1pxTest(BITJOIN,430)@0
    rightShiftStage1Idx3_uid431_fracXRSExt_uid32_fpLogE1pxTest_q <= paddingX_uid201_eLn2_uid82_fpLogE1pxTest_q & rightShiftStage1Idx3Rng3_uid429_fracXRSExt_uid32_fpLogE1pxTest_b;

    -- rightShiftStage1Idx2Rng2_uid426_fracXRSExt_uid32_fpLogE1pxTest(BITSELECT,425)@0
    rightShiftStage1Idx2Rng2_uid426_fracXRSExt_uid32_fpLogE1pxTest_in <= rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_mfinal_q;
    rightShiftStage1Idx2Rng2_uid426_fracXRSExt_uid32_fpLogE1pxTest_b <= rightShiftStage1Idx2Rng2_uid426_fracXRSExt_uid32_fpLogE1pxTest_in(47 downto 2);

    -- rightShiftStage1Idx2_uid428_fracXRSExt_uid32_fpLogE1pxTest(BITJOIN,427)@0
    rightShiftStage1Idx2_uid428_fracXRSExt_uid32_fpLogE1pxTest_q <= z2_uid99_fpLogE1pxTest_q & rightShiftStage1Idx2Rng2_uid426_fracXRSExt_uid32_fpLogE1pxTest_b;

    -- rightShiftStage1Idx1Rng1_uid423_fracXRSExt_uid32_fpLogE1pxTest(BITSELECT,422)@0
    rightShiftStage1Idx1Rng1_uid423_fracXRSExt_uid32_fpLogE1pxTest_in <= rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_mfinal_q;
    rightShiftStage1Idx1Rng1_uid423_fracXRSExt_uid32_fpLogE1pxTest_b <= rightShiftStage1Idx1Rng1_uid423_fracXRSExt_uid32_fpLogE1pxTest_in(47 downto 1);

    -- rightShiftStage1Idx1_uid425_fracXRSExt_uid32_fpLogE1pxTest(BITJOIN,424)@0
    rightShiftStage1Idx1_uid425_fracXRSExt_uid32_fpLogE1pxTest_q <= GND_q & rightShiftStage1Idx1Rng1_uid423_fracXRSExt_uid32_fpLogE1pxTest_b;

    -- oFracX_uid29_fpLogE1pxTest(BITJOIN,28)@0
    oFracX_uid29_fpLogE1pxTest_q <= VCC_q & frac_x_uid18_fpLogE1pxTest_b;

    -- padConst_uid32_fpLogE1pxTest(CONSTANT,31)
    padConst_uid32_fpLogE1pxTest_q <= "000000000000000000000000";

    -- rightPaddedIn_uid33_fpLogE1pxTest(BITJOIN,32)@0
    rightPaddedIn_uid33_fpLogE1pxTest_q <= oFracX_uid29_fpLogE1pxTest_q & padConst_uid32_fpLogE1pxTest_q;

    -- rightShiftStage0Idx7Rng28_uid418_fracXRSExt_uid32_fpLogE1pxTest(BITSELECT,417)@0
    rightShiftStage0Idx7Rng28_uid418_fracXRSExt_uid32_fpLogE1pxTest_in <= rightPaddedIn_uid33_fpLogE1pxTest_q;
    rightShiftStage0Idx7Rng28_uid418_fracXRSExt_uid32_fpLogE1pxTest_b <= rightShiftStage0Idx7Rng28_uid418_fracXRSExt_uid32_fpLogE1pxTest_in(47 downto 28);

    -- rightShiftStage0Idx7_uid420_fracXRSExt_uid32_fpLogE1pxTest(BITJOIN,419)@0
    rightShiftStage0Idx7_uid420_fracXRSExt_uid32_fpLogE1pxTest_q <= rightShiftStage0Idx7Pad28_uid419_fracXRSExt_uid32_fpLogE1pxTest_q & rightShiftStage0Idx7Rng28_uid418_fracXRSExt_uid32_fpLogE1pxTest_b;

    -- rightShiftStage0Idx6Rng24_uid415_fracXRSExt_uid32_fpLogE1pxTest(BITSELECT,414)@0
    rightShiftStage0Idx6Rng24_uid415_fracXRSExt_uid32_fpLogE1pxTest_in <= rightPaddedIn_uid33_fpLogE1pxTest_q;
    rightShiftStage0Idx6Rng24_uid415_fracXRSExt_uid32_fpLogE1pxTest_b <= rightShiftStage0Idx6Rng24_uid415_fracXRSExt_uid32_fpLogE1pxTest_in(47 downto 24);

    -- rightShiftStage0Idx6_uid417_fracXRSExt_uid32_fpLogE1pxTest(BITJOIN,416)@0
    rightShiftStage0Idx6_uid417_fracXRSExt_uid32_fpLogE1pxTest_q <= padConst_uid32_fpLogE1pxTest_q & rightShiftStage0Idx6Rng24_uid415_fracXRSExt_uid32_fpLogE1pxTest_b;

    -- rightShiftStage0Idx5Pad20_uid413_fracXRSExt_uid32_fpLogE1pxTest(CONSTANT,412)
    rightShiftStage0Idx5Pad20_uid413_fracXRSExt_uid32_fpLogE1pxTest_q <= "00000000000000000000";

    -- rightShiftStage0Idx5Rng20_uid412_fracXRSExt_uid32_fpLogE1pxTest(BITSELECT,411)@0
    rightShiftStage0Idx5Rng20_uid412_fracXRSExt_uid32_fpLogE1pxTest_in <= rightPaddedIn_uid33_fpLogE1pxTest_q;
    rightShiftStage0Idx5Rng20_uid412_fracXRSExt_uid32_fpLogE1pxTest_b <= rightShiftStage0Idx5Rng20_uid412_fracXRSExt_uid32_fpLogE1pxTest_in(47 downto 20);

    -- rightShiftStage0Idx5_uid414_fracXRSExt_uid32_fpLogE1pxTest(BITJOIN,413)@0
    rightShiftStage0Idx5_uid414_fracXRSExt_uid32_fpLogE1pxTest_q <= rightShiftStage0Idx5Pad20_uid413_fracXRSExt_uid32_fpLogE1pxTest_q & rightShiftStage0Idx5Rng20_uid412_fracXRSExt_uid32_fpLogE1pxTest_b;

    -- zs_uid157_leadingZeros_uid41_fpLogE1pxTest(CONSTANT,156)
    zs_uid157_leadingZeros_uid41_fpLogE1pxTest_q <= "0000000000000000";

    -- rightShiftStage0Idx4Rng16_uid409_fracXRSExt_uid32_fpLogE1pxTest(BITSELECT,408)@0
    rightShiftStage0Idx4Rng16_uid409_fracXRSExt_uid32_fpLogE1pxTest_in <= rightPaddedIn_uid33_fpLogE1pxTest_q;
    rightShiftStage0Idx4Rng16_uid409_fracXRSExt_uid32_fpLogE1pxTest_b <= rightShiftStage0Idx4Rng16_uid409_fracXRSExt_uid32_fpLogE1pxTest_in(47 downto 16);

    -- rightShiftStage0Idx4_uid411_fracXRSExt_uid32_fpLogE1pxTest(BITJOIN,410)@0
    rightShiftStage0Idx4_uid411_fracXRSExt_uid32_fpLogE1pxTest_q <= zs_uid157_leadingZeros_uid41_fpLogE1pxTest_q & rightShiftStage0Idx4Rng16_uid409_fracXRSExt_uid32_fpLogE1pxTest_b;

    -- rightShiftStageSel4Dto2_uid421_fracXRSExt_uid32_fpLogE1pxTest(BITSELECT,420)@0
    rightShiftStageSel4Dto2_uid421_fracXRSExt_uid32_fpLogE1pxTest_in <= shifterAddr_uid31_fpLogE1pxTest_b;
    rightShiftStageSel4Dto2_uid421_fracXRSExt_uid32_fpLogE1pxTest_b <= rightShiftStageSel4Dto2_uid421_fracXRSExt_uid32_fpLogE1pxTest_in(4 downto 2);

    -- rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_selLSBs(BITSELECT,546)@0
    rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_selLSBs_in <= rightShiftStageSel4Dto2_uid421_fracXRSExt_uid32_fpLogE1pxTest_b(1 downto 0);
    rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_selLSBs_b <= rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_selLSBs_in(1 downto 0);

    -- rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_msplit_1(MUX,549)@0
    rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_msplit_1_s <= rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_selLSBs_b;
    rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_msplit_1_combproc: PROCESS (rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_msplit_1_s, rightShiftStage0Idx4_uid411_fracXRSExt_uid32_fpLogE1pxTest_q, rightShiftStage0Idx5_uid414_fracXRSExt_uid32_fpLogE1pxTest_q, rightShiftStage0Idx6_uid417_fracXRSExt_uid32_fpLogE1pxTest_q, rightShiftStage0Idx7_uid420_fracXRSExt_uid32_fpLogE1pxTest_q)
    BEGIN
        CASE (rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_msplit_1_s) IS
            WHEN "00" => rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_msplit_1_q <= rightShiftStage0Idx4_uid411_fracXRSExt_uid32_fpLogE1pxTest_q;
            WHEN "01" => rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_msplit_1_q <= rightShiftStage0Idx5_uid414_fracXRSExt_uid32_fpLogE1pxTest_q;
            WHEN "10" => rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_msplit_1_q <= rightShiftStage0Idx6_uid417_fracXRSExt_uid32_fpLogE1pxTest_q;
            WHEN "11" => rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_msplit_1_q <= rightShiftStage0Idx7_uid420_fracXRSExt_uid32_fpLogE1pxTest_q;
            WHEN OTHERS => rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_msplit_1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage0Idx3Pad12_uid407_fracXRSExt_uid32_fpLogE1pxTest(CONSTANT,406)
    rightShiftStage0Idx3Pad12_uid407_fracXRSExt_uid32_fpLogE1pxTest_q <= "000000000000";

    -- rightShiftStage0Idx3Rng12_uid406_fracXRSExt_uid32_fpLogE1pxTest(BITSELECT,405)@0
    rightShiftStage0Idx3Rng12_uid406_fracXRSExt_uid32_fpLogE1pxTest_in <= rightPaddedIn_uid33_fpLogE1pxTest_q;
    rightShiftStage0Idx3Rng12_uid406_fracXRSExt_uid32_fpLogE1pxTest_b <= rightShiftStage0Idx3Rng12_uid406_fracXRSExt_uid32_fpLogE1pxTest_in(47 downto 12);

    -- rightShiftStage0Idx3_uid408_fracXRSExt_uid32_fpLogE1pxTest(BITJOIN,407)@0
    rightShiftStage0Idx3_uid408_fracXRSExt_uid32_fpLogE1pxTest_q <= rightShiftStage0Idx3Pad12_uid407_fracXRSExt_uid32_fpLogE1pxTest_q & rightShiftStage0Idx3Rng12_uid406_fracXRSExt_uid32_fpLogE1pxTest_b;

    -- rightShiftStage0Idx2Rng8_uid403_fracXRSExt_uid32_fpLogE1pxTest(BITSELECT,402)@0
    rightShiftStage0Idx2Rng8_uid403_fracXRSExt_uid32_fpLogE1pxTest_in <= rightPaddedIn_uid33_fpLogE1pxTest_q;
    rightShiftStage0Idx2Rng8_uid403_fracXRSExt_uid32_fpLogE1pxTest_b <= rightShiftStage0Idx2Rng8_uid403_fracXRSExt_uid32_fpLogE1pxTest_in(47 downto 8);

    -- rightShiftStage0Idx2_uid405_fracXRSExt_uid32_fpLogE1pxTest(BITJOIN,404)@0
    rightShiftStage0Idx2_uid405_fracXRSExt_uid32_fpLogE1pxTest_q <= cstAllZWE_uid16_fpLogE1pxTest_q & rightShiftStage0Idx2Rng8_uid403_fracXRSExt_uid32_fpLogE1pxTest_b;

    -- zs_uid171_leadingZeros_uid41_fpLogE1pxTest(CONSTANT,170)
    zs_uid171_leadingZeros_uid41_fpLogE1pxTest_q <= "0000";

    -- rightShiftStage0Idx1Rng4_uid400_fracXRSExt_uid32_fpLogE1pxTest(BITSELECT,399)@0
    rightShiftStage0Idx1Rng4_uid400_fracXRSExt_uid32_fpLogE1pxTest_in <= rightPaddedIn_uid33_fpLogE1pxTest_q;
    rightShiftStage0Idx1Rng4_uid400_fracXRSExt_uid32_fpLogE1pxTest_b <= rightShiftStage0Idx1Rng4_uid400_fracXRSExt_uid32_fpLogE1pxTest_in(47 downto 4);

    -- rightShiftStage0Idx1_uid402_fracXRSExt_uid32_fpLogE1pxTest(BITJOIN,401)@0
    rightShiftStage0Idx1_uid402_fracXRSExt_uid32_fpLogE1pxTest_q <= zs_uid171_leadingZeros_uid41_fpLogE1pxTest_q & rightShiftStage0Idx1Rng4_uid400_fracXRSExt_uid32_fpLogE1pxTest_b;

    -- rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_msplit_0(MUX,548)@0
    rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_msplit_0_s <= rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_selLSBs_b;
    rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_msplit_0_combproc: PROCESS (rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_msplit_0_s, rightPaddedIn_uid33_fpLogE1pxTest_q, rightShiftStage0Idx1_uid402_fracXRSExt_uid32_fpLogE1pxTest_q, rightShiftStage0Idx2_uid405_fracXRSExt_uid32_fpLogE1pxTest_q, rightShiftStage0Idx3_uid408_fracXRSExt_uid32_fpLogE1pxTest_q)
    BEGIN
        CASE (rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_msplit_0_s) IS
            WHEN "00" => rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_msplit_0_q <= rightPaddedIn_uid33_fpLogE1pxTest_q;
            WHEN "01" => rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_msplit_0_q <= rightShiftStage0Idx1_uid402_fracXRSExt_uid32_fpLogE1pxTest_q;
            WHEN "10" => rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_msplit_0_q <= rightShiftStage0Idx2_uid405_fracXRSExt_uid32_fpLogE1pxTest_q;
            WHEN "11" => rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_msplit_0_q <= rightShiftStage0Idx3_uid408_fracXRSExt_uid32_fpLogE1pxTest_q;
            WHEN OTHERS => rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_msplit_0_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_selMSBs(BITSELECT,547)@0
    rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_selMSBs_in <= rightShiftStageSel4Dto2_uid421_fracXRSExt_uid32_fpLogE1pxTest_b;
    rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_selMSBs_b <= rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_selMSBs_in(2 downto 2);

    -- rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_mfinal(MUX,550)@0
    rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_mfinal_s <= rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_selMSBs_b;
    rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_mfinal_combproc: PROCESS (rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_mfinal_s, rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_msplit_0_q, rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_msplit_1_q)
    BEGIN
        CASE (rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_mfinal_s) IS
            WHEN "0" => rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_mfinal_q <= rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_msplit_0_q;
            WHEN "1" => rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_mfinal_q <= rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_msplit_1_q;
            WHEN OTHERS => rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_mfinal_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStageSel1Dto0_uid432_fracXRSExt_uid32_fpLogE1pxTest(BITSELECT,431)@0
    rightShiftStageSel1Dto0_uid432_fracXRSExt_uid32_fpLogE1pxTest_in <= shifterAddr_uid31_fpLogE1pxTest_b(1 downto 0);
    rightShiftStageSel1Dto0_uid432_fracXRSExt_uid32_fpLogE1pxTest_b <= rightShiftStageSel1Dto0_uid432_fracXRSExt_uid32_fpLogE1pxTest_in(1 downto 0);

    -- rightShiftStage1_uid433_fracXRSExt_uid32_fpLogE1pxTest(MUX,432)@0
    rightShiftStage1_uid433_fracXRSExt_uid32_fpLogE1pxTest_s <= rightShiftStageSel1Dto0_uid432_fracXRSExt_uid32_fpLogE1pxTest_b;
    rightShiftStage1_uid433_fracXRSExt_uid32_fpLogE1pxTest_combproc: PROCESS (rightShiftStage1_uid433_fracXRSExt_uid32_fpLogE1pxTest_s, rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_mfinal_q, rightShiftStage1Idx1_uid425_fracXRSExt_uid32_fpLogE1pxTest_q, rightShiftStage1Idx2_uid428_fracXRSExt_uid32_fpLogE1pxTest_q, rightShiftStage1Idx3_uid431_fracXRSExt_uid32_fpLogE1pxTest_q)
    BEGIN
        CASE (rightShiftStage1_uid433_fracXRSExt_uid32_fpLogE1pxTest_s) IS
            WHEN "00" => rightShiftStage1_uid433_fracXRSExt_uid32_fpLogE1pxTest_q <= rightShiftStage0_uid422_fracXRSExt_uid32_fpLogE1pxTest_mfinal_q;
            WHEN "01" => rightShiftStage1_uid433_fracXRSExt_uid32_fpLogE1pxTest_q <= rightShiftStage1Idx1_uid425_fracXRSExt_uid32_fpLogE1pxTest_q;
            WHEN "10" => rightShiftStage1_uid433_fracXRSExt_uid32_fpLogE1pxTest_q <= rightShiftStage1Idx2_uid428_fracXRSExt_uid32_fpLogE1pxTest_q;
            WHEN "11" => rightShiftStage1_uid433_fracXRSExt_uid32_fpLogE1pxTest_q <= rightShiftStage1Idx3_uid431_fracXRSExt_uid32_fpLogE1pxTest_q;
            WHEN OTHERS => rightShiftStage1_uid433_fracXRSExt_uid32_fpLogE1pxTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- padACst_uid37_fpLogE1pxTest(CONSTANT,36)
    padACst_uid37_fpLogE1pxTest_q <= "00000000000000000000000000000000000000000000000";

    -- aPostPad_uid38_fpLogE1pxTest(BITJOIN,37)@0
    aPostPad_uid38_fpLogE1pxTest_q <= VCC_q & padACst_uid37_fpLogE1pxTest_q;

    -- oMfracXRSExt_uid39_fpLogE1pxTest(SUB,38)@0 + 1
    oMfracXRSExt_uid39_fpLogE1pxTest_a <= STD_LOGIC_VECTOR("0" & aPostPad_uid38_fpLogE1pxTest_q);
    oMfracXRSExt_uid39_fpLogE1pxTest_b <= STD_LOGIC_VECTOR("0" & rightShiftStage1_uid433_fracXRSExt_uid32_fpLogE1pxTest_q);
    oMfracXRSExt_uid39_fpLogE1pxTest_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            oMfracXRSExt_uid39_fpLogE1pxTest_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            oMfracXRSExt_uid39_fpLogE1pxTest_o <= STD_LOGIC_VECTOR(UNSIGNED(oMfracXRSExt_uid39_fpLogE1pxTest_a) - UNSIGNED(oMfracXRSExt_uid39_fpLogE1pxTest_b));
        END IF;
    END PROCESS;
    oMfracXRSExt_uid39_fpLogE1pxTest_q <= oMfracXRSExt_uid39_fpLogE1pxTest_o(48 downto 0);

    -- redLO_uid44_fpLogE1pxTest(BITSELECT,43)@1
    redLO_uid44_fpLogE1pxTest_in <= oMfracXRSExt_uid39_fpLogE1pxTest_q(46 downto 0);
    redLO_uid44_fpLogE1pxTest_b <= redLO_uid44_fpLogE1pxTest_in(46 downto 0);

    -- leftShiftStage0Idx7Rng28_uid456_fracXBranch4Ext_uid45_fpLogE1pxTest(BITSELECT,455)@1
    leftShiftStage0Idx7Rng28_uid456_fracXBranch4Ext_uid45_fpLogE1pxTest_in <= redLO_uid44_fpLogE1pxTest_b(18 downto 0);
    leftShiftStage0Idx7Rng28_uid456_fracXBranch4Ext_uid45_fpLogE1pxTest_b <= leftShiftStage0Idx7Rng28_uid456_fracXBranch4Ext_uid45_fpLogE1pxTest_in(18 downto 0);

    -- rightShiftStage0Idx7Pad28_uid419_fracXRSExt_uid32_fpLogE1pxTest(CONSTANT,418)
    rightShiftStage0Idx7Pad28_uid419_fracXRSExt_uid32_fpLogE1pxTest_q <= "0000000000000000000000000000";

    -- leftShiftStage0Idx7_uid457_fracXBranch4Ext_uid45_fpLogE1pxTest(BITJOIN,456)@1
    leftShiftStage0Idx7_uid457_fracXBranch4Ext_uid45_fpLogE1pxTest_q <= leftShiftStage0Idx7Rng28_uid456_fracXBranch4Ext_uid45_fpLogE1pxTest_b & rightShiftStage0Idx7Pad28_uid419_fracXRSExt_uid32_fpLogE1pxTest_q;

    -- leftShiftStage0Idx6Rng24_uid453_fracXBranch4Ext_uid45_fpLogE1pxTest(BITSELECT,452)@1
    leftShiftStage0Idx6Rng24_uid453_fracXBranch4Ext_uid45_fpLogE1pxTest_in <= redLO_uid44_fpLogE1pxTest_b(22 downto 0);
    leftShiftStage0Idx6Rng24_uid453_fracXBranch4Ext_uid45_fpLogE1pxTest_b <= leftShiftStage0Idx6Rng24_uid453_fracXBranch4Ext_uid45_fpLogE1pxTest_in(22 downto 0);

    -- leftShiftStage0Idx6_uid454_fracXBranch4Ext_uid45_fpLogE1pxTest(BITJOIN,453)@1
    leftShiftStage0Idx6_uid454_fracXBranch4Ext_uid45_fpLogE1pxTest_q <= leftShiftStage0Idx6Rng24_uid453_fracXBranch4Ext_uid45_fpLogE1pxTest_b & padConst_uid32_fpLogE1pxTest_q;

    -- leftShiftStage0Idx5Rng20_uid450_fracXBranch4Ext_uid45_fpLogE1pxTest(BITSELECT,449)@1
    leftShiftStage0Idx5Rng20_uid450_fracXBranch4Ext_uid45_fpLogE1pxTest_in <= redLO_uid44_fpLogE1pxTest_b(26 downto 0);
    leftShiftStage0Idx5Rng20_uid450_fracXBranch4Ext_uid45_fpLogE1pxTest_b <= leftShiftStage0Idx5Rng20_uid450_fracXBranch4Ext_uid45_fpLogE1pxTest_in(26 downto 0);

    -- leftShiftStage0Idx5_uid451_fracXBranch4Ext_uid45_fpLogE1pxTest(BITJOIN,450)@1
    leftShiftStage0Idx5_uid451_fracXBranch4Ext_uid45_fpLogE1pxTest_q <= leftShiftStage0Idx5Rng20_uid450_fracXBranch4Ext_uid45_fpLogE1pxTest_b & rightShiftStage0Idx5Pad20_uid413_fracXRSExt_uid32_fpLogE1pxTest_q;

    -- leftShiftStage0Idx4Rng16_uid447_fracXBranch4Ext_uid45_fpLogE1pxTest(BITSELECT,446)@1
    leftShiftStage0Idx4Rng16_uid447_fracXBranch4Ext_uid45_fpLogE1pxTest_in <= redLO_uid44_fpLogE1pxTest_b(30 downto 0);
    leftShiftStage0Idx4Rng16_uid447_fracXBranch4Ext_uid45_fpLogE1pxTest_b <= leftShiftStage0Idx4Rng16_uid447_fracXBranch4Ext_uid45_fpLogE1pxTest_in(30 downto 0);

    -- leftShiftStage0Idx4_uid448_fracXBranch4Ext_uid45_fpLogE1pxTest(BITJOIN,447)@1
    leftShiftStage0Idx4_uid448_fracXBranch4Ext_uid45_fpLogE1pxTest_q <= leftShiftStage0Idx4Rng16_uid447_fracXBranch4Ext_uid45_fpLogE1pxTest_b & zs_uid157_leadingZeros_uid41_fpLogE1pxTest_q;

    -- oMfracXRSLZCIn_uid40_fpLogE1pxTest(BITSELECT,39)@1
    oMfracXRSLZCIn_uid40_fpLogE1pxTest_in <= oMfracXRSExt_uid39_fpLogE1pxTest_q(46 downto 0);
    oMfracXRSLZCIn_uid40_fpLogE1pxTest_b <= oMfracXRSLZCIn_uid40_fpLogE1pxTest_in(46 downto 23);

    -- rVStage_uid158_leadingZeros_uid41_fpLogE1pxTest(BITSELECT,157)@1
    rVStage_uid158_leadingZeros_uid41_fpLogE1pxTest_in <= oMfracXRSLZCIn_uid40_fpLogE1pxTest_b;
    rVStage_uid158_leadingZeros_uid41_fpLogE1pxTest_b <= rVStage_uid158_leadingZeros_uid41_fpLogE1pxTest_in(23 downto 8);

    -- vCount_uid159_leadingZeros_uid41_fpLogE1pxTest(LOGICAL,158)@1
    vCount_uid159_leadingZeros_uid41_fpLogE1pxTest_a <= rVStage_uid158_leadingZeros_uid41_fpLogE1pxTest_b;
    vCount_uid159_leadingZeros_uid41_fpLogE1pxTest_b <= zs_uid157_leadingZeros_uid41_fpLogE1pxTest_q;
    vCount_uid159_leadingZeros_uid41_fpLogE1pxTest_q <= "1" WHEN vCount_uid159_leadingZeros_uid41_fpLogE1pxTest_a = vCount_uid159_leadingZeros_uid41_fpLogE1pxTest_b ELSE "0";

    -- vStage_uid161_leadingZeros_uid41_fpLogE1pxTest(BITSELECT,160)@1
    vStage_uid161_leadingZeros_uid41_fpLogE1pxTest_in <= oMfracXRSLZCIn_uid40_fpLogE1pxTest_b(7 downto 0);
    vStage_uid161_leadingZeros_uid41_fpLogE1pxTest_b <= vStage_uid161_leadingZeros_uid41_fpLogE1pxTest_in(7 downto 0);

    -- mO_uid160_leadingZeros_uid41_fpLogE1pxTest(CONSTANT,159)
    mO_uid160_leadingZeros_uid41_fpLogE1pxTest_q <= "11111111";

    -- cStage_uid162_leadingZeros_uid41_fpLogE1pxTest(BITJOIN,161)@1
    cStage_uid162_leadingZeros_uid41_fpLogE1pxTest_q <= vStage_uid161_leadingZeros_uid41_fpLogE1pxTest_b & mO_uid160_leadingZeros_uid41_fpLogE1pxTest_q;

    -- vStagei_uid164_leadingZeros_uid41_fpLogE1pxTest(MUX,163)@1
    vStagei_uid164_leadingZeros_uid41_fpLogE1pxTest_s <= vCount_uid159_leadingZeros_uid41_fpLogE1pxTest_q;
    vStagei_uid164_leadingZeros_uid41_fpLogE1pxTest_combproc: PROCESS (vStagei_uid164_leadingZeros_uid41_fpLogE1pxTest_s, rVStage_uid158_leadingZeros_uid41_fpLogE1pxTest_b, cStage_uid162_leadingZeros_uid41_fpLogE1pxTest_q)
    BEGIN
        CASE (vStagei_uid164_leadingZeros_uid41_fpLogE1pxTest_s) IS
            WHEN "0" => vStagei_uid164_leadingZeros_uid41_fpLogE1pxTest_q <= rVStage_uid158_leadingZeros_uid41_fpLogE1pxTest_b;
            WHEN "1" => vStagei_uid164_leadingZeros_uid41_fpLogE1pxTest_q <= cStage_uid162_leadingZeros_uid41_fpLogE1pxTest_q;
            WHEN OTHERS => vStagei_uid164_leadingZeros_uid41_fpLogE1pxTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid166_leadingZeros_uid41_fpLogE1pxTest(BITSELECT,165)@1
    rVStage_uid166_leadingZeros_uid41_fpLogE1pxTest_in <= vStagei_uid164_leadingZeros_uid41_fpLogE1pxTest_q;
    rVStage_uid166_leadingZeros_uid41_fpLogE1pxTest_b <= rVStage_uid166_leadingZeros_uid41_fpLogE1pxTest_in(15 downto 8);

    -- vCount_uid167_leadingZeros_uid41_fpLogE1pxTest(LOGICAL,166)@1
    vCount_uid167_leadingZeros_uid41_fpLogE1pxTest_a <= rVStage_uid166_leadingZeros_uid41_fpLogE1pxTest_b;
    vCount_uid167_leadingZeros_uid41_fpLogE1pxTest_b <= cstAllZWE_uid16_fpLogE1pxTest_q;
    vCount_uid167_leadingZeros_uid41_fpLogE1pxTest_q <= "1" WHEN vCount_uid167_leadingZeros_uid41_fpLogE1pxTest_a = vCount_uid167_leadingZeros_uid41_fpLogE1pxTest_b ELSE "0";

    -- vStage_uid168_leadingZeros_uid41_fpLogE1pxTest(BITSELECT,167)@1
    vStage_uid168_leadingZeros_uid41_fpLogE1pxTest_in <= vStagei_uid164_leadingZeros_uid41_fpLogE1pxTest_q(7 downto 0);
    vStage_uid168_leadingZeros_uid41_fpLogE1pxTest_b <= vStage_uid168_leadingZeros_uid41_fpLogE1pxTest_in(7 downto 0);

    -- vStagei_uid170_leadingZeros_uid41_fpLogE1pxTest(MUX,169)@1
    vStagei_uid170_leadingZeros_uid41_fpLogE1pxTest_s <= vCount_uid167_leadingZeros_uid41_fpLogE1pxTest_q;
    vStagei_uid170_leadingZeros_uid41_fpLogE1pxTest_combproc: PROCESS (vStagei_uid170_leadingZeros_uid41_fpLogE1pxTest_s, rVStage_uid166_leadingZeros_uid41_fpLogE1pxTest_b, vStage_uid168_leadingZeros_uid41_fpLogE1pxTest_b)
    BEGIN
        CASE (vStagei_uid170_leadingZeros_uid41_fpLogE1pxTest_s) IS
            WHEN "0" => vStagei_uid170_leadingZeros_uid41_fpLogE1pxTest_q <= rVStage_uid166_leadingZeros_uid41_fpLogE1pxTest_b;
            WHEN "1" => vStagei_uid170_leadingZeros_uid41_fpLogE1pxTest_q <= vStage_uid168_leadingZeros_uid41_fpLogE1pxTest_b;
            WHEN OTHERS => vStagei_uid170_leadingZeros_uid41_fpLogE1pxTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid172_leadingZeros_uid41_fpLogE1pxTest(BITSELECT,171)@1
    rVStage_uid172_leadingZeros_uid41_fpLogE1pxTest_in <= vStagei_uid170_leadingZeros_uid41_fpLogE1pxTest_q;
    rVStage_uid172_leadingZeros_uid41_fpLogE1pxTest_b <= rVStage_uid172_leadingZeros_uid41_fpLogE1pxTest_in(7 downto 4);

    -- vCount_uid173_leadingZeros_uid41_fpLogE1pxTest(LOGICAL,172)@1
    vCount_uid173_leadingZeros_uid41_fpLogE1pxTest_a <= rVStage_uid172_leadingZeros_uid41_fpLogE1pxTest_b;
    vCount_uid173_leadingZeros_uid41_fpLogE1pxTest_b <= zs_uid171_leadingZeros_uid41_fpLogE1pxTest_q;
    vCount_uid173_leadingZeros_uid41_fpLogE1pxTest_q <= "1" WHEN vCount_uid173_leadingZeros_uid41_fpLogE1pxTest_a = vCount_uid173_leadingZeros_uid41_fpLogE1pxTest_b ELSE "0";

    -- vStage_uid174_leadingZeros_uid41_fpLogE1pxTest(BITSELECT,173)@1
    vStage_uid174_leadingZeros_uid41_fpLogE1pxTest_in <= vStagei_uid170_leadingZeros_uid41_fpLogE1pxTest_q(3 downto 0);
    vStage_uid174_leadingZeros_uid41_fpLogE1pxTest_b <= vStage_uid174_leadingZeros_uid41_fpLogE1pxTest_in(3 downto 0);

    -- vStagei_uid176_leadingZeros_uid41_fpLogE1pxTest(MUX,175)@1
    vStagei_uid176_leadingZeros_uid41_fpLogE1pxTest_s <= vCount_uid173_leadingZeros_uid41_fpLogE1pxTest_q;
    vStagei_uid176_leadingZeros_uid41_fpLogE1pxTest_combproc: PROCESS (vStagei_uid176_leadingZeros_uid41_fpLogE1pxTest_s, rVStage_uid172_leadingZeros_uid41_fpLogE1pxTest_b, vStage_uid174_leadingZeros_uid41_fpLogE1pxTest_b)
    BEGIN
        CASE (vStagei_uid176_leadingZeros_uid41_fpLogE1pxTest_s) IS
            WHEN "0" => vStagei_uid176_leadingZeros_uid41_fpLogE1pxTest_q <= rVStage_uid172_leadingZeros_uid41_fpLogE1pxTest_b;
            WHEN "1" => vStagei_uid176_leadingZeros_uid41_fpLogE1pxTest_q <= vStage_uid174_leadingZeros_uid41_fpLogE1pxTest_b;
            WHEN OTHERS => vStagei_uid176_leadingZeros_uid41_fpLogE1pxTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid178_leadingZeros_uid41_fpLogE1pxTest(BITSELECT,177)@1
    rVStage_uid178_leadingZeros_uid41_fpLogE1pxTest_in <= vStagei_uid176_leadingZeros_uid41_fpLogE1pxTest_q;
    rVStage_uid178_leadingZeros_uid41_fpLogE1pxTest_b <= rVStage_uid178_leadingZeros_uid41_fpLogE1pxTest_in(3 downto 2);

    -- vCount_uid179_leadingZeros_uid41_fpLogE1pxTest(LOGICAL,178)@1
    vCount_uid179_leadingZeros_uid41_fpLogE1pxTest_a <= rVStage_uid178_leadingZeros_uid41_fpLogE1pxTest_b;
    vCount_uid179_leadingZeros_uid41_fpLogE1pxTest_b <= z2_uid99_fpLogE1pxTest_q;
    vCount_uid179_leadingZeros_uid41_fpLogE1pxTest_q <= "1" WHEN vCount_uid179_leadingZeros_uid41_fpLogE1pxTest_a = vCount_uid179_leadingZeros_uid41_fpLogE1pxTest_b ELSE "0";

    -- vStage_uid180_leadingZeros_uid41_fpLogE1pxTest(BITSELECT,179)@1
    vStage_uid180_leadingZeros_uid41_fpLogE1pxTest_in <= vStagei_uid176_leadingZeros_uid41_fpLogE1pxTest_q(1 downto 0);
    vStage_uid180_leadingZeros_uid41_fpLogE1pxTest_b <= vStage_uid180_leadingZeros_uid41_fpLogE1pxTest_in(1 downto 0);

    -- vStagei_uid182_leadingZeros_uid41_fpLogE1pxTest(MUX,181)@1
    vStagei_uid182_leadingZeros_uid41_fpLogE1pxTest_s <= vCount_uid179_leadingZeros_uid41_fpLogE1pxTest_q;
    vStagei_uid182_leadingZeros_uid41_fpLogE1pxTest_combproc: PROCESS (vStagei_uid182_leadingZeros_uid41_fpLogE1pxTest_s, rVStage_uid178_leadingZeros_uid41_fpLogE1pxTest_b, vStage_uid180_leadingZeros_uid41_fpLogE1pxTest_b)
    BEGIN
        CASE (vStagei_uid182_leadingZeros_uid41_fpLogE1pxTest_s) IS
            WHEN "0" => vStagei_uid182_leadingZeros_uid41_fpLogE1pxTest_q <= rVStage_uid178_leadingZeros_uid41_fpLogE1pxTest_b;
            WHEN "1" => vStagei_uid182_leadingZeros_uid41_fpLogE1pxTest_q <= vStage_uid180_leadingZeros_uid41_fpLogE1pxTest_b;
            WHEN OTHERS => vStagei_uid182_leadingZeros_uid41_fpLogE1pxTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid184_leadingZeros_uid41_fpLogE1pxTest(BITSELECT,183)@1
    rVStage_uid184_leadingZeros_uid41_fpLogE1pxTest_in <= vStagei_uid182_leadingZeros_uid41_fpLogE1pxTest_q;
    rVStage_uid184_leadingZeros_uid41_fpLogE1pxTest_b <= rVStage_uid184_leadingZeros_uid41_fpLogE1pxTest_in(1 downto 1);

    -- vCount_uid185_leadingZeros_uid41_fpLogE1pxTest(LOGICAL,184)@1
    vCount_uid185_leadingZeros_uid41_fpLogE1pxTest_a <= rVStage_uid184_leadingZeros_uid41_fpLogE1pxTest_b;
    vCount_uid185_leadingZeros_uid41_fpLogE1pxTest_b <= GND_q;
    vCount_uid185_leadingZeros_uid41_fpLogE1pxTest_q <= "1" WHEN vCount_uid185_leadingZeros_uid41_fpLogE1pxTest_a = vCount_uid185_leadingZeros_uid41_fpLogE1pxTest_b ELSE "0";

    -- r_uid186_leadingZeros_uid41_fpLogE1pxTest(BITJOIN,185)@1
    r_uid186_leadingZeros_uid41_fpLogE1pxTest_q <= vCount_uid159_leadingZeros_uid41_fpLogE1pxTest_q & vCount_uid167_leadingZeros_uid41_fpLogE1pxTest_q & vCount_uid173_leadingZeros_uid41_fpLogE1pxTest_q & vCount_uid179_leadingZeros_uid41_fpLogE1pxTest_q & vCount_uid185_leadingZeros_uid41_fpLogE1pxTest_q;

    -- leftShiftStageSel4Dto2_uid458_fracXBranch4Ext_uid45_fpLogE1pxTest(BITSELECT,457)@1
    leftShiftStageSel4Dto2_uid458_fracXBranch4Ext_uid45_fpLogE1pxTest_in <= r_uid186_leadingZeros_uid41_fpLogE1pxTest_q;
    leftShiftStageSel4Dto2_uid458_fracXBranch4Ext_uid45_fpLogE1pxTest_b <= leftShiftStageSel4Dto2_uid458_fracXBranch4Ext_uid45_fpLogE1pxTest_in(4 downto 2);

    -- leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_selLSBs(BITSELECT,551)@1
    leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_selLSBs_in <= leftShiftStageSel4Dto2_uid458_fracXBranch4Ext_uid45_fpLogE1pxTest_b(1 downto 0);
    leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_selLSBs_b <= leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_selLSBs_in(1 downto 0);

    -- leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_msplit_1(MUX,554)@1
    leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_msplit_1_s <= leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_selLSBs_b;
    leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_msplit_1_combproc: PROCESS (leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_msplit_1_s, leftShiftStage0Idx4_uid448_fracXBranch4Ext_uid45_fpLogE1pxTest_q, leftShiftStage0Idx5_uid451_fracXBranch4Ext_uid45_fpLogE1pxTest_q, leftShiftStage0Idx6_uid454_fracXBranch4Ext_uid45_fpLogE1pxTest_q, leftShiftStage0Idx7_uid457_fracXBranch4Ext_uid45_fpLogE1pxTest_q)
    BEGIN
        CASE (leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_msplit_1_s) IS
            WHEN "00" => leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_msplit_1_q <= leftShiftStage0Idx4_uid448_fracXBranch4Ext_uid45_fpLogE1pxTest_q;
            WHEN "01" => leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_msplit_1_q <= leftShiftStage0Idx5_uid451_fracXBranch4Ext_uid45_fpLogE1pxTest_q;
            WHEN "10" => leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_msplit_1_q <= leftShiftStage0Idx6_uid454_fracXBranch4Ext_uid45_fpLogE1pxTest_q;
            WHEN "11" => leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_msplit_1_q <= leftShiftStage0Idx7_uid457_fracXBranch4Ext_uid45_fpLogE1pxTest_q;
            WHEN OTHERS => leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_msplit_1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage0Idx3Rng12_uid444_fracXBranch4Ext_uid45_fpLogE1pxTest(BITSELECT,443)@1
    leftShiftStage0Idx3Rng12_uid444_fracXBranch4Ext_uid45_fpLogE1pxTest_in <= redLO_uid44_fpLogE1pxTest_b(34 downto 0);
    leftShiftStage0Idx3Rng12_uid444_fracXBranch4Ext_uid45_fpLogE1pxTest_b <= leftShiftStage0Idx3Rng12_uid444_fracXBranch4Ext_uid45_fpLogE1pxTest_in(34 downto 0);

    -- leftShiftStage0Idx3_uid445_fracXBranch4Ext_uid45_fpLogE1pxTest(BITJOIN,444)@1
    leftShiftStage0Idx3_uid445_fracXBranch4Ext_uid45_fpLogE1pxTest_q <= leftShiftStage0Idx3Rng12_uid444_fracXBranch4Ext_uid45_fpLogE1pxTest_b & rightShiftStage0Idx3Pad12_uid407_fracXRSExt_uid32_fpLogE1pxTest_q;

    -- leftShiftStage0Idx2Rng8_uid441_fracXBranch4Ext_uid45_fpLogE1pxTest(BITSELECT,440)@1
    leftShiftStage0Idx2Rng8_uid441_fracXBranch4Ext_uid45_fpLogE1pxTest_in <= redLO_uid44_fpLogE1pxTest_b(38 downto 0);
    leftShiftStage0Idx2Rng8_uid441_fracXBranch4Ext_uid45_fpLogE1pxTest_b <= leftShiftStage0Idx2Rng8_uid441_fracXBranch4Ext_uid45_fpLogE1pxTest_in(38 downto 0);

    -- leftShiftStage0Idx2_uid442_fracXBranch4Ext_uid45_fpLogE1pxTest(BITJOIN,441)@1
    leftShiftStage0Idx2_uid442_fracXBranch4Ext_uid45_fpLogE1pxTest_q <= leftShiftStage0Idx2Rng8_uid441_fracXBranch4Ext_uid45_fpLogE1pxTest_b & cstAllZWE_uid16_fpLogE1pxTest_q;

    -- leftShiftStage0Idx1Rng4_uid438_fracXBranch4Ext_uid45_fpLogE1pxTest(BITSELECT,437)@1
    leftShiftStage0Idx1Rng4_uid438_fracXBranch4Ext_uid45_fpLogE1pxTest_in <= redLO_uid44_fpLogE1pxTest_b(42 downto 0);
    leftShiftStage0Idx1Rng4_uid438_fracXBranch4Ext_uid45_fpLogE1pxTest_b <= leftShiftStage0Idx1Rng4_uid438_fracXBranch4Ext_uid45_fpLogE1pxTest_in(42 downto 0);

    -- leftShiftStage0Idx1_uid439_fracXBranch4Ext_uid45_fpLogE1pxTest(BITJOIN,438)@1
    leftShiftStage0Idx1_uid439_fracXBranch4Ext_uid45_fpLogE1pxTest_q <= leftShiftStage0Idx1Rng4_uid438_fracXBranch4Ext_uid45_fpLogE1pxTest_b & zs_uid171_leadingZeros_uid41_fpLogE1pxTest_q;

    -- leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_msplit_0(MUX,553)@1
    leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_msplit_0_s <= leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_selLSBs_b;
    leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_msplit_0_combproc: PROCESS (leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_msplit_0_s, redLO_uid44_fpLogE1pxTest_b, leftShiftStage0Idx1_uid439_fracXBranch4Ext_uid45_fpLogE1pxTest_q, leftShiftStage0Idx2_uid442_fracXBranch4Ext_uid45_fpLogE1pxTest_q, leftShiftStage0Idx3_uid445_fracXBranch4Ext_uid45_fpLogE1pxTest_q)
    BEGIN
        CASE (leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_msplit_0_s) IS
            WHEN "00" => leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_msplit_0_q <= redLO_uid44_fpLogE1pxTest_b;
            WHEN "01" => leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_msplit_0_q <= leftShiftStage0Idx1_uid439_fracXBranch4Ext_uid45_fpLogE1pxTest_q;
            WHEN "10" => leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_msplit_0_q <= leftShiftStage0Idx2_uid442_fracXBranch4Ext_uid45_fpLogE1pxTest_q;
            WHEN "11" => leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_msplit_0_q <= leftShiftStage0Idx3_uid445_fracXBranch4Ext_uid45_fpLogE1pxTest_q;
            WHEN OTHERS => leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_msplit_0_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_selMSBs(BITSELECT,552)@1
    leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_selMSBs_in <= leftShiftStageSel4Dto2_uid458_fracXBranch4Ext_uid45_fpLogE1pxTest_b;
    leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_selMSBs_b <= leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_selMSBs_in(2 downto 2);

    -- leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_mfinal(MUX,555)@1
    leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_mfinal_s <= leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_selMSBs_b;
    leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_mfinal_combproc: PROCESS (leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_mfinal_s, leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_msplit_0_q, leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_msplit_1_q)
    BEGIN
        CASE (leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_mfinal_s) IS
            WHEN "0" => leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_mfinal_q <= leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_msplit_0_q;
            WHEN "1" => leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_mfinal_q <= leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_msplit_1_q;
            WHEN OTHERS => leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_mfinal_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStageSel1Dto0_uid469_fracXBranch4Ext_uid45_fpLogE1pxTest(BITSELECT,468)@1
    leftShiftStageSel1Dto0_uid469_fracXBranch4Ext_uid45_fpLogE1pxTest_in <= r_uid186_leadingZeros_uid41_fpLogE1pxTest_q(1 downto 0);
    leftShiftStageSel1Dto0_uid469_fracXBranch4Ext_uid45_fpLogE1pxTest_b <= leftShiftStageSel1Dto0_uid469_fracXBranch4Ext_uid45_fpLogE1pxTest_in(1 downto 0);

    -- leftShiftStage1_uid470_fracXBranch4Ext_uid45_fpLogE1pxTest(MUX,469)@1
    leftShiftStage1_uid470_fracXBranch4Ext_uid45_fpLogE1pxTest_s <= leftShiftStageSel1Dto0_uid469_fracXBranch4Ext_uid45_fpLogE1pxTest_b;
    leftShiftStage1_uid470_fracXBranch4Ext_uid45_fpLogE1pxTest_combproc: PROCESS (leftShiftStage1_uid470_fracXBranch4Ext_uid45_fpLogE1pxTest_s, leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_mfinal_q, leftShiftStage1Idx1_uid462_fracXBranch4Ext_uid45_fpLogE1pxTest_q, leftShiftStage1Idx2_uid465_fracXBranch4Ext_uid45_fpLogE1pxTest_q, leftShiftStage1Idx3_uid468_fracXBranch4Ext_uid45_fpLogE1pxTest_q)
    BEGIN
        CASE (leftShiftStage1_uid470_fracXBranch4Ext_uid45_fpLogE1pxTest_s) IS
            WHEN "00" => leftShiftStage1_uid470_fracXBranch4Ext_uid45_fpLogE1pxTest_q <= leftShiftStage0_uid459_fracXBranch4Ext_uid45_fpLogE1pxTest_mfinal_q;
            WHEN "01" => leftShiftStage1_uid470_fracXBranch4Ext_uid45_fpLogE1pxTest_q <= leftShiftStage1Idx1_uid462_fracXBranch4Ext_uid45_fpLogE1pxTest_q;
            WHEN "10" => leftShiftStage1_uid470_fracXBranch4Ext_uid45_fpLogE1pxTest_q <= leftShiftStage1Idx2_uid465_fracXBranch4Ext_uid45_fpLogE1pxTest_q;
            WHEN "11" => leftShiftStage1_uid470_fracXBranch4Ext_uid45_fpLogE1pxTest_q <= leftShiftStage1Idx3_uid468_fracXBranch4Ext_uid45_fpLogE1pxTest_q;
            WHEN OTHERS => leftShiftStage1_uid470_fracXBranch4Ext_uid45_fpLogE1pxTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracXBranch4_uid46_fpLogE1pxTest(BITSELECT,45)@1
    fracXBranch4_uid46_fpLogE1pxTest_in <= leftShiftStage1_uid470_fracXBranch4Ext_uid45_fpLogE1pxTest_q;
    fracXBranch4_uid46_fpLogE1pxTest_b <= fracXBranch4_uid46_fpLogE1pxTest_in(46 downto 22);

    -- fracXBranch4Red_uid77_fpLogE1pxTest(BITSELECT,76)@1
    fracXBranch4Red_uid77_fpLogE1pxTest_in <= fracXBranch4_uid46_fpLogE1pxTest_b(23 downto 0);
    fracXBranch4Red_uid77_fpLogE1pxTest_b <= fracXBranch4Red_uid77_fpLogE1pxTest_in(23 downto 0);

    -- fracXRS_uid35_fpLogE1pxTest(BITSELECT,34)@0
    fracXRS_uid35_fpLogE1pxTest_in <= rightShiftStage1_uid433_fracXRSExt_uid32_fpLogE1pxTest_q;
    fracXRS_uid35_fpLogE1pxTest_b <= fracXRS_uid35_fpLogE1pxTest_in(47 downto 23);

    -- fracXRSRange_uid78_fpLogE1pxTest(BITSELECT,77)@0
    fracXRSRange_uid78_fpLogE1pxTest_in <= fracXRS_uid35_fpLogE1pxTest_b(23 downto 0);
    fracXRSRange_uid78_fpLogE1pxTest_b <= fracXRSRange_uid78_fpLogE1pxTest_in(23 downto 0);

    -- redist13_fracXRSRange_uid78_fpLogE1pxTest_b_1(DELAY,579)
    redist13_fracXRSRange_uid78_fpLogE1pxTest_b_1 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXRSRange_uid78_fpLogE1pxTest_b, xout => redist13_fracXRSRange_uid78_fpLogE1pxTest_b_1_q, clk => clk, aclr => areset );

    -- addrMaskExt_uid47_fpLogE1pxTest(SUB,46)@1
    addrMaskExt_uid47_fpLogE1pxTest_a <= STD_LOGIC_VECTOR("0" & redist22_expX_uid6_fpLogE1pxTest_b_1_q);
    addrMaskExt_uid47_fpLogE1pxTest_b <= STD_LOGIC_VECTOR("0" & cstBias_uid9_fpLogE1pxTest_q);
    addrMaskExt_uid47_fpLogE1pxTest_o <= STD_LOGIC_VECTOR(UNSIGNED(addrMaskExt_uid47_fpLogE1pxTest_a) - UNSIGNED(addrMaskExt_uid47_fpLogE1pxTest_b));
    addrMaskExt_uid47_fpLogE1pxTest_q <= addrMaskExt_uid47_fpLogE1pxTest_o(8 downto 0);

    -- addrMask_uid48_fpLogE1pxTest(BITSELECT,47)@1
    addrMask_uid48_fpLogE1pxTest_in <= addrMaskExt_uid47_fpLogE1pxTest_q(4 downto 0);
    addrMask_uid48_fpLogE1pxTest_b <= addrMask_uid48_fpLogE1pxTest_in(4 downto 0);

    -- maskIncrementTable_uid49_fpLogE1pxTest(LOOKUP,48)@1
    maskIncrementTable_uid49_fpLogE1pxTest_combproc: PROCESS (addrMask_uid48_fpLogE1pxTest_b)
    BEGIN
        -- Begin reserved scope level
        CASE (addrMask_uid48_fpLogE1pxTest_b) IS
            WHEN "00000" => maskIncrementTable_uid49_fpLogE1pxTest_q <= "100000000000000000000000";
            WHEN "00001" => maskIncrementTable_uid49_fpLogE1pxTest_q <= "010000000000000000000000";
            WHEN "00010" => maskIncrementTable_uid49_fpLogE1pxTest_q <= "001000000000000000000000";
            WHEN "00011" => maskIncrementTable_uid49_fpLogE1pxTest_q <= "000100000000000000000000";
            WHEN "00100" => maskIncrementTable_uid49_fpLogE1pxTest_q <= "000010000000000000000000";
            WHEN "00101" => maskIncrementTable_uid49_fpLogE1pxTest_q <= "000001000000000000000000";
            WHEN "00110" => maskIncrementTable_uid49_fpLogE1pxTest_q <= "000000100000000000000000";
            WHEN "00111" => maskIncrementTable_uid49_fpLogE1pxTest_q <= "000000010000000000000000";
            WHEN "01000" => maskIncrementTable_uid49_fpLogE1pxTest_q <= "000000001000000000000000";
            WHEN "01001" => maskIncrementTable_uid49_fpLogE1pxTest_q <= "000000000100000000000000";
            WHEN "01010" => maskIncrementTable_uid49_fpLogE1pxTest_q <= "000000000010000000000000";
            WHEN "01011" => maskIncrementTable_uid49_fpLogE1pxTest_q <= "000000000001000000000000";
            WHEN "01100" => maskIncrementTable_uid49_fpLogE1pxTest_q <= "000000000000100000000000";
            WHEN "01101" => maskIncrementTable_uid49_fpLogE1pxTest_q <= "000000000000010000000000";
            WHEN "01110" => maskIncrementTable_uid49_fpLogE1pxTest_q <= "000000000000001000000000";
            WHEN "01111" => maskIncrementTable_uid49_fpLogE1pxTest_q <= "000000000000000100000000";
            WHEN "10000" => maskIncrementTable_uid49_fpLogE1pxTest_q <= "000000000000000010000000";
            WHEN "10001" => maskIncrementTable_uid49_fpLogE1pxTest_q <= "000000000000000001000000";
            WHEN "10010" => maskIncrementTable_uid49_fpLogE1pxTest_q <= "000000000000000000100000";
            WHEN "10011" => maskIncrementTable_uid49_fpLogE1pxTest_q <= "000000000000000000010000";
            WHEN "10100" => maskIncrementTable_uid49_fpLogE1pxTest_q <= "000000000000000000001000";
            WHEN "10101" => maskIncrementTable_uid49_fpLogE1pxTest_q <= "000000000000000000000100";
            WHEN "10110" => maskIncrementTable_uid49_fpLogE1pxTest_q <= "000000000000000000000010";
            WHEN "10111" => maskIncrementTable_uid49_fpLogE1pxTest_q <= "000000000000000000000001";
            WHEN OTHERS => maskIncrementTable_uid49_fpLogE1pxTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- redist17_oFracX_uid29_fpLogE1pxTest_q_1(DELAY,583)
    redist17_oFracX_uid29_fpLogE1pxTest_q_1 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => oFracX_uid29_fpLogE1pxTest_q, xout => redist17_oFracX_uid29_fpLogE1pxTest_q_1_q, clk => clk, aclr => areset );

    -- oPlusOFracX_uid50_fpLogE1pxTest(ADD,49)@1
    oPlusOFracX_uid50_fpLogE1pxTest_a <= STD_LOGIC_VECTOR("0" & redist17_oFracX_uid29_fpLogE1pxTest_q_1_q);
    oPlusOFracX_uid50_fpLogE1pxTest_b <= STD_LOGIC_VECTOR("0" & maskIncrementTable_uid49_fpLogE1pxTest_q);
    oPlusOFracX_uid50_fpLogE1pxTest_o <= STD_LOGIC_VECTOR(UNSIGNED(oPlusOFracX_uid50_fpLogE1pxTest_a) + UNSIGNED(oPlusOFracX_uid50_fpLogE1pxTest_b));
    oPlusOFracX_uid50_fpLogE1pxTest_q <= oPlusOFracX_uid50_fpLogE1pxTest_o(24 downto 0);

    -- oPlusOFracXNormHigh_uid56_fpLogE1pxTest(BITSELECT,55)@1
    oPlusOFracXNormHigh_uid56_fpLogE1pxTest_in <= oPlusOFracX_uid50_fpLogE1pxTest_q(23 downto 0);
    oPlusOFracXNormHigh_uid56_fpLogE1pxTest_b <= oPlusOFracXNormHigh_uid56_fpLogE1pxTest_in(23 downto 0);

    -- oPlusOFracXNormLow_uid54_fpLogE1pxTest(BITSELECT,53)@1
    oPlusOFracXNormLow_uid54_fpLogE1pxTest_in <= oPlusOFracX_uid50_fpLogE1pxTest_q(22 downto 0);
    oPlusOFracXNormLow_uid54_fpLogE1pxTest_b <= oPlusOFracXNormLow_uid54_fpLogE1pxTest_in(22 downto 0);

    -- lowPart_uid55_fpLogE1pxTest(BITJOIN,54)@1
    lowPart_uid55_fpLogE1pxTest_q <= oPlusOFracXNormLow_uid54_fpLogE1pxTest_b & GND_q;

    -- msbUoPlusOFracX_uid51_fpLogE1pxTest(BITSELECT,50)@1
    msbUoPlusOFracX_uid51_fpLogE1pxTest_in <= STD_LOGIC_VECTOR(oPlusOFracX_uid50_fpLogE1pxTest_q);
    msbUoPlusOFracX_uid51_fpLogE1pxTest_b <= STD_LOGIC_VECTOR(msbUoPlusOFracX_uid51_fpLogE1pxTest_in(24 downto 24));

    -- oPlusOFracXNorm_uid58_fpLogE1pxTest(MUX,57)@1
    oPlusOFracXNorm_uid58_fpLogE1pxTest_s <= msbUoPlusOFracX_uid51_fpLogE1pxTest_b;
    oPlusOFracXNorm_uid58_fpLogE1pxTest_combproc: PROCESS (oPlusOFracXNorm_uid58_fpLogE1pxTest_s, lowPart_uid55_fpLogE1pxTest_q, oPlusOFracXNormHigh_uid56_fpLogE1pxTest_b)
    BEGIN
        CASE (oPlusOFracXNorm_uid58_fpLogE1pxTest_s) IS
            WHEN "0" => oPlusOFracXNorm_uid58_fpLogE1pxTest_q <= lowPart_uid55_fpLogE1pxTest_q;
            WHEN "1" => oPlusOFracXNorm_uid58_fpLogE1pxTest_q <= oPlusOFracXNormHigh_uid56_fpLogE1pxTest_b;
            WHEN OTHERS => oPlusOFracXNorm_uid58_fpLogE1pxTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracXz_uid79_fpLogE1pxTest(BITJOIN,78)@1
    fracXz_uid79_fpLogE1pxTest_q <= redist18_frac_x_uid18_fpLogE1pxTest_b_1_q & GND_q;

    -- cstBiasPWFP1_uid12_fpLogE1pxTest(CONSTANT,11)
    cstBiasPWFP1_uid12_fpLogE1pxTest_q <= "10010111";

    -- branch12_uid60_fpLogE1pxTest(COMPARE,59)@1
    branch12_uid60_fpLogE1pxTest_a <= STD_LOGIC_VECTOR("00" & redist22_expX_uid6_fpLogE1pxTest_b_1_q);
    branch12_uid60_fpLogE1pxTest_b <= STD_LOGIC_VECTOR("00" & cstBiasPWFP1_uid12_fpLogE1pxTest_q);
    branch12_uid60_fpLogE1pxTest_o <= STD_LOGIC_VECTOR(UNSIGNED(branch12_uid60_fpLogE1pxTest_a) - UNSIGNED(branch12_uid60_fpLogE1pxTest_b));
    branch12_uid60_fpLogE1pxTest_c(0) <= branch12_uid60_fpLogE1pxTest_o(9);
    branch12_uid60_fpLogE1pxTest_n(0) <= not (branch12_uid60_fpLogE1pxTest_o(9));

    -- branch2_uid66_fpLogE1pxTest(LOGICAL,65)@1
    branch2_uid66_fpLogE1pxTest_a <= branch11_uid61_fpLogE1pxTest_q;
    branch2_uid66_fpLogE1pxTest_b <= branch12_uid60_fpLogE1pxTest_c;
    branch2_uid66_fpLogE1pxTest_c <= branch22_uid63_fpLogE1pxTest_n;
    branch2_uid66_fpLogE1pxTest_q <= branch2_uid66_fpLogE1pxTest_a and branch2_uid66_fpLogE1pxTest_b and branch2_uid66_fpLogE1pxTest_c;

    -- branch1_uid62_fpLogE1pxTest(LOGICAL,61)@1
    branch1_uid62_fpLogE1pxTest_a <= branch11_uid61_fpLogE1pxTest_q;
    branch1_uid62_fpLogE1pxTest_b <= branch12_uid60_fpLogE1pxTest_n;
    branch1_uid62_fpLogE1pxTest_q <= branch1_uid62_fpLogE1pxTest_a and branch1_uid62_fpLogE1pxTest_b;

    -- concBranch_uid73_fpLogE1pxTest(BITJOIN,72)@1
    concBranch_uid73_fpLogE1pxTest_q <= branch4_uid72_fpLogE1pxTest_q & branch3_uid70_fpLogE1pxTest_q & branch2_uid66_fpLogE1pxTest_q & branch1_uid62_fpLogE1pxTest_q;

    -- branEnc_uid74_fpLogE1pxTest(LOOKUP,73)@1
    branEnc_uid74_fpLogE1pxTest_combproc: PROCESS (concBranch_uid73_fpLogE1pxTest_q)
    BEGIN
        -- Begin reserved scope level
        CASE (concBranch_uid73_fpLogE1pxTest_q) IS
            WHEN "0000" => branEnc_uid74_fpLogE1pxTest_q <= "00";
            WHEN "0001" => branEnc_uid74_fpLogE1pxTest_q <= "00";
            WHEN "0010" => branEnc_uid74_fpLogE1pxTest_q <= "01";
            WHEN "0011" => branEnc_uid74_fpLogE1pxTest_q <= "00";
            WHEN "0100" => branEnc_uid74_fpLogE1pxTest_q <= "10";
            WHEN "0101" => branEnc_uid74_fpLogE1pxTest_q <= "00";
            WHEN "0110" => branEnc_uid74_fpLogE1pxTest_q <= "00";
            WHEN "0111" => branEnc_uid74_fpLogE1pxTest_q <= "00";
            WHEN "1000" => branEnc_uid74_fpLogE1pxTest_q <= "11";
            WHEN "1001" => branEnc_uid74_fpLogE1pxTest_q <= "00";
            WHEN "1010" => branEnc_uid74_fpLogE1pxTest_q <= "00";
            WHEN "1011" => branEnc_uid74_fpLogE1pxTest_q <= "00";
            WHEN "1100" => branEnc_uid74_fpLogE1pxTest_q <= "00";
            WHEN "1101" => branEnc_uid74_fpLogE1pxTest_q <= "00";
            WHEN "1110" => branEnc_uid74_fpLogE1pxTest_q <= "00";
            WHEN "1111" => branEnc_uid74_fpLogE1pxTest_q <= "00";
            WHEN OTHERS => -- unreachable
                           branEnc_uid74_fpLogE1pxTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- fracB_uid80_fpLogE1pxTest(MUX,79)@1
    fracB_uid80_fpLogE1pxTest_s <= branEnc_uid74_fpLogE1pxTest_q;
    fracB_uid80_fpLogE1pxTest_combproc: PROCESS (fracB_uid80_fpLogE1pxTest_s, fracXz_uid79_fpLogE1pxTest_q, oPlusOFracXNorm_uid58_fpLogE1pxTest_q, redist13_fracXRSRange_uid78_fpLogE1pxTest_b_1_q, fracXBranch4Red_uid77_fpLogE1pxTest_b)
    BEGIN
        CASE (fracB_uid80_fpLogE1pxTest_s) IS
            WHEN "00" => fracB_uid80_fpLogE1pxTest_q <= fracXz_uid79_fpLogE1pxTest_q;
            WHEN "01" => fracB_uid80_fpLogE1pxTest_q <= oPlusOFracXNorm_uid58_fpLogE1pxTest_q;
            WHEN "10" => fracB_uid80_fpLogE1pxTest_q <= redist13_fracXRSRange_uid78_fpLogE1pxTest_b_1_q;
            WHEN "11" => fracB_uid80_fpLogE1pxTest_q <= fracXBranch4Red_uid77_fpLogE1pxTest_b;
            WHEN OTHERS => fracB_uid80_fpLogE1pxTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist12_fracB_uid80_fpLogE1pxTest_q_2(DELAY,578)
    redist12_fracB_uid80_fpLogE1pxTest_q_2 : dspba_delay
    GENERIC MAP ( width => 24, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracB_uid80_fpLogE1pxTest_q, xout => redist12_fracB_uid80_fpLogE1pxTest_q_2_q, clk => clk, aclr => areset );

    -- fracBRed_uid98_fpLogE1pxTest(BITSELECT,97)@3
    fracBRed_uid98_fpLogE1pxTest_in <= redist12_fracB_uid80_fpLogE1pxTest_q_2_q;
    fracBRed_uid98_fpLogE1pxTest_b <= fracBRed_uid98_fpLogE1pxTest_in(23 downto 1);

    -- redist5_fracBRed_uid98_fpLogE1pxTest_b_4(DELAY,571)
    redist5_fracBRed_uid98_fpLogE1pxTest_b_4 : dspba_delay
    GENERIC MAP ( width => 23, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracBRed_uid98_fpLogE1pxTest_b, xout => redist5_fracBRed_uid98_fpLogE1pxTest_b_4_q, clk => clk, aclr => areset );

    -- sEz_uid100_fpLogE1pxTest(BITJOIN,99)@7
    sEz_uid100_fpLogE1pxTest_q <= z2_uid99_fpLogE1pxTest_q & redist5_fracBRed_uid98_fpLogE1pxTest_b_4_q;

    -- sEz_uid101_fpLogE1pxTest(MUX,100)@7
    sEz_uid101_fpLogE1pxTest_s <= redist6_branch3OrC_uid91_fpLogE1pxTest_q_6_q;
    sEz_uid101_fpLogE1pxTest_combproc: PROCESS (sEz_uid101_fpLogE1pxTest_s, sEz_uid100_fpLogE1pxTest_q, sEz_uid97_fpLogE1pxTest_q)
    BEGIN
        CASE (sEz_uid101_fpLogE1pxTest_s) IS
            WHEN "0" => sEz_uid101_fpLogE1pxTest_q <= sEz_uid100_fpLogE1pxTest_q;
            WHEN "1" => sEz_uid101_fpLogE1pxTest_q <= sEz_uid97_fpLogE1pxTest_q;
            WHEN OTHERS => sEz_uid101_fpLogE1pxTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- postPEMul_uid103_fpLogE1pxTest_bs7(BITSELECT,478)@7
    postPEMul_uid103_fpLogE1pxTest_bs7_in <= STD_LOGIC_VECTOR(sEz_uid101_fpLogE1pxTest_q);
    postPEMul_uid103_fpLogE1pxTest_bs7_b <= STD_LOGIC_VECTOR(postPEMul_uid103_fpLogE1pxTest_bs7_in(24 downto 17));

    -- addrFull_uid85_fpLogE1pxTest(BITJOIN,84)@1
    addrFull_uid85_fpLogE1pxTest_q <= c_uid84_fpLogE1pxTest_q & fracB_uid80_fpLogE1pxTest_q;

    -- yAddr_uid87_fpLogE1pxTest(BITSELECT,86)@1
    yAddr_uid87_fpLogE1pxTest_in <= addrFull_uid85_fpLogE1pxTest_q;
    yAddr_uid87_fpLogE1pxTest_b <= yAddr_uid87_fpLogE1pxTest_in(24 downto 16);

    -- memoryC2_uid239_lnTables_lutmem(DUALMEM,545)@1 + 2
    memoryC2_uid239_lnTables_lutmem_aa <= yAddr_uid87_fpLogE1pxTest_b;
    memoryC2_uid239_lnTables_lutmem_reset0 <= areset;
    memoryC2_uid239_lnTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 9,
        numwords_a => 512,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "log_inst_0002_memoryC2_uid239_lnTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid239_lnTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC2_uid239_lnTables_lutmem_aa,
        q_a => memoryC2_uid239_lnTables_lutmem_ir
    );
    memoryC2_uid239_lnTables_lutmem_r <= memoryC2_uid239_lnTables_lutmem_ir(12 downto 0);

    -- topRangeY_mergedSignalTM_uid315_pT1_uid246_invPolyEval(BITJOIN,314)@3
    topRangeY_mergedSignalTM_uid315_pT1_uid246_invPolyEval_q <= memoryC2_uid239_lnTables_lutmem_r & zs_uid171_leadingZeros_uid41_fpLogE1pxTest_q;

    -- zPPolyEval_uid88_fpLogE1pxTest(BITSELECT,87)@3
    zPPolyEval_uid88_fpLogE1pxTest_in <= redist12_fracB_uid80_fpLogE1pxTest_q_2_q(15 downto 0);
    zPPolyEval_uid88_fpLogE1pxTest_b <= zPPolyEval_uid88_fpLogE1pxTest_in(15 downto 1);

    -- yT1_uid245_invPolyEval(BITSELECT,244)@3
    yT1_uid245_invPolyEval_in <= zPPolyEval_uid88_fpLogE1pxTest_b;
    yT1_uid245_invPolyEval_b <= yT1_uid245_invPolyEval_in(14 downto 2);

    -- nx_mergedSignalTM_uid299_pT1_uid246_invPolyEval(BITJOIN,298)@3
    nx_mergedSignalTM_uid299_pT1_uid246_invPolyEval_q <= GND_q & yT1_uid245_invPolyEval_b;

    -- topRangeX_mergedSignalTM_uid311_pT1_uid246_invPolyEval(BITJOIN,310)@3
    topRangeX_mergedSignalTM_uid311_pT1_uid246_invPolyEval_q <= nx_mergedSignalTM_uid299_pT1_uid246_invPolyEval_q & paddingX_uid201_eLn2_uid82_fpLogE1pxTest_q;

    -- sm0_uid317_pT1_uid246_invPolyEval(MULT,316)@3 + 2
    sm0_uid317_pT1_uid246_invPolyEval_a0 <= STD_LOGIC_VECTOR(topRangeX_mergedSignalTM_uid311_pT1_uid246_invPolyEval_q);
    sm0_uid317_pT1_uid246_invPolyEval_b0 <= STD_LOGIC_VECTOR(topRangeY_mergedSignalTM_uid315_pT1_uid246_invPolyEval_q);
    sm0_uid317_pT1_uid246_invPolyEval_reset <= areset;
    sm0_uid317_pT1_uid246_invPolyEval_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid317_pT1_uid246_invPolyEval_a0,
        datab => sm0_uid317_pT1_uid246_invPolyEval_b0,
        clken => VCC_q(0),
        aclr => sm0_uid317_pT1_uid246_invPolyEval_reset,
        clock => clk,
        result => sm0_uid317_pT1_uid246_invPolyEval_s1
    );
    sm0_uid317_pT1_uid246_invPolyEval_q <= sm0_uid317_pT1_uid246_invPolyEval_s1;

    -- osig_uid318_pT1_uid246_invPolyEval(BITSELECT,317)@5
    osig_uid318_pT1_uid246_invPolyEval_in <= STD_LOGIC_VECTOR(sm0_uid317_pT1_uid246_invPolyEval_q(32 downto 0));
    osig_uid318_pT1_uid246_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid318_pT1_uid246_invPolyEval_in(32 downto 18));

    -- redist10_yAddr_uid87_fpLogE1pxTest_b_2(DELAY,576)
    redist10_yAddr_uid87_fpLogE1pxTest_b_2 : dspba_delay
    GENERIC MAP ( width => 9, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => yAddr_uid87_fpLogE1pxTest_b, xout => redist10_yAddr_uid87_fpLogE1pxTest_b_2_q, clk => clk, aclr => areset );

    -- memoryC1_uid236_lnTables_lutmem(DUALMEM,544)@3 + 2
    memoryC1_uid236_lnTables_lutmem_aa <= redist10_yAddr_uid87_fpLogE1pxTest_b_2_q;
    memoryC1_uid236_lnTables_lutmem_reset0 <= areset;
    memoryC1_uid236_lnTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 3,
        widthad_a => 9,
        numwords_a => 512,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "log_inst_0002_memoryC1_uid236_lnTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid236_lnTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC1_uid236_lnTables_lutmem_aa,
        q_a => memoryC1_uid236_lnTables_lutmem_ir
    );
    memoryC1_uid236_lnTables_lutmem_r <= memoryC1_uid236_lnTables_lutmem_ir(2 downto 0);

    -- memoryC1_uid235_lnTables_lutmem(DUALMEM,543)@3 + 2
    memoryC1_uid235_lnTables_lutmem_aa <= redist10_yAddr_uid87_fpLogE1pxTest_b_2_q;
    memoryC1_uid235_lnTables_lutmem_reset0 <= areset;
    memoryC1_uid235_lnTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 18,
        widthad_a => 9,
        numwords_a => 512,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "log_inst_0002_memoryC1_uid235_lnTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid235_lnTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC1_uid235_lnTables_lutmem_aa,
        q_a => memoryC1_uid235_lnTables_lutmem_ir
    );
    memoryC1_uid235_lnTables_lutmem_r <= memoryC1_uid235_lnTables_lutmem_ir(17 downto 0);

    -- os_uid237_lnTables(BITJOIN,236)@5
    os_uid237_lnTables_q <= memoryC1_uid236_lnTables_lutmem_r & memoryC1_uid235_lnTables_lutmem_r;

    -- cIncludingRoundingBit_uid248_invPolyEval(BITJOIN,247)@5
    cIncludingRoundingBit_uid248_invPolyEval_q <= os_uid237_lnTables_q & o2_uid96_fpLogE1pxTest_q;

    -- ts1_uid250_invPolyEval(ADD,249)@5
    ts1_uid250_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 23 => cIncludingRoundingBit_uid248_invPolyEval_q(22)) & cIncludingRoundingBit_uid248_invPolyEval_q));
    ts1_uid250_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 15 => osig_uid318_pT1_uid246_invPolyEval_b(14)) & osig_uid318_pT1_uid246_invPolyEval_b));
    ts1_uid250_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(ts1_uid250_invPolyEval_a) + SIGNED(ts1_uid250_invPolyEval_b));
    ts1_uid250_invPolyEval_q <= ts1_uid250_invPolyEval_o(23 downto 0);

    -- s1_uid251_invPolyEval(BITSELECT,250)@5
    s1_uid251_invPolyEval_in <= STD_LOGIC_VECTOR(ts1_uid250_invPolyEval_q);
    s1_uid251_invPolyEval_b <= STD_LOGIC_VECTOR(s1_uid251_invPolyEval_in(23 downto 1));

    -- rightBottomY_uid354_pT2_uid253_invPolyEval(BITSELECT,353)@5
    rightBottomY_uid354_pT2_uid253_invPolyEval_in <= s1_uid251_invPolyEval_b(5 downto 0);
    rightBottomY_uid354_pT2_uid253_invPolyEval_b <= rightBottomY_uid354_pT2_uid253_invPolyEval_in(5 downto 1);

    -- n1_uid363_pT2_uid253_invPolyEval(BITSELECT,362)@5
    n1_uid363_pT2_uid253_invPolyEval_in <= rightBottomY_uid354_pT2_uid253_invPolyEval_b;
    n1_uid363_pT2_uid253_invPolyEval_b <= n1_uid363_pT2_uid253_invPolyEval_in(4 downto 1);

    -- n1_uid371_pT2_uid253_invPolyEval(BITSELECT,370)@5
    n1_uid371_pT2_uid253_invPolyEval_in <= n1_uid363_pT2_uid253_invPolyEval_b;
    n1_uid371_pT2_uid253_invPolyEval_b <= n1_uid371_pT2_uid253_invPolyEval_in(3 downto 1);

    -- redist9_zPPolyEval_uid88_fpLogE1pxTest_b_2(DELAY,575)
    redist9_zPPolyEval_uid88_fpLogE1pxTest_b_2 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => zPPolyEval_uid88_fpLogE1pxTest_b, xout => redist9_zPPolyEval_uid88_fpLogE1pxTest_b_2_q, clk => clk, aclr => areset );

    -- nx_mergedSignalTM_uid322_pT2_uid253_invPolyEval(BITJOIN,321)@5
    nx_mergedSignalTM_uid322_pT2_uid253_invPolyEval_q <= GND_q & redist9_zPPolyEval_uid88_fpLogE1pxTest_b_2_q;

    -- rightBottomX_uid353_pT2_uid253_invPolyEval(BITSELECT,352)@5
    rightBottomX_uid353_pT2_uid253_invPolyEval_in <= nx_mergedSignalTM_uid322_pT2_uid253_invPolyEval_q(7 downto 0);
    rightBottomX_uid353_pT2_uid253_invPolyEval_b <= rightBottomX_uid353_pT2_uid253_invPolyEval_in(7 downto 3);

    -- n0_uid364_pT2_uid253_invPolyEval(BITSELECT,363)@5
    n0_uid364_pT2_uid253_invPolyEval_in <= rightBottomX_uid353_pT2_uid253_invPolyEval_b;
    n0_uid364_pT2_uid253_invPolyEval_b <= n0_uid364_pT2_uid253_invPolyEval_in(4 downto 1);

    -- n0_uid372_pT2_uid253_invPolyEval(BITSELECT,371)@5
    n0_uid372_pT2_uid253_invPolyEval_in <= n0_uid364_pT2_uid253_invPolyEval_b;
    n0_uid372_pT2_uid253_invPolyEval_b <= n0_uid372_pT2_uid253_invPolyEval_in(3 downto 1);

    -- sm0_uid387_pT2_uid253_invPolyEval(MULT,386)@5 + 2
    sm0_uid387_pT2_uid253_invPolyEval_a0 <= n0_uid372_pT2_uid253_invPolyEval_b;
    sm0_uid387_pT2_uid253_invPolyEval_b0 <= n1_uid371_pT2_uid253_invPolyEval_b;
    sm0_uid387_pT2_uid253_invPolyEval_reset <= areset;
    sm0_uid387_pT2_uid253_invPolyEval_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 3,
        lpm_widthb => 3,
        lpm_widthp => 6,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=NO, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid387_pT2_uid253_invPolyEval_a0,
        datab => sm0_uid387_pT2_uid253_invPolyEval_b0,
        clken => VCC_q(0),
        aclr => sm0_uid387_pT2_uid253_invPolyEval_reset,
        clock => clk,
        result => sm0_uid387_pT2_uid253_invPolyEval_s1
    );
    sm0_uid387_pT2_uid253_invPolyEval_q <= sm0_uid387_pT2_uid253_invPolyEval_s1;

    -- aboveLeftY_bottomRange_uid344_pT2_uid253_invPolyEval(BITSELECT,343)@5
    aboveLeftY_bottomRange_uid344_pT2_uid253_invPolyEval_in <= STD_LOGIC_VECTOR(s1_uid251_invPolyEval_b(5 downto 0));
    aboveLeftY_bottomRange_uid344_pT2_uid253_invPolyEval_b <= STD_LOGIC_VECTOR(aboveLeftY_bottomRange_uid344_pT2_uid253_invPolyEval_in(5 downto 0));

    -- aboveLeftY_mergedSignalTM_uid345_pT2_uid253_invPolyEval(BITJOIN,344)@5
    aboveLeftY_mergedSignalTM_uid345_pT2_uid253_invPolyEval_q <= aboveLeftY_bottomRange_uid344_pT2_uid253_invPolyEval_b & z2_uid99_fpLogE1pxTest_q;

    -- aboveLeftX_uid342_pT2_uid253_invPolyEval(BITSELECT,341)@5
    aboveLeftX_uid342_pT2_uid253_invPolyEval_in <= STD_LOGIC_VECTOR(nx_mergedSignalTM_uid322_pT2_uid253_invPolyEval_q);
    aboveLeftX_uid342_pT2_uid253_invPolyEval_b <= STD_LOGIC_VECTOR(aboveLeftX_uid342_pT2_uid253_invPolyEval_in(15 downto 8));

    -- sm0_uid386_pT2_uid253_invPolyEval(MULT,385)@5 + 2
    sm0_uid386_pT2_uid253_invPolyEval_a0 <= STD_LOGIC_VECTOR(aboveLeftX_uid342_pT2_uid253_invPolyEval_b);
    sm0_uid386_pT2_uid253_invPolyEval_b0 <= '0' & aboveLeftY_mergedSignalTM_uid345_pT2_uid253_invPolyEval_q;
    sm0_uid386_pT2_uid253_invPolyEval_reset <= areset;
    sm0_uid386_pT2_uid253_invPolyEval_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 8,
        lpm_widthb => 9,
        lpm_widthp => 17,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid386_pT2_uid253_invPolyEval_a0,
        datab => sm0_uid386_pT2_uid253_invPolyEval_b0,
        clken => VCC_q(0),
        aclr => sm0_uid386_pT2_uid253_invPolyEval_reset,
        clock => clk,
        result => sm0_uid386_pT2_uid253_invPolyEval_s1
    );
    sm0_uid386_pT2_uid253_invPolyEval_q <= sm0_uid386_pT2_uid253_invPolyEval_s1(15 downto 0);

    -- topRangeY_uid336_pT2_uid253_invPolyEval(BITSELECT,335)@5
    topRangeY_uid336_pT2_uid253_invPolyEval_in <= STD_LOGIC_VECTOR(s1_uid251_invPolyEval_b);
    topRangeY_uid336_pT2_uid253_invPolyEval_b <= STD_LOGIC_VECTOR(topRangeY_uid336_pT2_uid253_invPolyEval_in(22 downto 6));

    -- topRangeX_mergedSignalTM_uid334_pT2_uid253_invPolyEval(BITJOIN,333)@5
    topRangeX_mergedSignalTM_uid334_pT2_uid253_invPolyEval_q <= nx_mergedSignalTM_uid322_pT2_uid253_invPolyEval_q & GND_q;

    -- sm0_uid385_pT2_uid253_invPolyEval(MULT,384)@5 + 2
    sm0_uid385_pT2_uid253_invPolyEval_a0 <= STD_LOGIC_VECTOR(topRangeX_mergedSignalTM_uid334_pT2_uid253_invPolyEval_q);
    sm0_uid385_pT2_uid253_invPolyEval_b0 <= STD_LOGIC_VECTOR(topRangeY_uid336_pT2_uid253_invPolyEval_b);
    sm0_uid385_pT2_uid253_invPolyEval_reset <= areset;
    sm0_uid385_pT2_uid253_invPolyEval_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => sm0_uid385_pT2_uid253_invPolyEval_a0,
        datab => sm0_uid385_pT2_uid253_invPolyEval_b0,
        clken => VCC_q(0),
        aclr => sm0_uid385_pT2_uid253_invPolyEval_reset,
        clock => clk,
        result => sm0_uid385_pT2_uid253_invPolyEval_s1
    );
    sm0_uid385_pT2_uid253_invPolyEval_q <= sm0_uid385_pT2_uid253_invPolyEval_s1;

    -- highABits_uid389_pT2_uid253_invPolyEval(BITSELECT,388)@7
    highABits_uid389_pT2_uid253_invPolyEval_in <= STD_LOGIC_VECTOR(sm0_uid385_pT2_uid253_invPolyEval_q);
    highABits_uid389_pT2_uid253_invPolyEval_b <= STD_LOGIC_VECTOR(highABits_uid389_pT2_uid253_invPolyEval_in(33 downto 1));

    -- lev1_a0high_uid390_pT2_uid253_invPolyEval(ADD,389)@7
    lev1_a0high_uid390_pT2_uid253_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 33 => highABits_uid389_pT2_uid253_invPolyEval_b(32)) & highABits_uid389_pT2_uid253_invPolyEval_b));
    lev1_a0high_uid390_pT2_uid253_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 16 => sm0_uid386_pT2_uid253_invPolyEval_q(15)) & sm0_uid386_pT2_uid253_invPolyEval_q));
    lev1_a0high_uid390_pT2_uid253_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a0high_uid390_pT2_uid253_invPolyEval_a) + SIGNED(lev1_a0high_uid390_pT2_uid253_invPolyEval_b));
    lev1_a0high_uid390_pT2_uid253_invPolyEval_q <= lev1_a0high_uid390_pT2_uid253_invPolyEval_o(33 downto 0);

    -- lowRangeA_uid388_pT2_uid253_invPolyEval(BITSELECT,387)@7
    lowRangeA_uid388_pT2_uid253_invPolyEval_in <= sm0_uid385_pT2_uid253_invPolyEval_q(0 downto 0);
    lowRangeA_uid388_pT2_uid253_invPolyEval_b <= lowRangeA_uid388_pT2_uid253_invPolyEval_in(0 downto 0);

    -- lev1_a0_uid391_pT2_uid253_invPolyEval(BITJOIN,390)@7
    lev1_a0_uid391_pT2_uid253_invPolyEval_q <= lev1_a0high_uid390_pT2_uid253_invPolyEval_q & lowRangeA_uid388_pT2_uid253_invPolyEval_b;

    -- highABits_uid393_pT2_uid253_invPolyEval(BITSELECT,392)@7
    highABits_uid393_pT2_uid253_invPolyEval_in <= STD_LOGIC_VECTOR(lev1_a0_uid391_pT2_uid253_invPolyEval_q);
    highABits_uid393_pT2_uid253_invPolyEval_b <= STD_LOGIC_VECTOR(highABits_uid393_pT2_uid253_invPolyEval_in(34 downto 3));

    -- lev2_a0high_uid394_pT2_uid253_invPolyEval(ADD,393)@7
    lev2_a0high_uid394_pT2_uid253_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => highABits_uid393_pT2_uid253_invPolyEval_b(31)) & highABits_uid393_pT2_uid253_invPolyEval_b));
    lev2_a0high_uid394_pT2_uid253_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000000000000000000000000000" & sm0_uid387_pT2_uid253_invPolyEval_q));
    lev2_a0high_uid394_pT2_uid253_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(lev2_a0high_uid394_pT2_uid253_invPolyEval_a) + SIGNED(lev2_a0high_uid394_pT2_uid253_invPolyEval_b));
    lev2_a0high_uid394_pT2_uid253_invPolyEval_q <= lev2_a0high_uid394_pT2_uid253_invPolyEval_o(32 downto 0);

    -- lowRangeA_uid392_pT2_uid253_invPolyEval(BITSELECT,391)@7
    lowRangeA_uid392_pT2_uid253_invPolyEval_in <= lev1_a0_uid391_pT2_uid253_invPolyEval_q(2 downto 0);
    lowRangeA_uid392_pT2_uid253_invPolyEval_b <= lowRangeA_uid392_pT2_uid253_invPolyEval_in(2 downto 0);

    -- lev2_a0_uid395_pT2_uid253_invPolyEval(BITJOIN,394)@7
    lev2_a0_uid395_pT2_uid253_invPolyEval_q <= lev2_a0high_uid394_pT2_uid253_invPolyEval_q & lowRangeA_uid392_pT2_uid253_invPolyEval_b;

    -- osig_uid396_pT2_uid253_invPolyEval(BITSELECT,395)@7
    osig_uid396_pT2_uid253_invPolyEval_in <= STD_LOGIC_VECTOR(lev2_a0_uid395_pT2_uid253_invPolyEval_q(32 downto 0));
    osig_uid396_pT2_uid253_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid396_pT2_uid253_invPolyEval_in(32 downto 8));

    -- redist11_yAddr_uid87_fpLogE1pxTest_b_4(DELAY,577)
    redist11_yAddr_uid87_fpLogE1pxTest_b_4 : dspba_delay
    GENERIC MAP ( width => 9, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist10_yAddr_uid87_fpLogE1pxTest_b_2_q, xout => redist11_yAddr_uid87_fpLogE1pxTest_b_4_q, clk => clk, aclr => areset );

    -- memoryC0_uid232_lnTables_lutmem(DUALMEM,542)@5 + 2
    memoryC0_uid232_lnTables_lutmem_aa <= redist11_yAddr_uid87_fpLogE1pxTest_b_4_q;
    memoryC0_uid232_lnTables_lutmem_reset0 <= areset;
    memoryC0_uid232_lnTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 9,
        numwords_a => 512,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "log_inst_0002_memoryC0_uid232_lnTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid232_lnTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC0_uid232_lnTables_lutmem_aa,
        q_a => memoryC0_uid232_lnTables_lutmem_ir
    );
    memoryC0_uid232_lnTables_lutmem_r <= memoryC0_uid232_lnTables_lutmem_ir(12 downto 0);

    -- memoryC0_uid231_lnTables_lutmem(DUALMEM,541)@5 + 2
    memoryC0_uid231_lnTables_lutmem_aa <= redist11_yAddr_uid87_fpLogE1pxTest_b_4_q;
    memoryC0_uid231_lnTables_lutmem_reset0 <= areset;
    memoryC0_uid231_lnTables_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 18,
        widthad_a => 9,
        numwords_a => 512,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "log_inst_0002_memoryC0_uid231_lnTables_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid231_lnTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC0_uid231_lnTables_lutmem_aa,
        q_a => memoryC0_uid231_lnTables_lutmem_ir
    );
    memoryC0_uid231_lnTables_lutmem_r <= memoryC0_uid231_lnTables_lutmem_ir(17 downto 0);

    -- os_uid233_lnTables(BITJOIN,232)@7
    os_uid233_lnTables_q <= memoryC0_uid232_lnTables_lutmem_r & memoryC0_uid231_lnTables_lutmem_r;

    -- rndBit_uid254_invPolyEval(CONSTANT,253)
    rndBit_uid254_invPolyEval_q <= "001";

    -- cIncludingRoundingBit_uid255_invPolyEval(BITJOIN,254)@7
    cIncludingRoundingBit_uid255_invPolyEval_q <= os_uid233_lnTables_q & rndBit_uid254_invPolyEval_q;

    -- ts2_uid257_invPolyEval(ADD,256)@7
    ts2_uid257_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 34 => cIncludingRoundingBit_uid255_invPolyEval_q(33)) & cIncludingRoundingBit_uid255_invPolyEval_q));
    ts2_uid257_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 25 => osig_uid396_pT2_uid253_invPolyEval_b(24)) & osig_uid396_pT2_uid253_invPolyEval_b));
    ts2_uid257_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(ts2_uid257_invPolyEval_a) + SIGNED(ts2_uid257_invPolyEval_b));
    ts2_uid257_invPolyEval_q <= ts2_uid257_invPolyEval_o(34 downto 0);

    -- s2_uid258_invPolyEval(BITSELECT,257)@7
    s2_uid258_invPolyEval_in <= STD_LOGIC_VECTOR(ts2_uid257_invPolyEval_q);
    s2_uid258_invPolyEval_b <= STD_LOGIC_VECTOR(s2_uid258_invPolyEval_in(34 downto 1));

    -- peOR_uid90_fpLogE1pxTest(BITSELECT,89)@7
    peOR_uid90_fpLogE1pxTest_in <= s2_uid258_invPolyEval_b(31 downto 0);
    peOR_uid90_fpLogE1pxTest_b <= peOR_uid90_fpLogE1pxTest_in(31 downto 6);

    -- postPEMul_uid103_fpLogE1pxTest_bs8(BITSELECT,479)@7
    postPEMul_uid103_fpLogE1pxTest_bs8_in <= STD_LOGIC_VECTOR(peOR_uid90_fpLogE1pxTest_b(16 downto 0));
    postPEMul_uid103_fpLogE1pxTest_bs8_b <= STD_LOGIC_VECTOR(postPEMul_uid103_fpLogE1pxTest_bs8_in(16 downto 0));

    -- postPEMul_uid103_fpLogE1pxTest_bjB9(BITJOIN,480)@7
    postPEMul_uid103_fpLogE1pxTest_bjB9_q <= GND_q & postPEMul_uid103_fpLogE1pxTest_bs8_b;

    -- postPEMul_uid103_fpLogE1pxTest_im6(MULT,477)@7 + 2
    postPEMul_uid103_fpLogE1pxTest_im6_a0 <= STD_LOGIC_VECTOR(postPEMul_uid103_fpLogE1pxTest_bjB9_q);
    postPEMul_uid103_fpLogE1pxTest_im6_b0 <= STD_LOGIC_VECTOR(postPEMul_uid103_fpLogE1pxTest_bs7_b);
    postPEMul_uid103_fpLogE1pxTest_im6_reset <= areset;
    postPEMul_uid103_fpLogE1pxTest_im6_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 8,
        lpm_widthp => 26,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => postPEMul_uid103_fpLogE1pxTest_im6_a0,
        datab => postPEMul_uid103_fpLogE1pxTest_im6_b0,
        clken => VCC_q(0),
        aclr => postPEMul_uid103_fpLogE1pxTest_im6_reset,
        clock => clk,
        result => postPEMul_uid103_fpLogE1pxTest_im6_s1
    );
    postPEMul_uid103_fpLogE1pxTest_im6_q <= postPEMul_uid103_fpLogE1pxTest_im6_s1;

    -- postPEMul_uid103_fpLogE1pxTest_align_17(BITSHIFT,488)@9
    postPEMul_uid103_fpLogE1pxTest_align_17_qint <= postPEMul_uid103_fpLogE1pxTest_im6_q & "00000000000000000";
    postPEMul_uid103_fpLogE1pxTest_align_17_q <= postPEMul_uid103_fpLogE1pxTest_align_17_qint(42 downto 0);

    -- postPEMul_uid103_fpLogE1pxTest_bs5(BITSELECT,476)@7
    postPEMul_uid103_fpLogE1pxTest_bs5_in <= peOR_uid90_fpLogE1pxTest_b;
    postPEMul_uid103_fpLogE1pxTest_bs5_b <= postPEMul_uid103_fpLogE1pxTest_bs5_in(25 downto 17);

    -- postPEMul_uid103_fpLogE1pxTest_bs1(BITSELECT,472)@7
    postPEMul_uid103_fpLogE1pxTest_bs1_in <= sEz_uid101_fpLogE1pxTest_q(16 downto 0);
    postPEMul_uid103_fpLogE1pxTest_bs1_b <= postPEMul_uid103_fpLogE1pxTest_bs1_in(16 downto 0);

    -- postPEMul_uid103_fpLogE1pxTest_im3(MULT,474)@7 + 2
    postPEMul_uid103_fpLogE1pxTest_im3_a0 <= postPEMul_uid103_fpLogE1pxTest_bs1_b;
    postPEMul_uid103_fpLogE1pxTest_im3_b0 <= postPEMul_uid103_fpLogE1pxTest_bs5_b;
    postPEMul_uid103_fpLogE1pxTest_im3_reset <= areset;
    postPEMul_uid103_fpLogE1pxTest_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 9,
        lpm_widthp => 26,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => postPEMul_uid103_fpLogE1pxTest_im3_a0,
        datab => postPEMul_uid103_fpLogE1pxTest_im3_b0,
        clken => VCC_q(0),
        aclr => postPEMul_uid103_fpLogE1pxTest_im3_reset,
        clock => clk,
        result => postPEMul_uid103_fpLogE1pxTest_im3_s1
    );
    postPEMul_uid103_fpLogE1pxTest_im3_q <= postPEMul_uid103_fpLogE1pxTest_im3_s1;

    -- postPEMul_uid103_fpLogE1pxTest_align_15(BITSHIFT,486)@9
    postPEMul_uid103_fpLogE1pxTest_align_15_qint <= postPEMul_uid103_fpLogE1pxTest_im3_q & "00000000000000000";
    postPEMul_uid103_fpLogE1pxTest_align_15_q <= postPEMul_uid103_fpLogE1pxTest_align_15_qint(42 downto 0);

    -- postPEMul_uid103_fpLogE1pxTest_bs12(BITSELECT,483)@7
    postPEMul_uid103_fpLogE1pxTest_bs12_in <= STD_LOGIC_VECTOR(peOR_uid90_fpLogE1pxTest_b);
    postPEMul_uid103_fpLogE1pxTest_bs12_b <= STD_LOGIC_VECTOR(postPEMul_uid103_fpLogE1pxTest_bs12_in(25 downto 17));

    -- postPEMul_uid103_fpLogE1pxTest_bjB13(BITJOIN,484)@7
    postPEMul_uid103_fpLogE1pxTest_bjB13_q <= GND_q & postPEMul_uid103_fpLogE1pxTest_bs12_b;

    -- postPEMul_uid103_fpLogE1pxTest_im10(MULT,481)@7 + 2
    postPEMul_uid103_fpLogE1pxTest_im10_a0 <= STD_LOGIC_VECTOR(postPEMul_uid103_fpLogE1pxTest_bjB13_q);
    postPEMul_uid103_fpLogE1pxTest_im10_b0 <= STD_LOGIC_VECTOR(postPEMul_uid103_fpLogE1pxTest_bs7_b);
    postPEMul_uid103_fpLogE1pxTest_im10_reset <= areset;
    postPEMul_uid103_fpLogE1pxTest_im10_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 10,
        lpm_widthb => 8,
        lpm_widthp => 18,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => postPEMul_uid103_fpLogE1pxTest_im10_a0,
        datab => postPEMul_uid103_fpLogE1pxTest_im10_b0,
        clken => VCC_q(0),
        aclr => postPEMul_uid103_fpLogE1pxTest_im10_reset,
        clock => clk,
        result => postPEMul_uid103_fpLogE1pxTest_im10_s1
    );
    postPEMul_uid103_fpLogE1pxTest_im10_q <= postPEMul_uid103_fpLogE1pxTest_im10_s1;

    -- postPEMul_uid103_fpLogE1pxTest_bs2(BITSELECT,473)@7
    postPEMul_uid103_fpLogE1pxTest_bs2_in <= peOR_uid90_fpLogE1pxTest_b(16 downto 0);
    postPEMul_uid103_fpLogE1pxTest_bs2_b <= postPEMul_uid103_fpLogE1pxTest_bs2_in(16 downto 0);

    -- postPEMul_uid103_fpLogE1pxTest_im0(MULT,471)@7 + 2
    postPEMul_uid103_fpLogE1pxTest_im0_a0 <= postPEMul_uid103_fpLogE1pxTest_bs1_b;
    postPEMul_uid103_fpLogE1pxTest_im0_b0 <= postPEMul_uid103_fpLogE1pxTest_bs2_b;
    postPEMul_uid103_fpLogE1pxTest_im0_reset <= areset;
    postPEMul_uid103_fpLogE1pxTest_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 17,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "UNSIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => postPEMul_uid103_fpLogE1pxTest_im0_a0,
        datab => postPEMul_uid103_fpLogE1pxTest_im0_b0,
        clken => VCC_q(0),
        aclr => postPEMul_uid103_fpLogE1pxTest_im0_reset,
        clock => clk,
        result => postPEMul_uid103_fpLogE1pxTest_im0_s1
    );
    postPEMul_uid103_fpLogE1pxTest_im0_q <= postPEMul_uid103_fpLogE1pxTest_im0_s1;

    -- postPEMul_uid103_fpLogE1pxTest_join_14(BITJOIN,485)@9
    postPEMul_uid103_fpLogE1pxTest_join_14_q <= postPEMul_uid103_fpLogE1pxTest_im10_q & postPEMul_uid103_fpLogE1pxTest_im0_q;

    -- postPEMul_uid103_fpLogE1pxTest_result_add_0_0(ADD,490)@9
    postPEMul_uid103_fpLogE1pxTest_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((53 downto 52 => postPEMul_uid103_fpLogE1pxTest_join_14_q(51)) & postPEMul_uid103_fpLogE1pxTest_join_14_q));
    postPEMul_uid103_fpLogE1pxTest_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "0000000000" & postPEMul_uid103_fpLogE1pxTest_align_15_q));
    postPEMul_uid103_fpLogE1pxTest_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(postPEMul_uid103_fpLogE1pxTest_result_add_0_0_a) + SIGNED(postPEMul_uid103_fpLogE1pxTest_result_add_0_0_b));
    postPEMul_uid103_fpLogE1pxTest_result_add_0_0_q <= postPEMul_uid103_fpLogE1pxTest_result_add_0_0_o(52 downto 0);

    -- postPEMul_uid103_fpLogE1pxTest_result_add_1_0(ADD,491)@9
    postPEMul_uid103_fpLogE1pxTest_result_add_1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((53 downto 53 => postPEMul_uid103_fpLogE1pxTest_result_add_0_0_q(52)) & postPEMul_uid103_fpLogE1pxTest_result_add_0_0_q));
    postPEMul_uid103_fpLogE1pxTest_result_add_1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((53 downto 43 => postPEMul_uid103_fpLogE1pxTest_align_17_q(42)) & postPEMul_uid103_fpLogE1pxTest_align_17_q));
    postPEMul_uid103_fpLogE1pxTest_result_add_1_0_o <= STD_LOGIC_VECTOR(SIGNED(postPEMul_uid103_fpLogE1pxTest_result_add_1_0_a) + SIGNED(postPEMul_uid103_fpLogE1pxTest_result_add_1_0_b));
    postPEMul_uid103_fpLogE1pxTest_result_add_1_0_q <= postPEMul_uid103_fpLogE1pxTest_result_add_1_0_o(53 downto 0);

    -- highBBits_uid107_fpLogE1pxTest(BITSELECT,106)@9
    highBBits_uid107_fpLogE1pxTest_in <= STD_LOGIC_VECTOR(postPEMul_uid103_fpLogE1pxTest_result_add_1_0_q(50 downto 0));
    highBBits_uid107_fpLogE1pxTest_b <= STD_LOGIC_VECTOR(highBBits_uid107_fpLogE1pxTest_in(50 downto 22));

    -- maxValInOutFormat_uid199_eLn2_uid82_fpLogE1pxTest(CONSTANT,198)
    maxValInOutFormat_uid199_eLn2_uid82_fpLogE1pxTest_q <= "01111111111111111111111111111111111";

    -- minValueInFormat_uid200_eLn2_uid82_fpLogE1pxTest(CONSTANT,199)
    minValueInFormat_uid200_eLn2_uid82_fpLogE1pxTest_q <= "10000000000000000000000000000000000";

    -- expBran3PreExt_uid42_fpLogE1pxTest(SUB,41)@1
    expBran3PreExt_uid42_fpLogE1pxTest_a <= STD_LOGIC_VECTOR("0" & cstBiasMO_uid10_fpLogE1pxTest_q);
    expBran3PreExt_uid42_fpLogE1pxTest_b <= STD_LOGIC_VECTOR("0000" & r_uid186_leadingZeros_uid41_fpLogE1pxTest_q);
    expBran3PreExt_uid42_fpLogE1pxTest_o <= STD_LOGIC_VECTOR(UNSIGNED(expBran3PreExt_uid42_fpLogE1pxTest_a) - UNSIGNED(expBran3PreExt_uid42_fpLogE1pxTest_b));
    expBran3PreExt_uid42_fpLogE1pxTest_q <= expBran3PreExt_uid42_fpLogE1pxTest_o(8 downto 0);

    -- expBran3Pre_uid43_fpLogE1pxTest(BITSELECT,42)@1
    expBran3Pre_uid43_fpLogE1pxTest_in <= expBran3PreExt_uid42_fpLogE1pxTest_q(7 downto 0);
    expBran3Pre_uid43_fpLogE1pxTest_b <= expBran3Pre_uid43_fpLogE1pxTest_in(7 downto 0);

    -- eUpdateOPOFracX_uid52_fpLogE1pxTest(ADD,51)@1
    eUpdateOPOFracX_uid52_fpLogE1pxTest_a <= STD_LOGIC_VECTOR("0" & redist22_expX_uid6_fpLogE1pxTest_b_1_q);
    eUpdateOPOFracX_uid52_fpLogE1pxTest_b <= STD_LOGIC_VECTOR("00000000" & msbUoPlusOFracX_uid51_fpLogE1pxTest_b);
    eUpdateOPOFracX_uid52_fpLogE1pxTest_o <= STD_LOGIC_VECTOR(UNSIGNED(eUpdateOPOFracX_uid52_fpLogE1pxTest_a) + UNSIGNED(eUpdateOPOFracX_uid52_fpLogE1pxTest_b));
    eUpdateOPOFracX_uid52_fpLogE1pxTest_q <= eUpdateOPOFracX_uid52_fpLogE1pxTest_o(8 downto 0);

    -- eUpdateOPOFracXRed_uid75_fpLogE1pxTest(BITSELECT,74)@1
    eUpdateOPOFracXRed_uid75_fpLogE1pxTest_in <= eUpdateOPOFracX_uid52_fpLogE1pxTest_q(7 downto 0);
    eUpdateOPOFracXRed_uid75_fpLogE1pxTest_b <= eUpdateOPOFracXRed_uid75_fpLogE1pxTest_in(7 downto 0);

    -- expB_uid76_fpLogE1pxTest(MUX,75)@1 + 1
    expB_uid76_fpLogE1pxTest_s <= branEnc_uid74_fpLogE1pxTest_q;
    expB_uid76_fpLogE1pxTest_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            expB_uid76_fpLogE1pxTest_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (expB_uid76_fpLogE1pxTest_s) IS
                WHEN "00" => expB_uid76_fpLogE1pxTest_q <= redist22_expX_uid6_fpLogE1pxTest_b_1_q;
                WHEN "01" => expB_uid76_fpLogE1pxTest_q <= eUpdateOPOFracXRed_uid75_fpLogE1pxTest_b;
                WHEN "10" => expB_uid76_fpLogE1pxTest_q <= cstBias_uid9_fpLogE1pxTest_q;
                WHEN "11" => expB_uid76_fpLogE1pxTest_q <= expBran3Pre_uid43_fpLogE1pxTest_b;
                WHEN OTHERS => expB_uid76_fpLogE1pxTest_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist14_expB_uid76_fpLogE1pxTest_q_8(DELAY,580)
    redist14_expB_uid76_fpLogE1pxTest_q_8 : dspba_delay
    GENERIC MAP ( width => 8, depth => 7, reset_kind => "ASYNC" )
    PORT MAP ( xin => expB_uid76_fpLogE1pxTest_q, xout => redist14_expB_uid76_fpLogE1pxTest_q_8_q, clk => clk, aclr => areset );

    -- e_uid81_fpLogE1pxTest(SUB,80)@9
    e_uid81_fpLogE1pxTest_a <= STD_LOGIC_VECTOR("0" & redist14_expB_uid76_fpLogE1pxTest_q_8_q);
    e_uid81_fpLogE1pxTest_b <= STD_LOGIC_VECTOR("0" & cstBias_uid9_fpLogE1pxTest_q);
    e_uid81_fpLogE1pxTest_o <= STD_LOGIC_VECTOR(UNSIGNED(e_uid81_fpLogE1pxTest_a) - UNSIGNED(e_uid81_fpLogE1pxTest_b));
    e_uid81_fpLogE1pxTest_q <= e_uid81_fpLogE1pxTest_o(8 downto 0);

    -- xv0_uid188_eLn2_uid82_fpLogE1pxTest(BITSELECT,187)@9
    xv0_uid188_eLn2_uid82_fpLogE1pxTest_in <= e_uid81_fpLogE1pxTest_q(3 downto 0);
    xv0_uid188_eLn2_uid82_fpLogE1pxTest_b <= xv0_uid188_eLn2_uid82_fpLogE1pxTest_in(3 downto 0);

    -- p0_uid193_eLn2_uid82_fpLogE1pxTest(LOOKUP,192)@9
    p0_uid193_eLn2_uid82_fpLogE1pxTest_combproc: PROCESS (xv0_uid188_eLn2_uid82_fpLogE1pxTest_b)
    BEGIN
        -- Begin reserved scope level
        CASE (xv0_uid188_eLn2_uid82_fpLogE1pxTest_b) IS
            WHEN "0000" => p0_uid193_eLn2_uid82_fpLogE1pxTest_q <= "000000000000000000000000000000000";
            WHEN "0001" => p0_uid193_eLn2_uid82_fpLogE1pxTest_q <= "000010110001011100100001100000000";
            WHEN "0010" => p0_uid193_eLn2_uid82_fpLogE1pxTest_q <= "000101100010111001000011000000000";
            WHEN "0011" => p0_uid193_eLn2_uid82_fpLogE1pxTest_q <= "001000010100010101100100100000000";
            WHEN "0100" => p0_uid193_eLn2_uid82_fpLogE1pxTest_q <= "001011000101110010000110000000000";
            WHEN "0101" => p0_uid193_eLn2_uid82_fpLogE1pxTest_q <= "001101110111001110100111100000000";
            WHEN "0110" => p0_uid193_eLn2_uid82_fpLogE1pxTest_q <= "010000101000101011001001000000000";
            WHEN "0111" => p0_uid193_eLn2_uid82_fpLogE1pxTest_q <= "010011011010000111101010100000000";
            WHEN "1000" => p0_uid193_eLn2_uid82_fpLogE1pxTest_q <= "010110001011100100001100000000000";
            WHEN "1001" => p0_uid193_eLn2_uid82_fpLogE1pxTest_q <= "011000111101000000101101100000000";
            WHEN "1010" => p0_uid193_eLn2_uid82_fpLogE1pxTest_q <= "011011101110011101001111000000000";
            WHEN "1011" => p0_uid193_eLn2_uid82_fpLogE1pxTest_q <= "011110011111111001110000100000000";
            WHEN "1100" => p0_uid193_eLn2_uid82_fpLogE1pxTest_q <= "100001010001010110010010000000000";
            WHEN "1101" => p0_uid193_eLn2_uid82_fpLogE1pxTest_q <= "100100000010110010110011100000000";
            WHEN "1110" => p0_uid193_eLn2_uid82_fpLogE1pxTest_q <= "100110110100001111010101000000000";
            WHEN "1111" => p0_uid193_eLn2_uid82_fpLogE1pxTest_q <= "101001100101101011110110100000000";
            WHEN OTHERS => -- unreachable
                           p0_uid193_eLn2_uid82_fpLogE1pxTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- xv1_uid189_eLn2_uid82_fpLogE1pxTest(BITSELECT,188)@9
    xv1_uid189_eLn2_uid82_fpLogE1pxTest_in <= e_uid81_fpLogE1pxTest_q(7 downto 0);
    xv1_uid189_eLn2_uid82_fpLogE1pxTest_b <= xv1_uid189_eLn2_uid82_fpLogE1pxTest_in(7 downto 4);

    -- p1_uid192_eLn2_uid82_fpLogE1pxTest(LOOKUP,191)@9
    p1_uid192_eLn2_uid82_fpLogE1pxTest_combproc: PROCESS (xv1_uid189_eLn2_uid82_fpLogE1pxTest_b)
    BEGIN
        -- Begin reserved scope level
        CASE (xv1_uid189_eLn2_uid82_fpLogE1pxTest_b) IS
            WHEN "0000" => p1_uid192_eLn2_uid82_fpLogE1pxTest_q <= "0000000000000000000000000000000000000";
            WHEN "0001" => p1_uid192_eLn2_uid82_fpLogE1pxTest_q <= "0000101100010111001000011000000000000";
            WHEN "0010" => p1_uid192_eLn2_uid82_fpLogE1pxTest_q <= "0001011000101110010000110000000000000";
            WHEN "0011" => p1_uid192_eLn2_uid82_fpLogE1pxTest_q <= "0010000101000101011001001000000000000";
            WHEN "0100" => p1_uid192_eLn2_uid82_fpLogE1pxTest_q <= "0010110001011100100001100000000000000";
            WHEN "0101" => p1_uid192_eLn2_uid82_fpLogE1pxTest_q <= "0011011101110011101001111000000000000";
            WHEN "0110" => p1_uid192_eLn2_uid82_fpLogE1pxTest_q <= "0100001010001010110010010000000000000";
            WHEN "0111" => p1_uid192_eLn2_uid82_fpLogE1pxTest_q <= "0100110110100001111010101000000000000";
            WHEN "1000" => p1_uid192_eLn2_uid82_fpLogE1pxTest_q <= "0101100010111001000011000000000000000";
            WHEN "1001" => p1_uid192_eLn2_uid82_fpLogE1pxTest_q <= "0110001111010000001011011000000000000";
            WHEN "1010" => p1_uid192_eLn2_uid82_fpLogE1pxTest_q <= "0110111011100111010011110000000000000";
            WHEN "1011" => p1_uid192_eLn2_uid82_fpLogE1pxTest_q <= "0111100111111110011100001000000000000";
            WHEN "1100" => p1_uid192_eLn2_uid82_fpLogE1pxTest_q <= "1000010100010101100100100000000000000";
            WHEN "1101" => p1_uid192_eLn2_uid82_fpLogE1pxTest_q <= "1001000000101100101100111000000000000";
            WHEN "1110" => p1_uid192_eLn2_uid82_fpLogE1pxTest_q <= "1001101101000011110101010000000000000";
            WHEN "1111" => p1_uid192_eLn2_uid82_fpLogE1pxTest_q <= "1010011001011010111101101000000000000";
            WHEN OTHERS => -- unreachable
                           p1_uid192_eLn2_uid82_fpLogE1pxTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- highBBits_uid195_eLn2_uid82_fpLogE1pxTest(BITSELECT,194)@9
    highBBits_uid195_eLn2_uid82_fpLogE1pxTest_in <= p1_uid192_eLn2_uid82_fpLogE1pxTest_q;
    highBBits_uid195_eLn2_uid82_fpLogE1pxTest_b <= highBBits_uid195_eLn2_uid82_fpLogE1pxTest_in(36 downto 1);

    -- xv2_uid190_eLn2_uid82_fpLogE1pxTest(BITSELECT,189)@9
    xv2_uid190_eLn2_uid82_fpLogE1pxTest_in <= STD_LOGIC_VECTOR(e_uid81_fpLogE1pxTest_q);
    xv2_uid190_eLn2_uid82_fpLogE1pxTest_b <= STD_LOGIC_VECTOR(xv2_uid190_eLn2_uid82_fpLogE1pxTest_in(8 downto 8));

    -- p2_uid191_eLn2_uid82_fpLogE1pxTest(LOOKUP,190)@9
    p2_uid191_eLn2_uid82_fpLogE1pxTest_combproc: PROCESS (xv2_uid190_eLn2_uid82_fpLogE1pxTest_b)
    BEGIN
        -- Begin reserved scope level
        CASE (xv2_uid190_eLn2_uid82_fpLogE1pxTest_b) IS
            WHEN "0" => p2_uid191_eLn2_uid82_fpLogE1pxTest_q <= "00000000000000000000000000000000000010";
            WHEN "1" => p2_uid191_eLn2_uid82_fpLogE1pxTest_q <= "11010011101000110111101000000000000010";
            WHEN OTHERS => -- unreachable
                           p2_uid191_eLn2_uid82_fpLogE1pxTest_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- lev1_a0sumAHighB_uid196_eLn2_uid82_fpLogE1pxTest(ADD,195)@9
    lev1_a0sumAHighB_uid196_eLn2_uid82_fpLogE1pxTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 38 => p2_uid191_eLn2_uid82_fpLogE1pxTest_q(37)) & p2_uid191_eLn2_uid82_fpLogE1pxTest_q));
    lev1_a0sumAHighB_uid196_eLn2_uid82_fpLogE1pxTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "000" & highBBits_uid195_eLn2_uid82_fpLogE1pxTest_b));
    lev1_a0sumAHighB_uid196_eLn2_uid82_fpLogE1pxTest_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a0sumAHighB_uid196_eLn2_uid82_fpLogE1pxTest_a) + SIGNED(lev1_a0sumAHighB_uid196_eLn2_uid82_fpLogE1pxTest_b));
    lev1_a0sumAHighB_uid196_eLn2_uid82_fpLogE1pxTest_q <= lev1_a0sumAHighB_uid196_eLn2_uid82_fpLogE1pxTest_o(38 downto 0);

    -- lowRangeB_uid194_eLn2_uid82_fpLogE1pxTest(BITSELECT,193)@9
    lowRangeB_uid194_eLn2_uid82_fpLogE1pxTest_in <= p1_uid192_eLn2_uid82_fpLogE1pxTest_q(0 downto 0);
    lowRangeB_uid194_eLn2_uid82_fpLogE1pxTest_b <= lowRangeB_uid194_eLn2_uid82_fpLogE1pxTest_in(0 downto 0);

    -- lev1_a0_uid197_eLn2_uid82_fpLogE1pxTest(BITJOIN,196)@9
    lev1_a0_uid197_eLn2_uid82_fpLogE1pxTest_q <= lev1_a0sumAHighB_uid196_eLn2_uid82_fpLogE1pxTest_q & lowRangeB_uid194_eLn2_uid82_fpLogE1pxTest_b;

    -- lev2_a0_uid198_eLn2_uid82_fpLogE1pxTest(ADD,197)@9
    lev2_a0_uid198_eLn2_uid82_fpLogE1pxTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((41 downto 40 => lev1_a0_uid197_eLn2_uid82_fpLogE1pxTest_q(39)) & lev1_a0_uid197_eLn2_uid82_fpLogE1pxTest_q));
    lev2_a0_uid198_eLn2_uid82_fpLogE1pxTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0" & "00000000" & p0_uid193_eLn2_uid82_fpLogE1pxTest_q));
    lev2_a0_uid198_eLn2_uid82_fpLogE1pxTest_o <= STD_LOGIC_VECTOR(SIGNED(lev2_a0_uid198_eLn2_uid82_fpLogE1pxTest_a) + SIGNED(lev2_a0_uid198_eLn2_uid82_fpLogE1pxTest_b));
    lev2_a0_uid198_eLn2_uid82_fpLogE1pxTest_q <= lev2_a0_uid198_eLn2_uid82_fpLogE1pxTest_o(40 downto 0);

    -- sR_uid208_eLn2_uid82_fpLogE1pxTest(BITSELECT,207)@9
    sR_uid208_eLn2_uid82_fpLogE1pxTest_in <= STD_LOGIC_VECTOR(lev2_a0_uid198_eLn2_uid82_fpLogE1pxTest_q(37 downto 0));
    sR_uid208_eLn2_uid82_fpLogE1pxTest_b <= STD_LOGIC_VECTOR(sR_uid208_eLn2_uid82_fpLogE1pxTest_in(37 downto 3));

    -- updatedX_uid202_eLn2_uid82_fpLogE1pxTest(BITJOIN,201)@9
    updatedX_uid202_eLn2_uid82_fpLogE1pxTest_q <= maxValInOutFormat_uid199_eLn2_uid82_fpLogE1pxTest_q & paddingX_uid201_eLn2_uid82_fpLogE1pxTest_q;

    -- ovf_uid201_eLn2_uid82_fpLogE1pxTest(COMPARE,202)@9
    ovf_uid201_eLn2_uid82_fpLogE1pxTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 38 => updatedX_uid202_eLn2_uid82_fpLogE1pxTest_q(37)) & updatedX_uid202_eLn2_uid82_fpLogE1pxTest_q));
    ovf_uid201_eLn2_uid82_fpLogE1pxTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 41 => lev2_a0_uid198_eLn2_uid82_fpLogE1pxTest_q(40)) & lev2_a0_uid198_eLn2_uid82_fpLogE1pxTest_q));
    ovf_uid201_eLn2_uid82_fpLogE1pxTest_o <= STD_LOGIC_VECTOR(SIGNED(ovf_uid201_eLn2_uid82_fpLogE1pxTest_a) - SIGNED(ovf_uid201_eLn2_uid82_fpLogE1pxTest_b));
    ovf_uid201_eLn2_uid82_fpLogE1pxTest_c(0) <= ovf_uid201_eLn2_uid82_fpLogE1pxTest_o(42);

    -- updatedY_uid205_eLn2_uid82_fpLogE1pxTest(BITJOIN,204)@9
    updatedY_uid205_eLn2_uid82_fpLogE1pxTest_q <= minValueInFormat_uid200_eLn2_uid82_fpLogE1pxTest_q & paddingX_uid201_eLn2_uid82_fpLogE1pxTest_q;

    -- udf_uid204_eLn2_uid82_fpLogE1pxTest(COMPARE,205)@9
    udf_uid204_eLn2_uid82_fpLogE1pxTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 41 => lev2_a0_uid198_eLn2_uid82_fpLogE1pxTest_q(40)) & lev2_a0_uid198_eLn2_uid82_fpLogE1pxTest_q));
    udf_uid204_eLn2_uid82_fpLogE1pxTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 38 => updatedY_uid205_eLn2_uid82_fpLogE1pxTest_q(37)) & updatedY_uid205_eLn2_uid82_fpLogE1pxTest_q));
    udf_uid204_eLn2_uid82_fpLogE1pxTest_o <= STD_LOGIC_VECTOR(SIGNED(udf_uid204_eLn2_uid82_fpLogE1pxTest_a) - SIGNED(udf_uid204_eLn2_uid82_fpLogE1pxTest_b));
    udf_uid204_eLn2_uid82_fpLogE1pxTest_c(0) <= udf_uid204_eLn2_uid82_fpLogE1pxTest_o(42);

    -- ovfudfcond_uid207_eLn2_uid82_fpLogE1pxTest(BITJOIN,206)@9
    ovfudfcond_uid207_eLn2_uid82_fpLogE1pxTest_q <= ovf_uid201_eLn2_uid82_fpLogE1pxTest_c & udf_uid204_eLn2_uid82_fpLogE1pxTest_c;

    -- sRA0_uid209_eLn2_uid82_fpLogE1pxTest(MUX,208)@9
    sRA0_uid209_eLn2_uid82_fpLogE1pxTest_s <= ovfudfcond_uid207_eLn2_uid82_fpLogE1pxTest_q;
    sRA0_uid209_eLn2_uid82_fpLogE1pxTest_combproc: PROCESS (sRA0_uid209_eLn2_uid82_fpLogE1pxTest_s, sR_uid208_eLn2_uid82_fpLogE1pxTest_b, minValueInFormat_uid200_eLn2_uid82_fpLogE1pxTest_q, maxValInOutFormat_uid199_eLn2_uid82_fpLogE1pxTest_q)
    BEGIN
        CASE (sRA0_uid209_eLn2_uid82_fpLogE1pxTest_s) IS
            WHEN "00" => sRA0_uid209_eLn2_uid82_fpLogE1pxTest_q <= sR_uid208_eLn2_uid82_fpLogE1pxTest_b;
            WHEN "01" => sRA0_uid209_eLn2_uid82_fpLogE1pxTest_q <= minValueInFormat_uid200_eLn2_uid82_fpLogE1pxTest_q;
            WHEN "10" => sRA0_uid209_eLn2_uid82_fpLogE1pxTest_q <= maxValInOutFormat_uid199_eLn2_uid82_fpLogE1pxTest_q;
            WHEN "11" => sRA0_uid209_eLn2_uid82_fpLogE1pxTest_q <= maxValInOutFormat_uid199_eLn2_uid82_fpLogE1pxTest_q;
            WHEN OTHERS => sRA0_uid209_eLn2_uid82_fpLogE1pxTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- finalSumsumAHighB_uid108_fpLogE1pxTest(ADD,107)@9 + 1
    finalSumsumAHighB_uid108_fpLogE1pxTest_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 35 => sRA0_uid209_eLn2_uid82_fpLogE1pxTest_q(34)) & sRA0_uid209_eLn2_uid82_fpLogE1pxTest_q));
    finalSumsumAHighB_uid108_fpLogE1pxTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 29 => highBBits_uid107_fpLogE1pxTest_b(28)) & highBBits_uid107_fpLogE1pxTest_b));
    finalSumsumAHighB_uid108_fpLogE1pxTest_i <= finalSumsumAHighB_uid108_fpLogE1pxTest_b;
    finalSumsumAHighB_uid108_fpLogE1pxTest_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            finalSumsumAHighB_uid108_fpLogE1pxTest_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist7_branch3OrC_uid91_fpLogE1pxTest_q_8_q = "1") THEN
                finalSumsumAHighB_uid108_fpLogE1pxTest_o <= finalSumsumAHighB_uid108_fpLogE1pxTest_i;
            ELSE
                finalSumsumAHighB_uid108_fpLogE1pxTest_o <= STD_LOGIC_VECTOR(SIGNED(finalSumsumAHighB_uid108_fpLogE1pxTest_a) + SIGNED(finalSumsumAHighB_uid108_fpLogE1pxTest_b));
            END IF;
        END IF;
    END PROCESS;
    finalSumsumAHighB_uid108_fpLogE1pxTest_q <= finalSumsumAHighB_uid108_fpLogE1pxTest_o(35 downto 0);

    -- lowRangeB_uid106_fpLogE1pxTest(BITSELECT,105)@9
    lowRangeB_uid106_fpLogE1pxTest_in <= postPEMul_uid103_fpLogE1pxTest_result_add_1_0_q(21 downto 0);
    lowRangeB_uid106_fpLogE1pxTest_b <= lowRangeB_uid106_fpLogE1pxTest_in(21 downto 0);

    -- redist4_lowRangeB_uid106_fpLogE1pxTest_b_1(DELAY,570)
    redist4_lowRangeB_uid106_fpLogE1pxTest_b_1 : dspba_delay
    GENERIC MAP ( width => 22, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => lowRangeB_uid106_fpLogE1pxTest_b, xout => redist4_lowRangeB_uid106_fpLogE1pxTest_b_1_q, clk => clk, aclr => areset );

    -- finalSum_uid109_fpLogE1pxTest(BITJOIN,108)@10
    finalSum_uid109_fpLogE1pxTest_q <= finalSumsumAHighB_uid108_fpLogE1pxTest_q & redist4_lowRangeB_uid106_fpLogE1pxTest_b_1_q;

    -- msbUFinalSum_uid110_fpLogE1pxTest(BITSELECT,109)@10
    msbUFinalSum_uid110_fpLogE1pxTest_in <= STD_LOGIC_VECTOR(finalSum_uid109_fpLogE1pxTest_q);
    msbUFinalSum_uid110_fpLogE1pxTest_b <= STD_LOGIC_VECTOR(msbUFinalSum_uid110_fpLogE1pxTest_in(57 downto 57));

    -- finalSumOneComp_uid112_fpLogE1pxTest(LOGICAL,111)@10
    finalSumOneComp_uid112_fpLogE1pxTest_a <= STD_LOGIC_VECTOR(finalSum_uid109_fpLogE1pxTest_q);
    finalSumOneComp_uid112_fpLogE1pxTest_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((57 downto 1 => msbUFinalSum_uid110_fpLogE1pxTest_b(0)) & msbUFinalSum_uid110_fpLogE1pxTest_b));
    finalSumOneComp_uid112_fpLogE1pxTest_q <= finalSumOneComp_uid112_fpLogE1pxTest_a xor finalSumOneComp_uid112_fpLogE1pxTest_b;

    -- finalSumAbs_uid113_fpLogE1pxTest(ADD,112)@10
    finalSumAbs_uid113_fpLogE1pxTest_a <= STD_LOGIC_VECTOR("0" & finalSumOneComp_uid112_fpLogE1pxTest_q);
    finalSumAbs_uid113_fpLogE1pxTest_b <= STD_LOGIC_VECTOR("0000000000000000000000000000000000000000000000000000000000" & msbUFinalSum_uid110_fpLogE1pxTest_b);
    finalSumAbs_uid113_fpLogE1pxTest_o <= STD_LOGIC_VECTOR(UNSIGNED(finalSumAbs_uid113_fpLogE1pxTest_a) + UNSIGNED(finalSumAbs_uid113_fpLogE1pxTest_b));
    finalSumAbs_uid113_fpLogE1pxTest_q <= finalSumAbs_uid113_fpLogE1pxTest_o(58 downto 0);

    -- rVStage_uid261_countZ_uid114_fpLogE1pxTest(BITSELECT,260)@10
    rVStage_uid261_countZ_uid114_fpLogE1pxTest_in <= finalSumAbs_uid113_fpLogE1pxTest_q;
    rVStage_uid261_countZ_uid114_fpLogE1pxTest_b <= rVStage_uid261_countZ_uid114_fpLogE1pxTest_in(58 downto 27);

    -- vCount_uid262_countZ_uid114_fpLogE1pxTest(LOGICAL,261)@10
    vCount_uid262_countZ_uid114_fpLogE1pxTest_a <= rVStage_uid261_countZ_uid114_fpLogE1pxTest_b;
    vCount_uid262_countZ_uid114_fpLogE1pxTest_b <= zs_uid260_countZ_uid114_fpLogE1pxTest_q;
    vCount_uid262_countZ_uid114_fpLogE1pxTest_q <= "1" WHEN vCount_uid262_countZ_uid114_fpLogE1pxTest_a = vCount_uid262_countZ_uid114_fpLogE1pxTest_b ELSE "0";

    -- vStage_uid264_countZ_uid114_fpLogE1pxTest(BITSELECT,263)@10
    vStage_uid264_countZ_uid114_fpLogE1pxTest_in <= finalSumAbs_uid113_fpLogE1pxTest_q(26 downto 0);
    vStage_uid264_countZ_uid114_fpLogE1pxTest_b <= vStage_uid264_countZ_uid114_fpLogE1pxTest_in(26 downto 0);

    -- mO_uid263_countZ_uid114_fpLogE1pxTest(CONSTANT,262)
    mO_uid263_countZ_uid114_fpLogE1pxTest_q <= "11111";

    -- cStage_uid265_countZ_uid114_fpLogE1pxTest(BITJOIN,264)@10
    cStage_uid265_countZ_uid114_fpLogE1pxTest_q <= vStage_uid264_countZ_uid114_fpLogE1pxTest_b & mO_uid263_countZ_uid114_fpLogE1pxTest_q;

    -- vStagei_uid267_countZ_uid114_fpLogE1pxTest(MUX,266)@10
    vStagei_uid267_countZ_uid114_fpLogE1pxTest_s <= vCount_uid262_countZ_uid114_fpLogE1pxTest_q;
    vStagei_uid267_countZ_uid114_fpLogE1pxTest_combproc: PROCESS (vStagei_uid267_countZ_uid114_fpLogE1pxTest_s, rVStage_uid261_countZ_uid114_fpLogE1pxTest_b, cStage_uid265_countZ_uid114_fpLogE1pxTest_q)
    BEGIN
        CASE (vStagei_uid267_countZ_uid114_fpLogE1pxTest_s) IS
            WHEN "0" => vStagei_uid267_countZ_uid114_fpLogE1pxTest_q <= rVStage_uid261_countZ_uid114_fpLogE1pxTest_b;
            WHEN "1" => vStagei_uid267_countZ_uid114_fpLogE1pxTest_q <= cStage_uid265_countZ_uid114_fpLogE1pxTest_q;
            WHEN OTHERS => vStagei_uid267_countZ_uid114_fpLogE1pxTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid269_countZ_uid114_fpLogE1pxTest(BITSELECT,268)@10
    rVStage_uid269_countZ_uid114_fpLogE1pxTest_in <= vStagei_uid267_countZ_uid114_fpLogE1pxTest_q;
    rVStage_uid269_countZ_uid114_fpLogE1pxTest_b <= rVStage_uid269_countZ_uid114_fpLogE1pxTest_in(31 downto 16);

    -- vCount_uid270_countZ_uid114_fpLogE1pxTest(LOGICAL,269)@10
    vCount_uid270_countZ_uid114_fpLogE1pxTest_a <= rVStage_uid269_countZ_uid114_fpLogE1pxTest_b;
    vCount_uid270_countZ_uid114_fpLogE1pxTest_b <= zs_uid157_leadingZeros_uid41_fpLogE1pxTest_q;
    vCount_uid270_countZ_uid114_fpLogE1pxTest_q <= "1" WHEN vCount_uid270_countZ_uid114_fpLogE1pxTest_a = vCount_uid270_countZ_uid114_fpLogE1pxTest_b ELSE "0";

    -- vStage_uid271_countZ_uid114_fpLogE1pxTest(BITSELECT,270)@10
    vStage_uid271_countZ_uid114_fpLogE1pxTest_in <= vStagei_uid267_countZ_uid114_fpLogE1pxTest_q(15 downto 0);
    vStage_uid271_countZ_uid114_fpLogE1pxTest_b <= vStage_uid271_countZ_uid114_fpLogE1pxTest_in(15 downto 0);

    -- vStagei_uid273_countZ_uid114_fpLogE1pxTest(MUX,272)@10
    vStagei_uid273_countZ_uid114_fpLogE1pxTest_s <= vCount_uid270_countZ_uid114_fpLogE1pxTest_q;
    vStagei_uid273_countZ_uid114_fpLogE1pxTest_combproc: PROCESS (vStagei_uid273_countZ_uid114_fpLogE1pxTest_s, rVStage_uid269_countZ_uid114_fpLogE1pxTest_b, vStage_uid271_countZ_uid114_fpLogE1pxTest_b)
    BEGIN
        CASE (vStagei_uid273_countZ_uid114_fpLogE1pxTest_s) IS
            WHEN "0" => vStagei_uid273_countZ_uid114_fpLogE1pxTest_q <= rVStage_uid269_countZ_uid114_fpLogE1pxTest_b;
            WHEN "1" => vStagei_uid273_countZ_uid114_fpLogE1pxTest_q <= vStage_uid271_countZ_uid114_fpLogE1pxTest_b;
            WHEN OTHERS => vStagei_uid273_countZ_uid114_fpLogE1pxTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid275_countZ_uid114_fpLogE1pxTest(BITSELECT,274)@10
    rVStage_uid275_countZ_uid114_fpLogE1pxTest_in <= vStagei_uid273_countZ_uid114_fpLogE1pxTest_q;
    rVStage_uid275_countZ_uid114_fpLogE1pxTest_b <= rVStage_uid275_countZ_uid114_fpLogE1pxTest_in(15 downto 8);

    -- vCount_uid276_countZ_uid114_fpLogE1pxTest(LOGICAL,275)@10
    vCount_uid276_countZ_uid114_fpLogE1pxTest_a <= rVStage_uid275_countZ_uid114_fpLogE1pxTest_b;
    vCount_uid276_countZ_uid114_fpLogE1pxTest_b <= cstAllZWE_uid16_fpLogE1pxTest_q;
    vCount_uid276_countZ_uid114_fpLogE1pxTest_q <= "1" WHEN vCount_uid276_countZ_uid114_fpLogE1pxTest_a = vCount_uid276_countZ_uid114_fpLogE1pxTest_b ELSE "0";

    -- vStage_uid277_countZ_uid114_fpLogE1pxTest(BITSELECT,276)@10
    vStage_uid277_countZ_uid114_fpLogE1pxTest_in <= vStagei_uid273_countZ_uid114_fpLogE1pxTest_q(7 downto 0);
    vStage_uid277_countZ_uid114_fpLogE1pxTest_b <= vStage_uid277_countZ_uid114_fpLogE1pxTest_in(7 downto 0);

    -- vStagei_uid279_countZ_uid114_fpLogE1pxTest(MUX,278)@10
    vStagei_uid279_countZ_uid114_fpLogE1pxTest_s <= vCount_uid276_countZ_uid114_fpLogE1pxTest_q;
    vStagei_uid279_countZ_uid114_fpLogE1pxTest_combproc: PROCESS (vStagei_uid279_countZ_uid114_fpLogE1pxTest_s, rVStage_uid275_countZ_uid114_fpLogE1pxTest_b, vStage_uid277_countZ_uid114_fpLogE1pxTest_b)
    BEGIN
        CASE (vStagei_uid279_countZ_uid114_fpLogE1pxTest_s) IS
            WHEN "0" => vStagei_uid279_countZ_uid114_fpLogE1pxTest_q <= rVStage_uid275_countZ_uid114_fpLogE1pxTest_b;
            WHEN "1" => vStagei_uid279_countZ_uid114_fpLogE1pxTest_q <= vStage_uid277_countZ_uid114_fpLogE1pxTest_b;
            WHEN OTHERS => vStagei_uid279_countZ_uid114_fpLogE1pxTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid281_countZ_uid114_fpLogE1pxTest(BITSELECT,280)@10
    rVStage_uid281_countZ_uid114_fpLogE1pxTest_in <= vStagei_uid279_countZ_uid114_fpLogE1pxTest_q;
    rVStage_uid281_countZ_uid114_fpLogE1pxTest_b <= rVStage_uid281_countZ_uid114_fpLogE1pxTest_in(7 downto 4);

    -- vCount_uid282_countZ_uid114_fpLogE1pxTest(LOGICAL,281)@10
    vCount_uid282_countZ_uid114_fpLogE1pxTest_a <= rVStage_uid281_countZ_uid114_fpLogE1pxTest_b;
    vCount_uid282_countZ_uid114_fpLogE1pxTest_b <= zs_uid171_leadingZeros_uid41_fpLogE1pxTest_q;
    vCount_uid282_countZ_uid114_fpLogE1pxTest_q <= "1" WHEN vCount_uid282_countZ_uid114_fpLogE1pxTest_a = vCount_uid282_countZ_uid114_fpLogE1pxTest_b ELSE "0";

    -- vStage_uid283_countZ_uid114_fpLogE1pxTest(BITSELECT,282)@10
    vStage_uid283_countZ_uid114_fpLogE1pxTest_in <= vStagei_uid279_countZ_uid114_fpLogE1pxTest_q(3 downto 0);
    vStage_uid283_countZ_uid114_fpLogE1pxTest_b <= vStage_uid283_countZ_uid114_fpLogE1pxTest_in(3 downto 0);

    -- vStagei_uid285_countZ_uid114_fpLogE1pxTest(MUX,284)@10
    vStagei_uid285_countZ_uid114_fpLogE1pxTest_s <= vCount_uid282_countZ_uid114_fpLogE1pxTest_q;
    vStagei_uid285_countZ_uid114_fpLogE1pxTest_combproc: PROCESS (vStagei_uid285_countZ_uid114_fpLogE1pxTest_s, rVStage_uid281_countZ_uid114_fpLogE1pxTest_b, vStage_uid283_countZ_uid114_fpLogE1pxTest_b)
    BEGIN
        CASE (vStagei_uid285_countZ_uid114_fpLogE1pxTest_s) IS
            WHEN "0" => vStagei_uid285_countZ_uid114_fpLogE1pxTest_q <= rVStage_uid281_countZ_uid114_fpLogE1pxTest_b;
            WHEN "1" => vStagei_uid285_countZ_uid114_fpLogE1pxTest_q <= vStage_uid283_countZ_uid114_fpLogE1pxTest_b;
            WHEN OTHERS => vStagei_uid285_countZ_uid114_fpLogE1pxTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid287_countZ_uid114_fpLogE1pxTest(BITSELECT,286)@10
    rVStage_uid287_countZ_uid114_fpLogE1pxTest_in <= vStagei_uid285_countZ_uid114_fpLogE1pxTest_q;
    rVStage_uid287_countZ_uid114_fpLogE1pxTest_b <= rVStage_uid287_countZ_uid114_fpLogE1pxTest_in(3 downto 2);

    -- vCount_uid288_countZ_uid114_fpLogE1pxTest(LOGICAL,287)@10
    vCount_uid288_countZ_uid114_fpLogE1pxTest_a <= rVStage_uid287_countZ_uid114_fpLogE1pxTest_b;
    vCount_uid288_countZ_uid114_fpLogE1pxTest_b <= z2_uid99_fpLogE1pxTest_q;
    vCount_uid288_countZ_uid114_fpLogE1pxTest_q <= "1" WHEN vCount_uid288_countZ_uid114_fpLogE1pxTest_a = vCount_uid288_countZ_uid114_fpLogE1pxTest_b ELSE "0";

    -- vStage_uid289_countZ_uid114_fpLogE1pxTest(BITSELECT,288)@10
    vStage_uid289_countZ_uid114_fpLogE1pxTest_in <= vStagei_uid285_countZ_uid114_fpLogE1pxTest_q(1 downto 0);
    vStage_uid289_countZ_uid114_fpLogE1pxTest_b <= vStage_uid289_countZ_uid114_fpLogE1pxTest_in(1 downto 0);

    -- vStagei_uid291_countZ_uid114_fpLogE1pxTest(MUX,290)@10
    vStagei_uid291_countZ_uid114_fpLogE1pxTest_s <= vCount_uid288_countZ_uid114_fpLogE1pxTest_q;
    vStagei_uid291_countZ_uid114_fpLogE1pxTest_combproc: PROCESS (vStagei_uid291_countZ_uid114_fpLogE1pxTest_s, rVStage_uid287_countZ_uid114_fpLogE1pxTest_b, vStage_uid289_countZ_uid114_fpLogE1pxTest_b)
    BEGIN
        CASE (vStagei_uid291_countZ_uid114_fpLogE1pxTest_s) IS
            WHEN "0" => vStagei_uid291_countZ_uid114_fpLogE1pxTest_q <= rVStage_uid287_countZ_uid114_fpLogE1pxTest_b;
            WHEN "1" => vStagei_uid291_countZ_uid114_fpLogE1pxTest_q <= vStage_uid289_countZ_uid114_fpLogE1pxTest_b;
            WHEN OTHERS => vStagei_uid291_countZ_uid114_fpLogE1pxTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid293_countZ_uid114_fpLogE1pxTest(BITSELECT,292)@10
    rVStage_uid293_countZ_uid114_fpLogE1pxTest_in <= vStagei_uid291_countZ_uid114_fpLogE1pxTest_q;
    rVStage_uid293_countZ_uid114_fpLogE1pxTest_b <= rVStage_uid293_countZ_uid114_fpLogE1pxTest_in(1 downto 1);

    -- vCount_uid294_countZ_uid114_fpLogE1pxTest(LOGICAL,293)@10
    vCount_uid294_countZ_uid114_fpLogE1pxTest_a <= rVStage_uid293_countZ_uid114_fpLogE1pxTest_b;
    vCount_uid294_countZ_uid114_fpLogE1pxTest_b <= GND_q;
    vCount_uid294_countZ_uid114_fpLogE1pxTest_q <= "1" WHEN vCount_uid294_countZ_uid114_fpLogE1pxTest_a = vCount_uid294_countZ_uid114_fpLogE1pxTest_b ELSE "0";

    -- r_uid295_countZ_uid114_fpLogE1pxTest(BITJOIN,294)@10
    r_uid295_countZ_uid114_fpLogE1pxTest_q <= vCount_uid262_countZ_uid114_fpLogE1pxTest_q & vCount_uid270_countZ_uid114_fpLogE1pxTest_q & vCount_uid276_countZ_uid114_fpLogE1pxTest_q & vCount_uid282_countZ_uid114_fpLogE1pxTest_q & vCount_uid288_countZ_uid114_fpLogE1pxTest_q & vCount_uid294_countZ_uid114_fpLogE1pxTest_q;

    -- redist0_r_uid295_countZ_uid114_fpLogE1pxTest_q_1(DELAY,566)
    redist0_r_uid295_countZ_uid114_fpLogE1pxTest_q_1 : dspba_delay
    GENERIC MAP ( width => 6, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => r_uid295_countZ_uid114_fpLogE1pxTest_q, xout => redist0_r_uid295_countZ_uid114_fpLogE1pxTest_q_1_q, clk => clk, aclr => areset );

    -- cstMSBFinalSumPBias_uid116_fpLogE1pxTest(CONSTANT,115)
    cstMSBFinalSumPBias_uid116_fpLogE1pxTest_q <= "010001001";

    -- expRExt0_uid117_fpLogE1pxTest(SUB,116)@11
    expRExt0_uid117_fpLogE1pxTest_a <= STD_LOGIC_VECTOR("0" & cstMSBFinalSumPBias_uid116_fpLogE1pxTest_q);
    expRExt0_uid117_fpLogE1pxTest_b <= STD_LOGIC_VECTOR("0000" & redist0_r_uid295_countZ_uid114_fpLogE1pxTest_q_1_q);
    expRExt0_uid117_fpLogE1pxTest_o <= STD_LOGIC_VECTOR(UNSIGNED(expRExt0_uid117_fpLogE1pxTest_a) - UNSIGNED(expRExt0_uid117_fpLogE1pxTest_b));
    expRExt0_uid117_fpLogE1pxTest_q <= expRExt0_uid117_fpLogE1pxTest_o(9 downto 0);

    -- redist8_branch3OrC_uid91_fpLogE1pxTest_q_10(DELAY,574)
    redist8_branch3OrC_uid91_fpLogE1pxTest_q_10 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist7_branch3OrC_uid91_fpLogE1pxTest_q_8_q, xout => redist8_branch3OrC_uid91_fpLogE1pxTest_q_10_q, clk => clk, aclr => areset );

    -- expRExt_uid121_fpLogE1pxTest(MUX,120)@11
    expRExt_uid121_fpLogE1pxTest_s <= redist8_branch3OrC_uid91_fpLogE1pxTest_q_10_q;
    expRExt_uid121_fpLogE1pxTest_combproc: PROCESS (expRExt_uid121_fpLogE1pxTest_s, expRExt0_uid117_fpLogE1pxTest_q, expRExt1Red_uid120_fpLogE1pxTest_b)
    BEGIN
        CASE (expRExt_uid121_fpLogE1pxTest_s) IS
            WHEN "0" => expRExt_uid121_fpLogE1pxTest_q <= expRExt0_uid117_fpLogE1pxTest_q;
            WHEN "1" => expRExt_uid121_fpLogE1pxTest_q <= expRExt1Red_uid120_fpLogE1pxTest_b;
            WHEN OTHERS => expRExt_uid121_fpLogE1pxTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage0Idx7Rng56_uid514_normVal_uid115_fpLogE1pxTest(BITSELECT,513)@10
    leftShiftStage0Idx7Rng56_uid514_normVal_uid115_fpLogE1pxTest_in <= finalSumAbs_uid113_fpLogE1pxTest_q(2 downto 0);
    leftShiftStage0Idx7Rng56_uid514_normVal_uid115_fpLogE1pxTest_b <= leftShiftStage0Idx7Rng56_uid514_normVal_uid115_fpLogE1pxTest_in(2 downto 0);

    -- leftShiftStage0Idx7Pad56_uid513_normVal_uid115_fpLogE1pxTest(CONSTANT,512)
    leftShiftStage0Idx7Pad56_uid513_normVal_uid115_fpLogE1pxTest_q <= "00000000000000000000000000000000000000000000000000000000";

    -- leftShiftStage0Idx7_uid515_normVal_uid115_fpLogE1pxTest(BITJOIN,514)@10
    leftShiftStage0Idx7_uid515_normVal_uid115_fpLogE1pxTest_q <= leftShiftStage0Idx7Rng56_uid514_normVal_uid115_fpLogE1pxTest_b & leftShiftStage0Idx7Pad56_uid513_normVal_uid115_fpLogE1pxTest_q;

    -- leftShiftStage0Idx6Rng48_uid511_normVal_uid115_fpLogE1pxTest(BITSELECT,510)@10
    leftShiftStage0Idx6Rng48_uid511_normVal_uid115_fpLogE1pxTest_in <= finalSumAbs_uid113_fpLogE1pxTest_q(10 downto 0);
    leftShiftStage0Idx6Rng48_uid511_normVal_uid115_fpLogE1pxTest_b <= leftShiftStage0Idx6Rng48_uid511_normVal_uid115_fpLogE1pxTest_in(10 downto 0);

    -- leftShiftStage0Idx6Pad48_uid510_normVal_uid115_fpLogE1pxTest(CONSTANT,509)
    leftShiftStage0Idx6Pad48_uid510_normVal_uid115_fpLogE1pxTest_q <= "000000000000000000000000000000000000000000000000";

    -- leftShiftStage0Idx6_uid512_normVal_uid115_fpLogE1pxTest(BITJOIN,511)@10
    leftShiftStage0Idx6_uid512_normVal_uid115_fpLogE1pxTest_q <= leftShiftStage0Idx6Rng48_uid511_normVal_uid115_fpLogE1pxTest_b & leftShiftStage0Idx6Pad48_uid510_normVal_uid115_fpLogE1pxTest_q;

    -- leftShiftStage0Idx5Rng40_uid508_normVal_uid115_fpLogE1pxTest(BITSELECT,507)@10
    leftShiftStage0Idx5Rng40_uid508_normVal_uid115_fpLogE1pxTest_in <= finalSumAbs_uid113_fpLogE1pxTest_q(18 downto 0);
    leftShiftStage0Idx5Rng40_uid508_normVal_uid115_fpLogE1pxTest_b <= leftShiftStage0Idx5Rng40_uid508_normVal_uid115_fpLogE1pxTest_in(18 downto 0);

    -- leftShiftStage0Idx5Pad40_uid507_normVal_uid115_fpLogE1pxTest(CONSTANT,506)
    leftShiftStage0Idx5Pad40_uid507_normVal_uid115_fpLogE1pxTest_q <= "0000000000000000000000000000000000000000";

    -- leftShiftStage0Idx5_uid509_normVal_uid115_fpLogE1pxTest(BITJOIN,508)@10
    leftShiftStage0Idx5_uid509_normVal_uid115_fpLogE1pxTest_q <= leftShiftStage0Idx5Rng40_uid508_normVal_uid115_fpLogE1pxTest_b & leftShiftStage0Idx5Pad40_uid507_normVal_uid115_fpLogE1pxTest_q;

    -- leftShiftStage0Idx4_uid506_normVal_uid115_fpLogE1pxTest(BITJOIN,505)@10
    leftShiftStage0Idx4_uid506_normVal_uid115_fpLogE1pxTest_q <= vStage_uid264_countZ_uid114_fpLogE1pxTest_b & zs_uid260_countZ_uid114_fpLogE1pxTest_q;

    -- leftShiftStageSel5Dto3_uid516_normVal_uid115_fpLogE1pxTest(BITSELECT,515)@10
    leftShiftStageSel5Dto3_uid516_normVal_uid115_fpLogE1pxTest_in <= r_uid295_countZ_uid114_fpLogE1pxTest_q;
    leftShiftStageSel5Dto3_uid516_normVal_uid115_fpLogE1pxTest_b <= leftShiftStageSel5Dto3_uid516_normVal_uid115_fpLogE1pxTest_in(5 downto 3);

    -- leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_selLSBs(BITSELECT,556)@10
    leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_selLSBs_in <= leftShiftStageSel5Dto3_uid516_normVal_uid115_fpLogE1pxTest_b(1 downto 0);
    leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_selLSBs_b <= leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_selLSBs_in(1 downto 0);

    -- leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_msplit_1(MUX,559)@10
    leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_msplit_1_s <= leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_selLSBs_b;
    leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_msplit_1_combproc: PROCESS (leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_msplit_1_s, leftShiftStage0Idx4_uid506_normVal_uid115_fpLogE1pxTest_q, leftShiftStage0Idx5_uid509_normVal_uid115_fpLogE1pxTest_q, leftShiftStage0Idx6_uid512_normVal_uid115_fpLogE1pxTest_q, leftShiftStage0Idx7_uid515_normVal_uid115_fpLogE1pxTest_q)
    BEGIN
        CASE (leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_msplit_1_s) IS
            WHEN "00" => leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_msplit_1_q <= leftShiftStage0Idx4_uid506_normVal_uid115_fpLogE1pxTest_q;
            WHEN "01" => leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_msplit_1_q <= leftShiftStage0Idx5_uid509_normVal_uid115_fpLogE1pxTest_q;
            WHEN "10" => leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_msplit_1_q <= leftShiftStage0Idx6_uid512_normVal_uid115_fpLogE1pxTest_q;
            WHEN "11" => leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_msplit_1_q <= leftShiftStage0Idx7_uid515_normVal_uid115_fpLogE1pxTest_q;
            WHEN OTHERS => leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_msplit_1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage0Idx3Rng24_uid502_normVal_uid115_fpLogE1pxTest(BITSELECT,501)@10
    leftShiftStage0Idx3Rng24_uid502_normVal_uid115_fpLogE1pxTest_in <= finalSumAbs_uid113_fpLogE1pxTest_q(34 downto 0);
    leftShiftStage0Idx3Rng24_uid502_normVal_uid115_fpLogE1pxTest_b <= leftShiftStage0Idx3Rng24_uid502_normVal_uid115_fpLogE1pxTest_in(34 downto 0);

    -- leftShiftStage0Idx3_uid503_normVal_uid115_fpLogE1pxTest(BITJOIN,502)@10
    leftShiftStage0Idx3_uid503_normVal_uid115_fpLogE1pxTest_q <= leftShiftStage0Idx3Rng24_uid502_normVal_uid115_fpLogE1pxTest_b & padConst_uid32_fpLogE1pxTest_q;

    -- leftShiftStage0Idx2Rng16_uid499_normVal_uid115_fpLogE1pxTest(BITSELECT,498)@10
    leftShiftStage0Idx2Rng16_uid499_normVal_uid115_fpLogE1pxTest_in <= finalSumAbs_uid113_fpLogE1pxTest_q(42 downto 0);
    leftShiftStage0Idx2Rng16_uid499_normVal_uid115_fpLogE1pxTest_b <= leftShiftStage0Idx2Rng16_uid499_normVal_uid115_fpLogE1pxTest_in(42 downto 0);

    -- leftShiftStage0Idx2_uid500_normVal_uid115_fpLogE1pxTest(BITJOIN,499)@10
    leftShiftStage0Idx2_uid500_normVal_uid115_fpLogE1pxTest_q <= leftShiftStage0Idx2Rng16_uid499_normVal_uid115_fpLogE1pxTest_b & zs_uid157_leadingZeros_uid41_fpLogE1pxTest_q;

    -- leftShiftStage0Idx1Rng8_uid496_normVal_uid115_fpLogE1pxTest(BITSELECT,495)@10
    leftShiftStage0Idx1Rng8_uid496_normVal_uid115_fpLogE1pxTest_in <= finalSumAbs_uid113_fpLogE1pxTest_q(50 downto 0);
    leftShiftStage0Idx1Rng8_uid496_normVal_uid115_fpLogE1pxTest_b <= leftShiftStage0Idx1Rng8_uid496_normVal_uid115_fpLogE1pxTest_in(50 downto 0);

    -- leftShiftStage0Idx1_uid497_normVal_uid115_fpLogE1pxTest(BITJOIN,496)@10
    leftShiftStage0Idx1_uid497_normVal_uid115_fpLogE1pxTest_q <= leftShiftStage0Idx1Rng8_uid496_normVal_uid115_fpLogE1pxTest_b & cstAllZWE_uid16_fpLogE1pxTest_q;

    -- leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_msplit_0(MUX,558)@10
    leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_msplit_0_s <= leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_selLSBs_b;
    leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_msplit_0_combproc: PROCESS (leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_msplit_0_s, finalSumAbs_uid113_fpLogE1pxTest_q, leftShiftStage0Idx1_uid497_normVal_uid115_fpLogE1pxTest_q, leftShiftStage0Idx2_uid500_normVal_uid115_fpLogE1pxTest_q, leftShiftStage0Idx3_uid503_normVal_uid115_fpLogE1pxTest_q)
    BEGIN
        CASE (leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_msplit_0_s) IS
            WHEN "00" => leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_msplit_0_q <= finalSumAbs_uid113_fpLogE1pxTest_q;
            WHEN "01" => leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_msplit_0_q <= leftShiftStage0Idx1_uid497_normVal_uid115_fpLogE1pxTest_q;
            WHEN "10" => leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_msplit_0_q <= leftShiftStage0Idx2_uid500_normVal_uid115_fpLogE1pxTest_q;
            WHEN "11" => leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_msplit_0_q <= leftShiftStage0Idx3_uid503_normVal_uid115_fpLogE1pxTest_q;
            WHEN OTHERS => leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_msplit_0_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_selMSBs(BITSELECT,557)@10
    leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_selMSBs_in <= leftShiftStageSel5Dto3_uid516_normVal_uid115_fpLogE1pxTest_b;
    leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_selMSBs_b <= leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_selMSBs_in(2 downto 2);

    -- leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_mfinal(MUX,560)@10 + 1
    leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_mfinal_s <= leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_selMSBs_b;
    leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_mfinal_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_mfinal_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_mfinal_s) IS
                WHEN "0" => leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_mfinal_q <= leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_msplit_0_q;
                WHEN "1" => leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_mfinal_q <= leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_msplit_1_q;
                WHEN OTHERS => leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_mfinal_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- leftShiftStage1Idx7Rng7_uid537_normVal_uid115_fpLogE1pxTest(BITSELECT,536)@11
    leftShiftStage1Idx7Rng7_uid537_normVal_uid115_fpLogE1pxTest_in <= leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_mfinal_q(51 downto 0);
    leftShiftStage1Idx7Rng7_uid537_normVal_uid115_fpLogE1pxTest_b <= leftShiftStage1Idx7Rng7_uid537_normVal_uid115_fpLogE1pxTest_in(51 downto 0);

    -- leftShiftStage1Idx7Pad7_uid536_normVal_uid115_fpLogE1pxTest(CONSTANT,535)
    leftShiftStage1Idx7Pad7_uid536_normVal_uid115_fpLogE1pxTest_q <= "0000000";

    -- leftShiftStage1Idx7_uid538_normVal_uid115_fpLogE1pxTest(BITJOIN,537)@11
    leftShiftStage1Idx7_uid538_normVal_uid115_fpLogE1pxTest_q <= leftShiftStage1Idx7Rng7_uid537_normVal_uid115_fpLogE1pxTest_b & leftShiftStage1Idx7Pad7_uid536_normVal_uid115_fpLogE1pxTest_q;

    -- leftShiftStage1Idx6Rng6_uid534_normVal_uid115_fpLogE1pxTest(BITSELECT,533)@11
    leftShiftStage1Idx6Rng6_uid534_normVal_uid115_fpLogE1pxTest_in <= leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_mfinal_q(52 downto 0);
    leftShiftStage1Idx6Rng6_uid534_normVal_uid115_fpLogE1pxTest_b <= leftShiftStage1Idx6Rng6_uid534_normVal_uid115_fpLogE1pxTest_in(52 downto 0);

    -- leftShiftStage1Idx6Pad6_uid533_normVal_uid115_fpLogE1pxTest(CONSTANT,532)
    leftShiftStage1Idx6Pad6_uid533_normVal_uid115_fpLogE1pxTest_q <= "000000";

    -- leftShiftStage1Idx6_uid535_normVal_uid115_fpLogE1pxTest(BITJOIN,534)@11
    leftShiftStage1Idx6_uid535_normVal_uid115_fpLogE1pxTest_q <= leftShiftStage1Idx6Rng6_uid534_normVal_uid115_fpLogE1pxTest_b & leftShiftStage1Idx6Pad6_uid533_normVal_uid115_fpLogE1pxTest_q;

    -- leftShiftStage1Idx5Rng5_uid531_normVal_uid115_fpLogE1pxTest(BITSELECT,530)@11
    leftShiftStage1Idx5Rng5_uid531_normVal_uid115_fpLogE1pxTest_in <= leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_mfinal_q(53 downto 0);
    leftShiftStage1Idx5Rng5_uid531_normVal_uid115_fpLogE1pxTest_b <= leftShiftStage1Idx5Rng5_uid531_normVal_uid115_fpLogE1pxTest_in(53 downto 0);

    -- leftShiftStage1Idx5Pad5_uid530_normVal_uid115_fpLogE1pxTest(CONSTANT,529)
    leftShiftStage1Idx5Pad5_uid530_normVal_uid115_fpLogE1pxTest_q <= "00000";

    -- leftShiftStage1Idx5_uid532_normVal_uid115_fpLogE1pxTest(BITJOIN,531)@11
    leftShiftStage1Idx5_uid532_normVal_uid115_fpLogE1pxTest_q <= leftShiftStage1Idx5Rng5_uid531_normVal_uid115_fpLogE1pxTest_b & leftShiftStage1Idx5Pad5_uid530_normVal_uid115_fpLogE1pxTest_q;

    -- leftShiftStage1Idx4Rng4_uid528_normVal_uid115_fpLogE1pxTest(BITSELECT,527)@11
    leftShiftStage1Idx4Rng4_uid528_normVal_uid115_fpLogE1pxTest_in <= leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_mfinal_q(54 downto 0);
    leftShiftStage1Idx4Rng4_uid528_normVal_uid115_fpLogE1pxTest_b <= leftShiftStage1Idx4Rng4_uid528_normVal_uid115_fpLogE1pxTest_in(54 downto 0);

    -- leftShiftStage1Idx4_uid529_normVal_uid115_fpLogE1pxTest(BITJOIN,528)@11
    leftShiftStage1Idx4_uid529_normVal_uid115_fpLogE1pxTest_q <= leftShiftStage1Idx4Rng4_uid528_normVal_uid115_fpLogE1pxTest_b & zs_uid171_leadingZeros_uid41_fpLogE1pxTest_q;

    -- leftShiftStageSel2Dto0_uid539_normVal_uid115_fpLogE1pxTest(BITSELECT,538)@11
    leftShiftStageSel2Dto0_uid539_normVal_uid115_fpLogE1pxTest_in <= redist0_r_uid295_countZ_uid114_fpLogE1pxTest_q_1_q(2 downto 0);
    leftShiftStageSel2Dto0_uid539_normVal_uid115_fpLogE1pxTest_b <= leftShiftStageSel2Dto0_uid539_normVal_uid115_fpLogE1pxTest_in(2 downto 0);

    -- leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_selLSBs(BITSELECT,561)@11
    leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_selLSBs_in <= leftShiftStageSel2Dto0_uid539_normVal_uid115_fpLogE1pxTest_b(1 downto 0);
    leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_selLSBs_b <= leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_selLSBs_in(1 downto 0);

    -- leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_msplit_1(MUX,564)@11
    leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_msplit_1_s <= leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_selLSBs_b;
    leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_msplit_1_combproc: PROCESS (leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_msplit_1_s, leftShiftStage1Idx4_uid529_normVal_uid115_fpLogE1pxTest_q, leftShiftStage1Idx5_uid532_normVal_uid115_fpLogE1pxTest_q, leftShiftStage1Idx6_uid535_normVal_uid115_fpLogE1pxTest_q, leftShiftStage1Idx7_uid538_normVal_uid115_fpLogE1pxTest_q)
    BEGIN
        CASE (leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_msplit_1_s) IS
            WHEN "00" => leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_msplit_1_q <= leftShiftStage1Idx4_uid529_normVal_uid115_fpLogE1pxTest_q;
            WHEN "01" => leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_msplit_1_q <= leftShiftStage1Idx5_uid532_normVal_uid115_fpLogE1pxTest_q;
            WHEN "10" => leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_msplit_1_q <= leftShiftStage1Idx6_uid535_normVal_uid115_fpLogE1pxTest_q;
            WHEN "11" => leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_msplit_1_q <= leftShiftStage1Idx7_uid538_normVal_uid115_fpLogE1pxTest_q;
            WHEN OTHERS => leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_msplit_1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1Idx3Rng3_uid525_normVal_uid115_fpLogE1pxTest(BITSELECT,524)@11
    leftShiftStage1Idx3Rng3_uid525_normVal_uid115_fpLogE1pxTest_in <= leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_mfinal_q(55 downto 0);
    leftShiftStage1Idx3Rng3_uid525_normVal_uid115_fpLogE1pxTest_b <= leftShiftStage1Idx3Rng3_uid525_normVal_uid115_fpLogE1pxTest_in(55 downto 0);

    -- leftShiftStage1Idx3_uid526_normVal_uid115_fpLogE1pxTest(BITJOIN,525)@11
    leftShiftStage1Idx3_uid526_normVal_uid115_fpLogE1pxTest_q <= leftShiftStage1Idx3Rng3_uid525_normVal_uid115_fpLogE1pxTest_b & paddingX_uid201_eLn2_uid82_fpLogE1pxTest_q;

    -- leftShiftStage1Idx2Rng2_uid522_normVal_uid115_fpLogE1pxTest(BITSELECT,521)@11
    leftShiftStage1Idx2Rng2_uid522_normVal_uid115_fpLogE1pxTest_in <= leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_mfinal_q(56 downto 0);
    leftShiftStage1Idx2Rng2_uid522_normVal_uid115_fpLogE1pxTest_b <= leftShiftStage1Idx2Rng2_uid522_normVal_uid115_fpLogE1pxTest_in(56 downto 0);

    -- leftShiftStage1Idx2_uid523_normVal_uid115_fpLogE1pxTest(BITJOIN,522)@11
    leftShiftStage1Idx2_uid523_normVal_uid115_fpLogE1pxTest_q <= leftShiftStage1Idx2Rng2_uid522_normVal_uid115_fpLogE1pxTest_b & z2_uid99_fpLogE1pxTest_q;

    -- leftShiftStage1Idx1Rng1_uid519_normVal_uid115_fpLogE1pxTest(BITSELECT,518)@11
    leftShiftStage1Idx1Rng1_uid519_normVal_uid115_fpLogE1pxTest_in <= leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_mfinal_q(57 downto 0);
    leftShiftStage1Idx1Rng1_uid519_normVal_uid115_fpLogE1pxTest_b <= leftShiftStage1Idx1Rng1_uid519_normVal_uid115_fpLogE1pxTest_in(57 downto 0);

    -- leftShiftStage1Idx1_uid520_normVal_uid115_fpLogE1pxTest(BITJOIN,519)@11
    leftShiftStage1Idx1_uid520_normVal_uid115_fpLogE1pxTest_q <= leftShiftStage1Idx1Rng1_uid519_normVal_uid115_fpLogE1pxTest_b & GND_q;

    -- leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_msplit_0(MUX,563)@11
    leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_msplit_0_s <= leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_selLSBs_b;
    leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_msplit_0_combproc: PROCESS (leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_msplit_0_s, leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_mfinal_q, leftShiftStage1Idx1_uid520_normVal_uid115_fpLogE1pxTest_q, leftShiftStage1Idx2_uid523_normVal_uid115_fpLogE1pxTest_q, leftShiftStage1Idx3_uid526_normVal_uid115_fpLogE1pxTest_q)
    BEGIN
        CASE (leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_msplit_0_s) IS
            WHEN "00" => leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_msplit_0_q <= leftShiftStage0_uid517_normVal_uid115_fpLogE1pxTest_mfinal_q;
            WHEN "01" => leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_msplit_0_q <= leftShiftStage1Idx1_uid520_normVal_uid115_fpLogE1pxTest_q;
            WHEN "10" => leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_msplit_0_q <= leftShiftStage1Idx2_uid523_normVal_uid115_fpLogE1pxTest_q;
            WHEN "11" => leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_msplit_0_q <= leftShiftStage1Idx3_uid526_normVal_uid115_fpLogE1pxTest_q;
            WHEN OTHERS => leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_msplit_0_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_selMSBs(BITSELECT,562)@11
    leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_selMSBs_in <= leftShiftStageSel2Dto0_uid539_normVal_uid115_fpLogE1pxTest_b;
    leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_selMSBs_b <= leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_selMSBs_in(2 downto 2);

    -- leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_mfinal(MUX,565)@11
    leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_mfinal_s <= leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_selMSBs_b;
    leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_mfinal_combproc: PROCESS (leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_mfinal_s, leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_msplit_0_q, leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_msplit_1_q)
    BEGIN
        CASE (leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_mfinal_s) IS
            WHEN "0" => leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_mfinal_q <= leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_msplit_0_q;
            WHEN "1" => leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_mfinal_q <= leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_msplit_1_q;
            WHEN OTHERS => leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_mfinal_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracR_uid122_fpLogE1pxTest(BITSELECT,121)@11
    fracR_uid122_fpLogE1pxTest_in <= leftShiftStage1_uid540_normVal_uid115_fpLogE1pxTest_mfinal_q(57 downto 0);
    fracR_uid122_fpLogE1pxTest_b <= fracR_uid122_fpLogE1pxTest_in(57 downto 34);

    -- expFracConc_uid123_fpLogE1pxTest(BITJOIN,122)@11
    expFracConc_uid123_fpLogE1pxTest_q <= expRExt_uid121_fpLogE1pxTest_q & fracR_uid122_fpLogE1pxTest_b;

    -- expFracPostRnd_uid125_fpLogE1pxTest(ADD,124)@11
    expFracPostRnd_uid125_fpLogE1pxTest_a <= STD_LOGIC_VECTOR("0" & expFracConc_uid123_fpLogE1pxTest_q);
    expFracPostRnd_uid125_fpLogE1pxTest_b <= STD_LOGIC_VECTOR("0000000000000000000000000000000000" & VCC_q);
    expFracPostRnd_uid125_fpLogE1pxTest_o <= STD_LOGIC_VECTOR(UNSIGNED(expFracPostRnd_uid125_fpLogE1pxTest_a) + UNSIGNED(expFracPostRnd_uid125_fpLogE1pxTest_b));
    expFracPostRnd_uid125_fpLogE1pxTest_q <= expFracPostRnd_uid125_fpLogE1pxTest_o(34 downto 0);

    -- expR_uid128_fpLogE1pxTest(BITSELECT,127)@11
    expR_uid128_fpLogE1pxTest_in <= expFracPostRnd_uid125_fpLogE1pxTest_q(31 downto 0);
    expR_uid128_fpLogE1pxTest_b <= expR_uid128_fpLogE1pxTest_in(31 downto 24);

    -- redist15_resIsX_uid59_fpLogE1pxTest_c_10(DELAY,581)
    redist15_resIsX_uid59_fpLogE1pxTest_c_10 : dspba_delay
    GENERIC MAP ( width => 1, depth => 10, reset_kind => "ASYNC" )
    PORT MAP ( xin => resIsX_uid59_fpLogE1pxTest_c, xout => redist15_resIsX_uid59_fpLogE1pxTest_c_10_q, clk => clk, aclr => areset );

    -- expR_uid129_fpLogE1pxTest(MUX,128)@11
    expR_uid129_fpLogE1pxTest_s <= redist15_resIsX_uid59_fpLogE1pxTest_c_10_q;
    expR_uid129_fpLogE1pxTest_combproc: PROCESS (expR_uid129_fpLogE1pxTest_s, expR_uid128_fpLogE1pxTest_b, redist23_expX_uid6_fpLogE1pxTest_b_11_q)
    BEGIN
        CASE (expR_uid129_fpLogE1pxTest_s) IS
            WHEN "0" => expR_uid129_fpLogE1pxTest_q <= expR_uid128_fpLogE1pxTest_b;
            WHEN "1" => expR_uid129_fpLogE1pxTest_q <= redist23_expX_uid6_fpLogE1pxTest_b_11_q;
            WHEN OTHERS => expR_uid129_fpLogE1pxTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- xM1_uid132_fpLogE1pxTest(LOGICAL,131)@0 + 1
    xM1_uid132_fpLogE1pxTest_a <= a;
    xM1_uid132_fpLogE1pxTest_b <= mO_uid131_fpLogE1pxTest_q;
    xM1_uid132_fpLogE1pxTest_qi <= "1" WHEN xM1_uid132_fpLogE1pxTest_a = xM1_uid132_fpLogE1pxTest_b ELSE "0";
    xM1_uid132_fpLogE1pxTest_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xM1_uid132_fpLogE1pxTest_qi, xout => xM1_uid132_fpLogE1pxTest_q, clk => clk, aclr => areset );

    -- excRInf0_uid135_fpLogE1pxTest(LOGICAL,134)@1
    excRInf0_uid135_fpLogE1pxTest_a <= excR_x_uid27_fpLogE1pxTest_q;
    excRInf0_uid135_fpLogE1pxTest_b <= xM1_uid132_fpLogE1pxTest_q;
    excRInf0_uid135_fpLogE1pxTest_q <= excRInf0_uid135_fpLogE1pxTest_a and excRInf0_uid135_fpLogE1pxTest_b;

    -- posInf_uid137_fpLogE1pxTest(LOGICAL,136)@1
    posInf_uid137_fpLogE1pxTest_a <= branch11_uid61_fpLogE1pxTest_q;
    posInf_uid137_fpLogE1pxTest_b <= excI_x_uid23_fpLogE1pxTest_q;
    posInf_uid137_fpLogE1pxTest_q <= posInf_uid137_fpLogE1pxTest_a and posInf_uid137_fpLogE1pxTest_b;

    -- excRInf0_uid138_fpLogE1pxTest(LOGICAL,137)@1
    excRInf0_uid138_fpLogE1pxTest_a <= posInf_uid137_fpLogE1pxTest_q;
    excRInf0_uid138_fpLogE1pxTest_b <= excRInf0_uid135_fpLogE1pxTest_q;
    excRInf0_uid138_fpLogE1pxTest_q <= excRInf0_uid138_fpLogE1pxTest_a or excRInf0_uid138_fpLogE1pxTest_b;

    -- concExc_uid144_fpLogE1pxTest(BITJOIN,143)@1
    concExc_uid144_fpLogE1pxTest_q <= excRNaN_uid141_fpLogE1pxTest_q & excRInf0_uid138_fpLogE1pxTest_q & excZ_x_uid19_fpLogE1pxTest_q;

    -- excREnc_uid145_fpLogE1pxTest(LOOKUP,144)@1 + 1
    excREnc_uid145_fpLogE1pxTest_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            excREnc_uid145_fpLogE1pxTest_q <= "01";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (concExc_uid144_fpLogE1pxTest_q) IS
                WHEN "000" => excREnc_uid145_fpLogE1pxTest_q <= "01";
                WHEN "001" => excREnc_uid145_fpLogE1pxTest_q <= "00";
                WHEN "010" => excREnc_uid145_fpLogE1pxTest_q <= "10";
                WHEN "011" => excREnc_uid145_fpLogE1pxTest_q <= "00";
                WHEN "100" => excREnc_uid145_fpLogE1pxTest_q <= "11";
                WHEN "101" => excREnc_uid145_fpLogE1pxTest_q <= "00";
                WHEN "110" => excREnc_uid145_fpLogE1pxTest_q <= "00";
                WHEN "111" => excREnc_uid145_fpLogE1pxTest_q <= "00";
                WHEN OTHERS => -- unreachable
                               excREnc_uid145_fpLogE1pxTest_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- redist1_excREnc_uid145_fpLogE1pxTest_q_10(DELAY,567)
    redist1_excREnc_uid145_fpLogE1pxTest_q_10 : dspba_delay
    GENERIC MAP ( width => 2, depth => 9, reset_kind => "ASYNC" )
    PORT MAP ( xin => excREnc_uid145_fpLogE1pxTest_q, xout => redist1_excREnc_uid145_fpLogE1pxTest_q_10_q, clk => clk, aclr => areset );

    -- expRPostExc_uid154_fpLogE1pxTest(MUX,153)@11
    expRPostExc_uid154_fpLogE1pxTest_s <= redist1_excREnc_uid145_fpLogE1pxTest_q_10_q;
    expRPostExc_uid154_fpLogE1pxTest_combproc: PROCESS (expRPostExc_uid154_fpLogE1pxTest_s, cstAllZWE_uid16_fpLogE1pxTest_q, expR_uid129_fpLogE1pxTest_q, cstAllOWE_uid14_fpLogE1pxTest_q)
    BEGIN
        CASE (expRPostExc_uid154_fpLogE1pxTest_s) IS
            WHEN "00" => expRPostExc_uid154_fpLogE1pxTest_q <= cstAllZWE_uid16_fpLogE1pxTest_q;
            WHEN "01" => expRPostExc_uid154_fpLogE1pxTest_q <= expR_uid129_fpLogE1pxTest_q;
            WHEN "10" => expRPostExc_uid154_fpLogE1pxTest_q <= cstAllOWE_uid14_fpLogE1pxTest_q;
            WHEN "11" => expRPostExc_uid154_fpLogE1pxTest_q <= cstAllOWE_uid14_fpLogE1pxTest_q;
            WHEN OTHERS => expRPostExc_uid154_fpLogE1pxTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- oneFracRPostExc2_uid146_fpLogE1pxTest(CONSTANT,145)
    oneFracRPostExc2_uid146_fpLogE1pxTest_q <= "00000000000000000000001";

    -- redist20_frac_x_uid18_fpLogE1pxTest_b_11(DELAY,586)
    redist20_frac_x_uid18_fpLogE1pxTest_b_11 : dspba_delay
    GENERIC MAP ( width => 23, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist19_frac_x_uid18_fpLogE1pxTest_b_7_q, xout => redist20_frac_x_uid18_fpLogE1pxTest_b_11_q, clk => clk, aclr => areset );

    -- fracR0_uid126_fpLogE1pxTest(BITSELECT,125)@11
    fracR0_uid126_fpLogE1pxTest_in <= expFracPostRnd_uid125_fpLogE1pxTest_q(23 downto 0);
    fracR0_uid126_fpLogE1pxTest_b <= fracR0_uid126_fpLogE1pxTest_in(23 downto 1);

    -- fracR_uid127_fpLogE1pxTest(MUX,126)@11
    fracR_uid127_fpLogE1pxTest_s <= redist15_resIsX_uid59_fpLogE1pxTest_c_10_q;
    fracR_uid127_fpLogE1pxTest_combproc: PROCESS (fracR_uid127_fpLogE1pxTest_s, fracR0_uid126_fpLogE1pxTest_b, redist20_frac_x_uid18_fpLogE1pxTest_b_11_q)
    BEGIN
        CASE (fracR_uid127_fpLogE1pxTest_s) IS
            WHEN "0" => fracR_uid127_fpLogE1pxTest_q <= fracR0_uid126_fpLogE1pxTest_b;
            WHEN "1" => fracR_uid127_fpLogE1pxTest_q <= redist20_frac_x_uid18_fpLogE1pxTest_b_11_q;
            WHEN OTHERS => fracR_uid127_fpLogE1pxTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracRPostExc_uid150_fpLogE1pxTest(MUX,149)@11
    fracRPostExc_uid150_fpLogE1pxTest_s <= redist1_excREnc_uid145_fpLogE1pxTest_q_10_q;
    fracRPostExc_uid150_fpLogE1pxTest_combproc: PROCESS (fracRPostExc_uid150_fpLogE1pxTest_s, cstAllZWF_uid8_fpLogE1pxTest_q, fracR_uid127_fpLogE1pxTest_q, oneFracRPostExc2_uid146_fpLogE1pxTest_q)
    BEGIN
        CASE (fracRPostExc_uid150_fpLogE1pxTest_s) IS
            WHEN "00" => fracRPostExc_uid150_fpLogE1pxTest_q <= cstAllZWF_uid8_fpLogE1pxTest_q;
            WHEN "01" => fracRPostExc_uid150_fpLogE1pxTest_q <= fracR_uid127_fpLogE1pxTest_q;
            WHEN "10" => fracRPostExc_uid150_fpLogE1pxTest_q <= cstAllZWF_uid8_fpLogE1pxTest_q;
            WHEN "11" => fracRPostExc_uid150_fpLogE1pxTest_q <= oneFracRPostExc2_uid146_fpLogE1pxTest_q;
            WHEN OTHERS => fracRPostExc_uid150_fpLogE1pxTest_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- RLn1px_uid155_fpLogE1pxTest(BITJOIN,154)@11
    RLn1px_uid155_fpLogE1pxTest_q <= redist2_signRFull_uid143_fpLogE1pxTest_q_10_q & expRPostExc_uid154_fpLogE1pxTest_q & fracRPostExc_uid150_fpLogE1pxTest_q;

    -- xOut(GPOUT,4)@11
    q <= RLn1px_uid155_fpLogE1pxTest_q;

END normal;
