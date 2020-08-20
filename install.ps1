Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions
Set-TimeZone -Name "Central Standard Time" -Verbose

cinst cmder -y
cinst dotnetcore-sdk -y
cinst dotnetfx -y
cinst dotnet4.6.1 -y 
cinst dropbox -y
cinst sysinternals -y
cinst poshgit github-desktop -y
cinst gpg4win -y
cinst googlechrome -y
cinst vscode -y
cinst sublimetext3.app -y
cinst slack -y
cinst docker-desktop -y
cinst sqlitebrowser -y
cinst markdownpad2 -y
cinst windirstat -y
cinst pulumi -y
cinst azure-cli -y
cinst ruby -y
cinst tortoisemerge kdiff3 -y

refreshenv

git config --global --add merge.tool kdiff3
git config --global --add diff.guitool kdiff3

dotnet tool install --global pbm 

Update-Help
Install-WindowsUpdate