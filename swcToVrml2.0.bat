@echo on
REM Make directory of this file the working directory
set batpath=%~dp0
cd %batpath%
if [%1]==[] goto :eof

REM Loop through the files that were provided as input
:loop
set filename=%~nx1

REM Delete any preexisting file with the name of the intended output file
IF EXIST "%filename%.wrl" del "%filename%.wrl"
copy %1 "tmp%filename%"
REM Remove any comment lines from the SWC file
type "tmp%filename%" | findstr /v # > "%filename%"

echo Converting "%filename%" to VRML version 1
swc2wrl "%filename%" 0
REM Convert default filename from "swc2wrl" to a filename based on the input file
rename swc3dlinesfile.wrl "%filename%.v1.wrl"
echo.
echo.

echo Converting "%filename%" to VRML version 2
vr1tovr2 "%filename%.v1.wrl" > "%filename%.wrl"

REM Delete the VRML version 1 file
del "%filename%.v1.wrl"
echo Done converting "%filename%"
REM Detele the original SWC file and the comments-removed SWC file
del "%filename%"
copy "tmp%filename%" %1
del "tmp%filename%"

REM Go to next input file
shift
if not [%1]==[] goto loop
echo Done converting all files
