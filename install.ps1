Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions
Set-TimeZone -Name "Central Standard Time" -Verbose

cinst cmder -y
cinst dotnetcore-sdk -y
cinst dotnetfx -y
cinst netfx-4.6.1-devpack -y
cinst dropbox -y
cinst sysinternals -y
cinst poshgit github-desktop -y
cinst gpg4win -y
cinst googlechrome -y
cinst vscode -y
cinst sublimetext3.app -y
cinst slack -y
cinst docker-desktop -y
cinst docker-kitematic -y
cinst sqlitebrowser -y
cinst markdownpad2 -y
cinst windirstat -y
cinst pulumi -y
cinst azure-cli -y
cinst winmerge kdiff3 -y

# Non-.NET development tools

cinst mingw -y
cinst ruby -y
cinst adoptopenjdk11jre -y
cinst adoptopenjdk11 -y
cinst sbt -y #Scala build tool

refreshenv

git config --global --add merge.tool kdiff3
git config --global --add diff.guitool kdiff3

# NOTE: still need to create a GPG key before signing will work.
# SEE: https://docs.github.com/en/github/authenticating-to-github/telling-git-about-your-signing-key
git config --global gpg.program "C:\Program Files (x86)\GnuPG\bin\gpg.exe"
git config --global commit.gpgsign true

dotnet tool install --global pbm 

dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

Update-Help
Install-WindowsUpdate
