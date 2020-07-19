#! /var/lib/snapd/snap/bin/pwsh

$Processes = Get-Process | Sort-Object -Property CPU -Descending | Select-Object -First 15         

$i = 0;

while ($true) {clear-host; $Processes | Out-Host; $i = $i + 1; Start-Sleep -s 1;}


