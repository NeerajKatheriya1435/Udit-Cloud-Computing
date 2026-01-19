# $report = @()
# $report += "===== SYSTEM INFORMATION REPORT ====="
# $report += "Computer Name: $(hostname)"
# $report += "OS Version: $((Get-CimInstance Win32_OperatingSystem).Caption)"
# $report += "CPU: $((Get-CimInstance Win32_Processor).Name)"
# $report += "RAM (GB): $([Math]::Round((Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory/1GB, 0))"
# $outputFile = "./PowerShell_SystemReport.txt"

# $report | Out-File $outputFile
# Write-Host "Report created at: $outputFile"

# $var1=7

# $var1+=2

$source = "./Folder1"
$backup = "./MyFolder_$(Get-Date -Format yyyyMMdd)"
Copy-Item $source -Destination $backup -Recurse
Write-Host "Backup completed. Saved at $backup"