# AaronBoxstarter

A [Boxstarter](https://boxstarter.org/) template for provisioning Windows development machines.

## Scripts

- **`common.ps1`** - Shared tooling installed on all machines (SDKs, editors, CLI tools, git config, etc.)
- **`install.ps1`** - Full development workstation setup. Includes everything in `common.ps1` plus personal apps, Visual Studio, Ruby, WSL, and Windows Update.
- **`guest-windows.ps1`** - Lightweight guest VM setup. Runs `common.ps1` only.

## Installation

### Option 1: Browser launcher (easiest)

Open this URL in a browser on a fresh Windows machine:

**Full install:**

```
https://boxstarter.org/package/nr/url?https://raw.githubusercontent.com/Aaronontheweb/AaronBoxstarter/master/install.ps1
```

**Guest VM:**

```
https://boxstarter.org/package/nr/url?https://raw.githubusercontent.com/Aaronontheweb/AaronBoxstarter/master/guest-windows.ps1
```

### Option 2: PowerShell

First, install Boxstarter (run as Administrator):

```powershell
Set-ExecutionPolicy RemoteSigned -Force
iwr https://boxstarter.org/bootstrapper.ps1 | iex; Get-Boxstarter -Force
```

Then run a script:

```powershell
Install-BoxstarterPackage -PackageName https://raw.githubusercontent.com/Aaronontheweb/AaronBoxstarter/master/install.ps1 -DisableReboots
```

## Post-Install

- **GPG signing**: You still need to generate a GPG key and register it with GitHub. See [GitHub's GPG guide](https://docs.github.com/en/github/authenticating-to-github/telling-git-about-your-signing-key).
- **Oh My Posh**: Set your Windows Terminal font to `CaskaydiaCove Nerd Font` for glyph support, then configure your preferred Oh My Posh theme.
