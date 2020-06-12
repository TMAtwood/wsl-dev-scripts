#!/usr/bin/env pwsh -Command
# Install PowerShell Modules

Write-Output "Running installation of PowerShell Modules..."

Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted

# Install Pester
Write-Output "Installing Pester..."
Install-Module -Name pester -AllowClobber -Force

# Install SQL Server Tools
Write-Output "Installing SQL Server tools..."
Install-Module -Name SqlServer -AllowClobber -Force

# Install dbatools
Write-Output "Installing dbatools..."
Install-Module -Name dbatools -AllowClobber -Force

# Install MySQL Cmdlets
Write-Output "Installing MySQL Cmdlets..."
Install-Module -Name MySQLCmdlets -AllowClobber -Force

Write-Output "PowerShell Modules installation complete."
