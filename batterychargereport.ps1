$filename = Get-WmiObject win32_bios | select Serialnumber

powercfg /batteryreport /output "D:\Reports\$filename.html"

$charge = Get-CimInstance -ClassName Win32_Battery | Select-Object -ExpandProperty EstimatedChargeRemaining

"Current Charge: $charge %."

Start-Sleep -Seconds 60
