@echo off
title Cue's Serial Checker
echo.
color 90
echo               ██████╗  ██╗   ██╗██╗    ██╗    ██╗███████╗██╗  ██╗
echo               ██╔══██╗██║   ██║██║    ██║    ██║██╔════╝██║  ██║
echo               ██████╔╝██║   ██║██║    ██║    ██║█████╗  ███████║
echo               ██╔═══╝ ██║   ██║██║    ██║    ██║██╔══╝  ██╔══██║
echo               ██║     ╚██████╔╝╚██████╔╝    ██║███████╗██║  ██║
echo               ╚═╝      ╚═════╝  ╚═════╝     ╚═╝╚══════╝╚═╝  ╚═╝
echo.
color 90 
:start
color 4  
cls                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
echo [91m       Disk Number
echo [90m==========================[97m
wmic diskdrive get serialnumber
echo.
echo [93m      Motherboard
echo [90m==========================[97m
wmic baseboard get serialnumber
echo.
echo [92m        SMBios
echo [90m==========================[97m
wmic path win32_computersystemproduct get uuid
echo.
echo [96m         GPU
echo [90m==========================[97m
wmic PATH Win32_VideoController GET Description, PNPDeviceID
echo.
echo [94m         RAM
echo [90m==========================[97m
wmic memorychip get serialnumber
echo.
echo [95m         BIOS
echo [90m==========================[97m
wmic csproduct get uuid
echo.
echo [91m         CPU
echo [90m==========================[97m
wmic cpu get processorid
echo.
echo [93mPress any key to retrieve your hardware serials again...
pause > nul
goto start
