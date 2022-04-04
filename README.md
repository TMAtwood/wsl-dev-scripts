# wsl-dev-scripts

The wsl-dev-scripts repository holds all scripts related to building Ubuntu 20.04 development environments in Windows Subsystem for Linux (WSL).

## Prerequisites

IMPORTANT!!  These prerequisites are required before running the scripts in this repository:

### Step 1.  Configure git correctly

In Windows, make sure the git config file has been setup so the core.autocrlf setting is set to "input".  This can be done at the git command-line or by editing the git config directly:

**Command-line**

```bash
$ git config --global core.autocrlf = input
```

**Example git config file for Windows 10 version 1903 or higher versions**

```bash
[user]
        email = <YOUR_EMAIL_HERE>
        name = <YOUR_NAME_HERE>
[core]
        autocrlf = input
[color]
        diff = auto
        status = auto
        branch = auto
        interactive = auto
        ui = true
        pager = true
[color "status"]
        add = green
        added = green
        branch = yellow bold
        changed = red bold
        deleted = red
        nobranch = red bold reverse
        untracked = magenta
[color "branch"]
        current = yellow reverse
        remote = green
        local = yellow
[color "diff"]
        meta = yellow bold
        frag = magenta bold
        old = red bold
        new = green bold
```

### Step 2.  Setup Docker Desktop for WSL access

Docker Desktop can be installed using the following [Chocolatey](https://chocolatey.org) command from an elevated PowerShell console:

```PowerShell
PS> choco install docker-desktop
```

The above setup for Docker Desktop requires Chocolatey to be installed.  Please follow the above link to get instructions on how to install Chocolatey if it is not installed.

### Step 3.  Install Windows Subsystem for Linux (WSL) and Ubuntu 20.04

**Step 3a.  Install Windows Subsystem for Linux(WSL)**

WSL can be installed from an elevated PowerShell console with the following command:

```PowerShell
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```

Restart the computer when prompted.

**Step 3b.  Go to the Microsoft Store to get the Ubuntu 20.04 application.**

Type "Ubuntu 20.04" into the Windows search field in the lower left hand corner of the Windows screen.  It should show "Ubuntu 20.04 - Trusted Micorosft Store App".  Select the button and once at the Microsoft Store, get the app and when prompted to launch it, please do so.  Once installed, it will ask for a UNIx username and password.  Please enter your desired values at this time.

### Step 4.  Clone **wsl-dev-scripts** and run the install script

Go to whichever directory you use to keep git repos on your laptop.  Please clone the **wsl-dev-scripts** git repository:

```bash
$ git clone https://github.com/TMAtwood/wsl-dev-scripts.git
```

Start WSL from the PowerShell or Windows command-line:

```PowerShell
PS> ubuntu2004
```

Once at the Ubuntu 20.04 command-line, run the  ***ubuntu-install-all.sh*** script to install all dependencies for WSL.  Please note that the script takes approximately 45 minutes to complete.

## License

Project is licensed under the [MIT License](LICENSE.md).  Please read [LICENSE.md](LICENSE.md) for all licensing details.

&copy; 2021 T.M.Atwood and Company.  All rights reserved.
