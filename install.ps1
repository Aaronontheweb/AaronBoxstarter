# Common development tools
. "$PSScriptRoot\common.ps1"

# Personal apps
choco install dropbox -y
choco install screentogif -y
choco install slack -y
choco install discord -y

# Infrastructure
choco install pulumi -y

# Data tools
choco install sql-server-management-studio -y

# Visual Studio 2022 Installation
choco install visualstudio2022professional -y

# Ruby Version Manager and Ruby Installation
choco install rbenv -y
rbenv install 3.3.7
rbenv global 3.3.7

wsl --install

Update-Help
Install-WindowsUpdate
