# Script que copia el templates en todos los MT5
# @ulises2k
#
#Windwos 2008
#Set-ExecutionPolicy RemoteSigned
$dir = Get-ChildItem  $env:USERPROFILE\AppData\Roaming\MetaQuotes\Terminal\| ? {$_.PSIsContainer}
$dirMT = $env:USERPROFILE+"\AppData\Roaming\MetaQuotes\Terminal\"

foreach ($d in $dir){
	
	if (($d.Name -ne "Community") -and ($d.Name -ne "Common") -and ($d.Name -ne "Help")) {

		$DirIndicador = $dirMT + [string]$d.Name + "\MQL5\Profiles\Templates\"
		if (Test-Path -Path $DirIndicador) {
			Copy-Item -Path "Default.tpl" -Destination $DirIndicador
		}		
	}
}

#Windows 2008
#Set-ExecutionPolicy Restricted
# Clean All events
#Get-EventLog -LogName * | ForEach { Clear-EventLog $_.Log }