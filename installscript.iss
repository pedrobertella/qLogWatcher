; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "LiveFile"
#define MyAppVersion "2.0"
#define MyAppPublisher "Pedro Bertella"
#define MyAppURL "https://github.com/pedrobertella/LiveFile"
#define MyAppExeName "LiveFile.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{F685C79B-C4AE-4656-9550-44E56A32B48F}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableDirPage=yes
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64
MinVersion=6.1.7601
LicenseFile=E:\Development\GitHub\LiveFile\LICENSE
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=commandline
OutputDir=C:\Users\pedro\Desktop
OutputBaseFilename=LiveFile v2.0
SetupIconFile=E:\Development\GitHub\LiveFile\icons\install.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
ChangesAssociations=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "E:\Downloads\LiveFile\LiveFile.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\Downloads\LiveFile\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Registry]
Root: HKLM; Subkey: "Software\Classes\.log"; ValueType: string; ValueName: ""; ValueData: "LiveFileLogFile"; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\LiveFileLogFile"; ValueType: string; ValueName: ""; ValueData: "LiveFile Log File"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\LiveFileLogFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\LiveFile.exe,0"
Root: HKLM; Subkey: "Software\Classes\LiveFileLogFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\LiveFile.exe"" ""%1"""
Root: HKLM; Subkey: "Software\Classes\.txt"; ValueType: string; ValueName: ""; ValueData: "LiveFileTextFile"; Flags: uninsdeletevalue
Root: HKLM; Subkey: "Software\Classes\LiveFileTextFile"; ValueType: string; ValueName: ""; ValueData: "LiveFile Text File"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\LiveFileTextFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\LiveFile.exe,0"
Root: HKLM; Subkey: "Software\Classes\LiveFileTextFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\LiveFile.exe"" ""%1"""