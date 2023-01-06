#Set-ExecutionPolicy RemoteSigned

Get-Service -Name Spooler
Stop-Service -Name Spooler -Force
Set-Service -Name Spooler -StartupType Disabled
Get-Service -Name Spooler

#Windows 2008
#Set-ExecutionPolicy Restricted
