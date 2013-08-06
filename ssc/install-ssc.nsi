!include MUI2.nsh
!include EnvVarUpdate.nsh

name "Simple Shutdown Command - SSC"
OutFile "output\ssc-v2.5.exe"
installDir "$PROGRAMFILES\ssc"
BrandingText "Simple Shutdown Command V2.5 installer"

!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\modern-install-blue.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall-blue.ico"
!define MUI_HEADERIMAGE
!define MUI_HEADERIMAGE_BMP "${NSISDIR}\Contrib\Graphics\Header\nsis.bmp"
!define MUI_ABORTWARNING

!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_LICENSE "app\LICENSE.txt"
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
  
!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES
!insertmacro MUI_UNPAGE_WELCOME

!insertmacro MUI_LANGUAGE "English"

showInstDetails show
showUninstDetails show

section "install"
	setOutPath $INSTDIR
	CreateDirectory "$INSTDIR\exec"
	File "app\LICENSE.txt"
	File "app\changelog.txt"
	File "/oname=$INSTDIR\exec\ssc.exe"  "app\exec\ssc.exe"
	${EnvVarUpdate} $0 "PATH" "A" "HKLM" "$INSTDIR\exec"
	writeUninstaller "uninstall-ssc.exe"
sectionEnd

section "uninstall"
	setOutPath $INSTDIR
	delete "uninstall-ssc.exe"
	delete "LICENSE.txt"
	delete "changelog.txt"
	delete "exec\ssc.exe"
	${un.EnvVarUpdate} $0 "PATH" "R" "HKLM" "$INSTDIR\exec"
	setOutPath $PROGRAMFILES
	RMDir "$INSTDIR\exec"
	RMDir $INSTDIR
	setAutoClose true
sectionEnd