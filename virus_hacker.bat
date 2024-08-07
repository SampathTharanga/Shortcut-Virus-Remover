echo OFF
color E
cls
echo  " -----------------------------------------------------------------
echo  "    
echo  "    
echo  "                         SAMPATH
echo  "           
echo  "     
echo  "-----------------------------------------------------------------
echo	@ This program will recover back lost folders on your drive.

echo	@ Delete viruses that infect to your drive.

echo "-----------------------------------------------------------------
echo				BY
echo				Sampath Tharanga
echo				Hacking Virus
echo " ------------------------------------------------------------------
PAUSE

cls
color A
echo "       wait until cleaning your drive.............

echo " -------------------------------------------------------------------

dir /b/ad >log.txt
for /F  "delims=,    " %%f in (log.txt) do attrib -r -s -h "%%f"
for /F  "delims=,   " %%f in (log.txt) do del  /p  /f  "%%f.exe"
del log.txt
PAUSE
cls
color F
echo " ----------------------------------------------------------------------
echo                     ~~~~~~~Sampath Thranga-(ST)~~~~~~~~
echo " ----------------------------------------------------------------------
PAUSE