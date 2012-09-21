README for swcToVrml2.0.bat and associated files
2/14/2012 Todd Gillette

This program will convert an SWC file into a WRL file, specifically in the
VRML2.0 format.

This can be run via the command line with the swc file name(s) as an input, or 
simply by drag and drop. Simply select the swc file(s) you wish to convert to 
VRML (i.e. a .wrl file), then drag and drop (release) it over 
swcToVrml2.0.bat. You will see a command window open and some status 
information appear. Shortly thereafter the command window will close and a .wrl 
file will appear with the same name as the swc file (but with the .wrl 
extension) in the Swc2WrlWinPackage directory. Multiple files can be dropped
in at the same time.

convertToWrl.bat written and associated tools assembled by Todd Gillette 
(todd.gillette@gmail.com).

swc2wrl.exe was written by Deepak Ropireddy and adapted for Windows by Todd
Gillette (simply required a Windows verion of pthread).

vr1tovr2.exe written by Roger Kaufman and based around the program 
vrml1tovrml2 which was a component of Cosmo Player.
See http://www.interocitors.com/polyhedra/vr1tovr2/index.html for details.