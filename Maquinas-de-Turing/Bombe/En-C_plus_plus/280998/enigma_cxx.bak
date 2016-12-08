# Microsoft Developer Studio Generated NMAKE File, Format Version 4.20
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

!IF "$(CFG)" == ""
CFG=enigma_cxx - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to enigma_cxx - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "enigma_cxx - Win32 Release" && "$(CFG)" !=\
 "enigma_cxx - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "enigma_cxx.mak" CFG="enigma_cxx - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "enigma_cxx - Win32 Release" (based on\
 "Win32 (x86) Console Application")
!MESSAGE "enigma_cxx - Win32 Debug" (based on\
 "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
# PROP Target_Last_Scanned "enigma_cxx - Win32 Debug"
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "enigma_cxx - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 2
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
OUTDIR=.\Release
INTDIR=.\Release

ALL : "$(OUTDIR)\enigma_cxx.exe"

CLEAN : 
	-@erase "$(INTDIR)\main.obj"
	-@erase "$(INTDIR)\rotor.obj"
	-@erase "$(OUTDIR)\enigma_cxx.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /YX /c
# ADD CPP /nologo /MD /W3 /GX /O2 /D "NDEBUG" /D "WIN32" /D "_CONSOLE" /D "NOMINMAX" /D "_AFXDLL" /D "_MBCS" /YX /c
CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "NDEBUG" /D "WIN32" /D "_CONSOLE" /D\
 "NOMINMAX" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/enigma_cxx.pch" /YX\
 /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\Release/
CPP_SBRS=.\.
# ADD BASE RSC /l 0x809 /d "NDEBUG"
# ADD RSC /l 0x809 /d "NDEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/enigma_cxx.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 /nologo /subsystem:console /machine:I386
LINK32_FLAGS=/nologo /subsystem:console /incremental:no\
 /pdb:"$(OUTDIR)/enigma_cxx.pdb" /machine:I386 /out:"$(OUTDIR)/enigma_cxx.exe" 
LINK32_OBJS= \
	"$(INTDIR)\main.obj" \
	"$(INTDIR)\rotor.obj"

"$(OUTDIR)\enigma_cxx.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "enigma_cxx - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "enigma_c"
# PROP BASE Intermediate_Dir "enigma_c"
# PROP BASE Target_Dir ""
# PROP Use_MFC 2
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "enigma_c"
# PROP Intermediate_Dir "enigma_c"
# PROP Target_Dir ""
OUTDIR=.\enigma_c
INTDIR=.\enigma_c

ALL : "$(OUTDIR)\enigma_cxx.exe"

CLEAN : 
	-@erase "$(INTDIR)\main.obj"
	-@erase "$(INTDIR)\rotor.obj"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(OUTDIR)\enigma_cxx.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /YX /c
# ADD CPP /nologo /MDd /W3 /GX /Zi /Od /D "_DEBUG" /D "WIN32" /D "_CONSOLE" /D "NOMINMAX" /D "_AFXDLL" /D "_MBCS" /YX /c
CPP_PROJ=/nologo /MDd /W3 /GX /Zi /Od /D "_DEBUG" /D "WIN32" /D "_CONSOLE" /D\
 "NOMINMAX" /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/enigma_cxx.pch" /YX\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\enigma_c/
CPP_SBRS=.\.
# ADD BASE RSC /l 0x809 /d "_DEBUG"
# ADD RSC /l 0x809 /d "_DEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/enigma_cxx.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386
# ADD LINK32 /nologo /subsystem:console /profile /debug /machine:I386
LINK32_FLAGS=/nologo /subsystem:console /profile /debug /machine:I386\
 /out:"$(OUTDIR)/enigma_cxx.exe" 
LINK32_OBJS= \
	"$(INTDIR)\main.obj" \
	"$(INTDIR)\rotor.obj"

"$(OUTDIR)\enigma_cxx.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

################################################################################
# Begin Target

# Name "enigma_cxx - Win32 Release"
# Name "enigma_cxx - Win32 Debug"

!IF  "$(CFG)" == "enigma_cxx - Win32 Release"

!ELSEIF  "$(CFG)" == "enigma_cxx - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\main.cpp
DEP_CPP_MAIN_=\
	".\rotor.h"\
	{$(INCLUDE)}"\ALGO.H"\
	{$(INCLUDE)}"\ALGOBASE.H"\
	{$(INCLUDE)}"\BOOL.H"\
	{$(INCLUDE)}"\DEFALLOC.H"\
	{$(INCLUDE)}"\FUNCTION.H"\
	{$(INCLUDE)}"\HEAP.H"\
	{$(INCLUDE)}"\ITERATOR.H"\
	{$(INCLUDE)}"\list.h"\
	{$(INCLUDE)}"\PAIR.H"\
	{$(INCLUDE)}"\TEMPBUF.H"\
	{$(INCLUDE)}"\VECTOR.H"\
	

"$(INTDIR)\main.obj" : $(SOURCE) $(DEP_CPP_MAIN_) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\rotor.cpp
DEP_CPP_ROTOR=\
	".\rotor.h"\
	

"$(INTDIR)\rotor.obj" : $(SOURCE) $(DEP_CPP_ROTOR) "$(INTDIR)"


# End Source File
# End Target
# End Project
################################################################################
