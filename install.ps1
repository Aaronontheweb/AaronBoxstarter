Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem" -Name "LongPathsEnabled" -Value 1

choco install cmder -y
choco install 7zip -y
choco install jetbrainstoolbox -y
choco install dotnet -y
choco install dotnet-8.0-sdk -y
choco install dotnet-9.0-sdk -y
choco install dotnetfx -y
choco install netfx-4.6.1-devpack -y
choco install dropbox -y
choco install sysinternals -y
choco install gpg4win -y
choco install brave -y
choco install paint.net -y
choco install gifcam -y
choco install vscode -y
choco install sublimetext3.app -y
choco install slack -y
choco install discord -y
choco install docker-desktop -y
choco install sqlitebrowser -y
choco install markdownpad2 -y
choco install linqpad -y
choco install windirstat -y
choco install pulumi -y
choco install azure-cli -y
choco install poshgit github-desktop -y
choco install winmerge kdiff3 -y
choco install tailscale -y

# Data tools
choco install azure-data-studio -y
choco install sql-server-management-studio -y

# Non-.NET development tools
choco install msys2 -y

# Ruby Version Manager and Ruby Installation
choco install rbenv -y
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

Update-Help
Install-WindowsUpdate
