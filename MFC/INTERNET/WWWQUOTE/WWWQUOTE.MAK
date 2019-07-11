# Microsoft Developer Studio Generated NMAKE File, Based on wwwquote.dsp
!IF "$(CFG)" == ""
CFG=WWWQuote - Win32 Release
!MESSAGE No configuration specified.  Defaulting to WWWQuote - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "WWWQuote - Win32 Release" && "$(CFG)" !=\
 "WWWQuote - Win32 Debug" && "$(CFG)" != "WWWQuote - Win32 Static Release" &&\
 "$(CFG)" != "WWWQuote - Win32 Static Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "wwwquote.mak" CFG="WWWQuote - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "WWWQuote - Win32 Release" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE "WWWQuote - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "WWWQuote - Win32 Static Release" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE "WWWQuote - Win32 Static Debug" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "WWWQuote - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\.\Release
# End Custom Macros

ALL : "$(OUTDIR)\wwwquote.dll"

CLEAN : 
	-@erase "$(INTDIR)\queries.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\WWWQuote.obj"
	-@erase "$(INTDIR)\wwwquote.pch"
	-@erase "$(INTDIR)\WWWQuote.res"
	-@erase "$(OUTDIR)\wwwquote.dll"
	-@erase "$(OUTDIR)\wwwquote.exp"
	-@erase "$(OUTDIR)\wwwquote.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D\
 "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_USRDLL" /Fp"$(INTDIR)/wwwquote.pch"\
 /Yu"stdafx.h" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /FD /c 
CPP_OBJS=.\Release/
CPP_SBRS=.
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)/WWWQuote.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)/wwwquote.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /dll /incremental:no\
 /pdb:"$(OUTDIR)/wwwquote.pdb" /machine:I386 /def:".\WWWQuote.def"\
 /out:"$(OUTDIR)/wwwquote.dll" /implib:"$(OUTDIR)/wwwquote.lib" 
DEF_FILE= \
	".\WWWQuote.def"
LINK32_OBJS= \
	"$(INTDIR)\queries.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\WWWQuote.obj" \
	"$(INTDIR)\WWWQuote.res"

"$(OUTDIR)\wwwquote.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "WWWQuote - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\wwwquote.dll"

CLEAN : 
	-@erase "$(INTDIR)\queries.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\vc50.pdb"
	-@erase "$(INTDIR)\WWWQuote.obj"
	-@erase "$(INTDIR)\wwwquote.pch"
	-@erase "$(INTDIR)\WWWQuote.res"
	-@erase "$(OUTDIR)\wwwquote.dll"
	-@erase "$(OUTDIR)\wwwquote.exp"
	-@erase "$(OUTDIR)\wwwquote.ilk"
	-@erase "$(OUTDIR)\wwwquote.lib"
	-@erase "$(OUTDIR)\wwwquote.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_USRDLL" /Fp"$(INTDIR)/wwwquote.pch"\
 /Yu"stdafx.h" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /FD /c 
CPP_OBJS=.\Debug/
CPP_SBRS=.
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)/WWWQuote.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)/wwwquote.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /dll /incremental:yes\
 /pdb:"$(OUTDIR)/wwwquote.pdb" /debug /machine:I386 /def:".\WWWQuote.def"\
 /out:"$(OUTDIR)/wwwquote.dll" /implib:"$(OUTDIR)/wwwquote.lib" 
DEF_FILE= \
	".\WWWQuote.def"
LINK32_OBJS= \
	"$(INTDIR)\queries.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\WWWQuote.obj" \
	"$(INTDIR)\WWWQuote.res"

"$(OUTDIR)\wwwquote.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "WWWQuote - Win32 Static Release"

OUTDIR=.\SRelease
INTDIR=.\SRelease
# Begin Custom Macros
OutDir=.\.\SRelease
# End Custom Macros

ALL : "$(OUTDIR)\wwwquote.dll"

CLEAN : 
	-@erase "$(INTDIR)\queries.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\WWWQuote.obj"
	-@erase "$(INTDIR)\wwwquote.pch"
	-@erase "$(INTDIR)\WWWQuote.res"
	-@erase "$(OUTDIR)\wwwquote.dll"
	-@erase "$(OUTDIR)\wwwquote.exp"
	-@erase "$(OUTDIR)\wwwquote.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D\
 "_USRDLL" /D "_WINDLL" /D "_MBCS" /Fp"$(INTDIR)/wwwquote.pch" /Yu"stdafx.h"\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /FD /c 
