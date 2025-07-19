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
choco install sysinternals -y
choco install gpg4win -y
choco install brave -y
choco install paint.net -y
choco install vscode -y
choco install sublimetext3.app -y
choco install docker-desktop -y
choco install sqlitebrowser -y
choco install linqpad -y
choco install windirstat -y
choco install azure-cli -y
choco install poshgit github-desktop -y
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