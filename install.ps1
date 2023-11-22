Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions
Set-TimeZone -Name "Central Standard Time" -Verbose

cinst cmder -y
cinst 7zip -y
cinst jetbrainstoolbox -y
cinst dotnet -y
cinst dotnet-6.0-sdk -y
cinst dotnet-8.0-sdk -y
cinst dotnetfx -y
cinst netfx-4.6.1-devpack -y
cinst dropbox -y
cinst sysinternals -y
cinst gpg4win -y
cinst brave -y
cinst paint.net -y
cinst gifcam -y
cinst vscode -y
cinst sublimetext3.app -y
cinst slack -y
cinst discord -y
cinst docker-desktop -y
cinst sqlitebrowser -y
cinst markdownpad2 -y
cinst linqpad -y
cinst windirstat -y
cinst pulumi -y
cinst azure-cli -y
cinst poshgit github-desktop -y
cinst winmerge kdiff3 -y

# Data tools
cinst azure-data-studio -y
cinst sql-server-management-studio -y

# Non-.NET development tools

cinst msys2 -y

# Ruby Version Manager and Ruby Installation
cinst rbenv -y
rbenv install 2.7.4 # Replace with the latest Ruby 2 version
rbenv install 3.1.2 # Replace with the latest Ruby 3 version
rbenv global 3.1.2

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

# Visual Studio 2022 Installation
cinst visualstudio2022professional -y

Update-Help
Install-WindowsUpdate
