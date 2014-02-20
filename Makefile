CC = cl.exe
EnableWholeProgramOptimization = /GL
NoDebug = /D NDEBUG
TreatWarningsAsErrors = /WX
WarningLevel3 = /W3
MaximizeSpeed = /O2
NoLogo = /nologo
CompileAllFilesAsC = /TC
NoCRTWarnings = /D _CRT_SECURE_NO_WARNINGS
Console = /D _CONSOLE
WIN32 = /D WIN32
LinkWithLIBCMTLIB = /MT


timestamp.exe : $*.c
	cl.exe /Fe.\$@ $(Console) $(WarningLevel3) $(TreatWarningsAsErrors) $(NoDebug) $(EnableWholeProgramOptimization) $(MaximizeSpeed) $(CompileAllFilesAsC) $(WIN32) $(NoCRTWarnings) $(NoLogo) $?

clean :
	-del *.exe
	-del *.obj


