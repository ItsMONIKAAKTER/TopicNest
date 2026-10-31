#define AppName "TopicNest"
#define AppVersion "3.0.1"
[Setup]
AppName={#AppName}
AppVersion={#AppVersion}
AppId=TopicNest-Python-Desktop
DefaultDirName={localappdata}\Programs\{#AppName}-Python
PrivilegesRequired=lowest
OutputDir=..\installers
OutputBaseFilename=TopicNest-Python-3.0.1-Windows-Setup
SetupIconFile=..\assets\app.ico
UninstallDisplayIcon={app}\TopicNest.exe
Compression=lzma2
SolidCompression=yes
WizardStyle=modern
[Tasks]
Name: desktopicon; Description: "Create a desktop shortcut"; GroupDescription: "Shortcuts:"
[Files]
Source: "..\dist\TopicNest\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
[Icons]
Name: "{autoprograms}\TopicNest (Python)"; Filename: "{app}\TopicNest.exe"; WorkingDir: "{app}"
Name: "{autodesktop}\TopicNest (Python)"; Filename: "{app}\TopicNest.exe"; WorkingDir: "{app}"; Tasks: desktopicon
[Run]
Filename: "{app}\TopicNest.exe"; Description: "Open TopicNest"; Flags: nowait postinstall skipifsilent