CPP_OBJS=.\SRelease/
CPP_SBRS=.
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)/WWWQuote.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)/wwwquote.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /dll /incremental:no\
 /pdb:"$(OUTDIR)/wwwquote.pdb" /machine:I386 /def:".\WWWQuote.def"\
 /out:"$(OUTDIR)/wwwquote.dll" /implib:"$(OUTDIR)/wwwquote.lib" 
DEF_FILE= \
	".\WWWQuote.def"
LINK32_OBJS= \
	"$(INTDIR)\queries.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\WWWQuote.obj" \
	"$(INTDIR)\WWWQuote.res"

"$(OUTDIR)\wwwquote.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "WWWQuote - Win32 Static Debug"

OUTDIR=.\SDebug
INTDIR=.\SDebug
# Begin Custom Macros
OutDir=.\.\SDebug
# End Custom Macros

ALL : "$(OUTDIR)\wwwquote.dll"

CLEAN : 
	-@erase "$(INTDIR)\queries.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\vc50.pdb"
	-@erase "$(INTDIR)\WWWQuote.obj"
	-@erase "$(INTDIR)\wwwquote.pch"
	-@erase "$(INTDIR)\WWWQuote.res"
	-@erase "$(OUTDIR)\wwwquote.dll"
	-@erase "$(OUTDIR)\wwwquote.exp"
	-@erase "$(OUTDIR)\wwwquote.ilk"
	-@erase "$(OUTDIR)\wwwquote.lib"
	-@erase "$(OUTDIR)\wwwquote.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MTd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /D "_USRDLL" /D "_WINDLL" /D "_MBCS" /Fp"$(INTDIR)/wwwquote.pch" /Yu"stdafx.h"\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /FD /c 
CPP_OBJS=.\SDebug/
CPP_SBRS=.
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)/WWWQuote.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)/wwwquote.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /dll /incremental:yes\
 /pdb:"$(OUTDIR)/wwwquote.pdb" /debug /machine:I386 /def:".\WWWQuote.def"\
 /out:"$(OUTDIR)/wwwquote.dll" /implib:"$(OUTDIR)/wwwquote.lib" 
DEF_FILE= \
	".\WWWQuote.def"
LINK32_OBJS= \
	"$(INTDIR)\queries.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\WWWQuote.obj" \
	"$(INTDIR)\WWWQuote.res"

"$(OUTDIR)\wwwquote.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

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


!IF "$(CFG)" == "WWWQuote - Win32 Release" || "$(CFG)" ==\
 "WWWQuote - Win32 Debug" || "$(CFG)" == "WWWQuote - Win32 Static Release" ||\
 "$(CFG)" == "WWWQuote - Win32 Static Debug"
SOURCE=.\queries.cpp
DEP_CPP_QUERI=\
	".\Queries.h"\
	".\StdAfx.h"\
	".\WWWQuote.h"\
	

!IF  "$(CFG)" == "WWWQuote - Win32 Release"


"$(INTDIR)\queries.obj" : $(SOURCE) $(DEP_CPP_QUERI) "$(INTDIR)"\
 "$(INTDIR)\wwwquote.pch"


!ELSEIF  "$(CFG)" == "WWWQuote - Win32 Debug"


"$(INTDIR)\queries.obj" : $(SOURCE) $(DEP_CPP_QUERI) "$(INTDIR)"\
 "$(INTDIR)\wwwquote.pch"


!ELSEIF  "$(CFG)" == "WWWQuote - Win32 Static Release"


"$(INTDIR)\queries.obj" : $(SOURCE) $(DEP_CPP_QUERI) "$(INTDIR)"\
 "$(INTDIR)\wwwquote.pch"


!ELSEIF  "$(CFG)" == "WWWQuote - Win32 Static Debug"


"$(INTDIR)\queries.obj" : $(SOURCE) $(DEP_CPP_QUERI) "$(INTDIR)"\
 "$(INTDIR)\wwwquote.pch"


!ENDIF 

SOURCE=.\StdAfx.cpp
DEP_CPP_STDAF=\
	".\StdAfx.h"\
	

!IF  "$(CFG)" == "WWWQuote - Win32 Release"


