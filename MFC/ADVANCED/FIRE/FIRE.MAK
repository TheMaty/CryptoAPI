# Microsoft Developer Studio Generated NMAKE File, Based on fire.dsp
!IF "$(CFG)" == ""
CFG=Fire - Win32 Release
!MESSAGE No configuration specified.  Defaulting to Fire - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "Fire - Win32 Release" && "$(CFG)" != "Fire - Win32 Debug" &&\
 "$(CFG)" != "Fire - Win32 Profile Release"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "fire.mak" CFG="Fire - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Fire - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "Fire - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE "Fire - Win32 Profile Release" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "Fire - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\.\Release
# End Custom Macros

ALL : "$(OUTDIR)\fire.exe"

CLEAN : 
	-@erase "$(INTDIR)\fire.obj"
	-@erase "$(INTDIR)\fire.pch"
	-@erase "$(INTDIR)\fire.res"
	-@erase "$(INTDIR)\firedlg.obj"
	-@erase "$(INTDIR)\firewnd.obj"
	-@erase "$(INTDIR)\stdafx.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(OUTDIR)\fire.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D\
 "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/fire.pch" /Yu"Stdafx.h" /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /FD /c 
CPP_OBJS=.\Release/
CPP_SBRS=.

.c{$(CPP_OBJS)}.obj::
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj::
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj::
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr::
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr::
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr::
   $(CPP) $(CPP_PROJ) $<  

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)/fire.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)/fire.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no\
 /pdb:"$(OUTDIR)/fire.pdb" /machine:I386 /out:"$(OUTDIR)/fire.exe" 
LINK32_OBJS= \
	"$(INTDIR)\fire.obj" \
	"$(INTDIR)\fire.res" \
	"$(INTDIR)\firedlg.obj" \
	"$(INTDIR)\firewnd.obj" \
	"$(INTDIR)\stdafx.obj"

"$(OUTDIR)\fire.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Fire - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\fire.exe"

CLEAN : 
	-@erase "$(INTDIR)\fire.obj"
	-@erase "$(INTDIR)\fire.pch"
	-@erase "$(INTDIR)\fire.res"
	-@erase "$(INTDIR)\firedlg.obj"
	-@erase "$(INTDIR)\firewnd.obj"
	-@erase "$(INTDIR)\stdafx.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\vc50.pdb"
	-@erase "$(OUTDIR)\fire.exe"
	-@erase "$(OUTDIR)\fire.ilk"
	-@erase "$(OUTDIR)\fire.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/fire.pch" /Yu"Stdafx.h" /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /FD /c 
CPP_OBJS=.\Debug/
CPP_SBRS=.

.c{$(CPP_OBJS)}.obj::
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj::
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj::
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr::
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr::
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr::
   $(CPP) $(CPP_PROJ) $<  

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)/fire.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)/fire.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes\
 /pdb:"$(OUTDIR)/fire.pdb" /debug /machine:I386 /out:"$(OUTDIR)/fire.exe" 
LINK32_OBJS= \
	"$(INTDIR)\fire.obj" \
	"$(INTDIR)\fire.res" \
	"$(INTDIR)\firedlg.obj" \
	"$(INTDIR)\firewnd.obj" \
	"$(INTDIR)\stdafx.obj"

"$(OUTDIR)\fire.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Fire - Win32 Profile Release"

OUTDIR=.\ProfRelease
INTDIR=.\ProfRelease
# Begin Custom Macros
OutDir=.\.\ProfRelease
# End Custom Macros

ALL : "$(OUTDIR)\fire.exe"

CLEAN : 
	-@erase "$(INTDIR)\fire.obj"
	-@erase "$(INTDIR)\fire.pch"
	-@erase "$(INTDIR)\fire.res"
	-@erase "$(INTDIR)\firedlg.obj"
	-@erase "$(INTDIR)\firewnd.obj"
	-@erase "$(INTDIR)\stdafx.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(OUTDIR)\fire.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D\
 "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/fire.pch" /Yu"Stdafx.h" /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /FD /c 
CPP_OBJS=.\ProfRelease/
CPP_SBRS=.

.c{$(CPP_OBJS)}.obj::
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj::
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj::
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr::
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr::
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr::
   $(CPP) $(CPP_PROJ) $<  

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)/fire.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)/fire.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /profile /machine:I386\
 /out:"$(OUTDIR)/fire.exe" 
LINK32_OBJS= \
	"$(INTDIR)\fire.obj" \
	"$(INTDIR)\fire.res" \
	"$(INTDIR)\firedlg.obj" \
	"$(INTDIR)\firewnd.obj" \
	"$(INTDIR)\stdafx.obj"

"$(OUTDIR)\fire.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(CFG)" == "Fire - Win32 Release" || "$(CFG)" == "Fire - Win32 Debug" ||\
 "$(CFG)" == "Fire - Win32 Profile Release"
SOURCE=.\fire.cpp
DEP_CPP_FIRE_=\
	".\fire.h"\
	".\firedlg.h"\
	".\firewnd.h"\
	".\stdafx.h"\
	

!IF  "$(CFG)" == "Fire - Win32 Release"


"$(INTDIR)\fire.obj" : $(SOURCE) $(DEP_CPP_FIRE_) "$(INTDIR)"\
 "$(INTDIR)\fire.pch"
	$(CPP) /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D\
 "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/fire.pch" /Yu"Stdafx.h" /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /FD /c $(SOURCE)


