SET PATH=%PATH%;c:\Xilinx\14.6\ISE_DS\ISE\bin\nt64

rem xst -intstyle ise -ifn "C:/Users/Matze/Amiga/Hardwarehacks/CDTV-RAM-IDE/Logic/CDTV-RAM-IDE/RAM_IDE_AUTOCONFIG.xst" -ofn "C:/Users/Matze/Amiga/Hardwarehacks/CDTV-RAM-IDE/Logic/CDTV-RAM-IDE/RAM_IDE_AUTOCONFIG.syr"
cpldfit.exe -intstyle ise -p xc95144xl-10-TQ144 -ofmt vhdl -htmlrpt -optimize density -loc on -slew fast -init low -inputs 54 -pterms 34 -unused float -power std -terminate float RAM_IDE_AUTOCONFIG.ngd >log.txt 
tsim -intstyle ise RAM_IDE_AUTOCONFIG RAM_IDE_AUTOCONFIG.nga
hprep6 -s IEEE1149 -n RAM_IDE_AUTOCONFIG -i RAM_IDE_AUTOCONFIG