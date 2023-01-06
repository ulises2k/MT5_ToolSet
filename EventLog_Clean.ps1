#Windwos 2008
Set-ExecutionPolicy RemoteSigned
# Clean All events
Get-EventLog -LogName * | ForEach { Clear-EventLog $_.Log }