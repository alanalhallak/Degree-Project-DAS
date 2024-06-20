@echo off
REM ****************************************************************************
REM Vivado (TM) v2023.2 (64-bit)
REM
REM Filename    : compile.bat
REM Simulator   : AMD Vivado Simulator
REM Description : Script for compiling the simulation design source files
REM
REM Generated by Vivado on Thu May 02 14:16:56 +0200 2024
REM SW Build 4029153 on Fri Oct 13 20:14:34 MDT 2023
REM
REM Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
REM Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
REM
REM usage: compile.bat
REM
REM ****************************************************************************
REM compile Verilog/System Verilog design sources
echo "xvlog --incr --relax -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L xilinx_vip -prj DMA_Multiplexer_TB_vlog.prj"
call xvlog  --incr --relax -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L xilinx_vip -prj DMA_Multiplexer_TB_vlog.prj -log xvlog.log
call type xvlog.log > compile.log
REM compile VHDL design sources
echo "xvhdl --incr --relax -prj DMA_Multiplexer_TB_vhdl.prj"
call xvhdl  --incr --relax -prj DMA_Multiplexer_TB_vhdl.prj -log xvhdl.log
call type xvhdl.log >> compile.log
if "%errorlevel%"=="1" goto END
if "%errorlevel%"=="0" goto SUCCESS
:END
exit 1
:SUCCESS
exit 0