!ELSEIF  "$(CFG)" == "Fire - Win32 Debug"


"$(INTDIR)\fire.obj" : $(SOURCE) $(DEP_CPP_FIRE_) "$(INTDIR)"\
 "$(INTDIR)\fire.pch"
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/fire.pch" /Yu"Stdafx.h" /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /FD /c $(SOURCE)


!ELSEIF  "$(CFG)" == "Fire - Win32 Profile Release"


"$(INTDIR)\fire.obj" : $(SOURCE) $(DEP_CPP_FIRE_) "$(INTDIR)"\
 "$(INTDIR)\fire.pch"
	$(CPP) /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D\
 "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/fire.pch" /Yu"Stdafx.h" /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /FD /c $(SOURCE)


!ENDIF 

SOURCE=.\fire.rc
DEP_RSC_FIRE_R=\
	".\RES\fire.ico"\
	".\RES\fire.rc2"\
	

!IF  "$(CFG)" == "Fire - Win32 Release"


"$(INTDIR)\fire.res" : $(SOURCE) $(DEP_RSC_FIRE_R) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "Fire - Win32 Debug"


"$(INTDIR)\fire.res" : $(SOURCE) $(DEP_RSC_FIRE_R) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "Fire - Win32 Profile Release"


"$(INTDIR)\fire.res" : $(SOURCE) $(DEP_RSC_FIRE_R) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\firedlg.cpp
DEP_CPP_FIRED=\
	".\fire.h"\
	".\firedlg.h"\
	".\firewnd.h"\
	".\stdafx.h"\
	

!IF  "$(CFG)" == "Fire - Win32 Release"


"$(INTDIR)\firedlg.obj" : $(SOURCE) $(DEP_CPP_FIRED) "$(INTDIR)"\
 "$(INTDIR)\fire.pch"
	$(CPP) /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D\
 "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/fire.pch" /Yu"Stdafx.h" /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /FD /c $(SOURCE)


!ELSEIF  "$(CFG)" == "Fire - Win32 Debug"


"$(INTDIR)\firedlg.obj" : $(SOURCE) $(DEP_CPP_FIRED) "$(INTDIR)"\
 "$(INTDIR)\fire.pch"
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/fire.pch" /Yu"Stdafx.h" /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /FD /c $(SOURCE)


!ELSEIF  "$(CFG)" == "Fire - Win32 Profile Release"


"$(INTDIR)\firedlg.obj" : $(SOURCE) $(DEP_CPP_FIRED) "$(INTDIR)"\
 "$(INTDIR)\fire.pch"
	$(CPP) /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D\
 "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/fire.pch" /Yu"Stdafx.h" /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /FD /c $(SOURCE)


!ENDIF 

SOURCE=.\firewnd.cpp
DEP_CPP_FIREW=\
	".\fire.h"\
	".\firewnd.h"\
	".\stdafx.h"\
	

!IF  "$(CFG)" == "Fire - Win32 Release"


"$(INTDIR)\firewnd.obj" : $(SOURCE) $(DEP_CPP_FIREW) "$(INTDIR)"\
 "$(INTDIR)\fire.pch"


!ELSEIF  "$(CFG)" == "Fire - Win32 Debug"


"$(INTDIR)\firewnd.obj" : $(SOURCE) $(DEP_CPP_FIREW) "$(INTDIR)"\
 "$(INTDIR)\fire.pch"


!ELSEIF  "$(CFG)" == "Fire - Win32 Profile Release"


"$(INTDIR)\firewnd.obj" : $(SOURCE) $(DEP_CPP_FIREW) "$(INTDIR)"\
 "$(INTDIR)\fire.pch"


!ENDIF 

SOURCE=.\stdafx.cpp
DEP_CPP_STDAF=\
	".\stdafx.h"\
	

!IF  "$(CFG)" == "Fire - Win32 Release"


"$(INTDIR)\stdafx.obj"	"$(INTDIR)\fire.pch" : $(SOURCE) $(DEP_CPP_STDAF)\
 "$(INTDIR)"
	$(CPP) /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D\
 "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/fire.pch" /Yc"Stdafx.h" /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /FD /c $(SOURCE)


!ELSEIF  "$(CFG)" == "Fire - Win32 Debug"


"$(INTDIR)\stdafx.obj"	"$(INTDIR)\fire.pch" : $(SOURCE) $(DEP_CPP_STDAF)\
 "$(INTDIR)"
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /D "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/fire.pch" /Yc /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /FD /c $(SOURCE)


!ELSEIF  "$(CFG)" == "Fire - Win32 Profile Release"


"$(INTDIR)\stdafx.obj"	"$(INTDIR)\fire.pch" : $(SOURCE) $(DEP_CPP_STDAF)\
 "$(INTDIR)"
	$(CPP) /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D\
 "_AFXDLL" /D "_MBCS" /Fp"$(INTDIR)/fire.pch" /Yc /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /FD /c $(SOURCE)


!ENDIF 

SOURCE=.\fire.h
SOURCE=.\firedlg.h
SOURCE=.\firewnd.h
SOURCE=.\stdafx.h
SOURCE=.\RES\fire.ico
SOURCE=.\RES\fire.rc2

!ENDIF 

