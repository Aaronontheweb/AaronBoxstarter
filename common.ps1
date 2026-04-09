Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem" -Name "LongPathsEnabled" -Value 1

choco install microsoft-windows-terminal -y
choco install 7zip -y
choco install jetbrainstoolbox -y
choco install dotnet-8.0-sdk -y
choco install dotnet-9.0-sdk -y
choco install dotnet-10.0-sdk -y
choco install netfx-4.8-devpack -y
choco install sysinternals -y
choco install gpg4win -y
choco install brave -y
choco install paint.net -y
choco install vscode -y
choco install sublimetext4 -y
choco install docker-desktop -y
choco install sqlitebrowser -y
choco install linqpad -y
choco install wiztree -y
choco install powershell-core -y
choco install oh-my-posh -y
choco install nerd-fonts-cascadiacode -y
choco install azure-cli -y
choco install poshgit github-desktop gh -y
choco install winmerge kdiff3 -y
choco install tailscale -y

# Non-.NET development tools
choco install msys2 -y

refreshenv

git config --global --add merge.tool kdiff3
git config --global --add diff.guitool kdiff3

# NOTE: still need to create a GPG key before signing will work.
# SEE: https://docs.github.com/en/github/authenticating-to-github/telling-git-about-your-signing-key
git config --global gpg.program "C:\Program Files (x86)\GnuPG\bin\gpg.exe"
git config --global commit.gpgsign true

dotnet tool install --global pbm