"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\wwwquote.pch" : $(SOURCE) $(DEP_CPP_STDAF)\
 "$(INTDIR)"
	$(CPP) /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D\
 "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_USRDLL" /Fp"$(INTDIR)/wwwquote.pch"\
 /Yc"stdafx.h" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /FD /c $(SOURCE)


!ELSEIF  "$(CFG)" == "WWWQuote - Win32 Debug"


"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\wwwquote.pch" : $(SOURCE) $(DEP_CPP_STDAF)\
 "$(INTDIR)"
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "_USRDLL" /Fp"$(INTDIR)/wwwquote.pch"\
 /Yc"stdafx.h" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /FD /c $(SOURCE)


!ELSEIF  "$(CFG)" == "WWWQuote - Win32 Static Release"


"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\wwwquote.pch" : $(SOURCE) $(DEP_CPP_STDAF)\
 "$(INTDIR)"
	$(CPP) /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D\
 "_USRDLL" /D "_WINDLL" /D "_MBCS" /Fp"$(INTDIR)/wwwquote.pch" /Yc"stdafx.h"\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /FD /c $(SOURCE)


!ELSEIF  "$(CFG)" == "WWWQuote - Win32 Static Debug"


"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\wwwquote.pch" : $(SOURCE) $(DEP_CPP_STDAF)\
 "$(INTDIR)"
	$(CPP) /nologo /MTd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /D "_USRDLL" /D "_WINDLL" /D "_MBCS" /Fp"$(INTDIR)/wwwquote.pch" /Yc"stdafx.h"\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /FD /c $(SOURCE)


!ENDIF 

SOURCE=.\WWWQuote.cpp
DEP_CPP_WWWQU=\
	".\Queries.h"\
	".\StdAfx.h"\
	".\WWWQuote.h"\
	

!IF  "$(CFG)" == "WWWQuote - Win32 Release"


"$(INTDIR)\WWWQuote.obj" : $(SOURCE) $(DEP_CPP_WWWQU) "$(INTDIR)"\
 "$(INTDIR)\wwwquote.pch"


!ELSEIF  "$(CFG)" == "WWWQuote - Win32 Debug"


"$(INTDIR)\WWWQuote.obj" : $(SOURCE) $(DEP_CPP_WWWQU) "$(INTDIR)"\
 "$(INTDIR)\wwwquote.pch"


!ELSEIF  "$(CFG)" == "WWWQuote - Win32 Static Release"


"$(INTDIR)\WWWQuote.obj" : $(SOURCE) $(DEP_CPP_WWWQU) "$(INTDIR)"\
 "$(INTDIR)\wwwquote.pch"


!ELSEIF  "$(CFG)" == "WWWQuote - Win32 Static Debug"


"$(INTDIR)\WWWQuote.obj" : $(SOURCE) $(DEP_CPP_WWWQU) "$(INTDIR)"\
 "$(INTDIR)\wwwquote.pch"


!ENDIF 

SOURCE=.\WWWQuote.def
SOURCE=.\WWWQuote.rc
DEP_RSC_WWWQUO=\
	".\HTML\issueerr.htm"\
	".\HTML\Next.htm"\
	".\HTML\Prev.htm"\
	".\HTML\quoteerr.htm"\
	".\HTML\quothead.htm"\
	".\HTML\Selhead.htm"\
	".\HTML\Seltail.htm"\
	".\HTML\welcome.htm"\
	".\res\WWWQuote.rc2"\
	

!IF  "$(CFG)" == "WWWQuote - Win32 Release"


"$(INTDIR)\WWWQuote.res" : $(SOURCE) $(DEP_RSC_WWWQUO) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "WWWQuote - Win32 Debug"


"$(INTDIR)\WWWQuote.res" : $(SOURCE) $(DEP_RSC_WWWQUO) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "WWWQuote - Win32 Static Release"


"$(INTDIR)\WWWQuote.res" : $(SOURCE) $(DEP_RSC_WWWQUO) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "WWWQuote - Win32 Static Debug"


"$(INTDIR)\WWWQuote.res" : $(SOURCE) $(DEP_RSC_WWWQUO) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


!ENDIF 

SOURCE=.\Queries.h
SOURCE=.\StdAfx.h
SOURCE=.\WWWQuote.h
SOURCE=.\res\WWWQuote.rc2

!ENDIF 

