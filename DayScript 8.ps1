# Get-Content "D:\Cadd Mentor\Student_Class_Code\Udit Notes Cloud Computing\myContent.txt"

# Get-Service | ConvertTo-Json | Out-File "Service.json"
# Get-Service | ConvertTo-Csv | Out-File "Service1.csv"

# $n1=Read-Host "Enter the value"

# Write-Host $n1
# Write-Host $((Get-CimInstance Win32_OperatingSystem).Caption)
# Write-Host $((Get-CimInstance Win32_Processor).Name)

$report = @()
$report += "===== SYSTEM INFORMATION REPORT ====="
$report += "Computer Name: $(hostname)"
$report += "OS Version: $((Get-CimInstance Win32_OperatingSystem).Caption)"
$report += "CPU: $((Get-CimInstance Win32_Processor).Name)"
$report += "RAM (GB): $([math]::Round((Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1GB,2))"
$report += $disk = Get-WmiObject Win32_LogicalDisk -Filter "DeviceID='C:'" | Select-Object Size, FreeSpace
$outputFile = "D:\Cadd Mentor\Student_Class_Code\Udit Notes Cloud Computing\PowerShell_SystemReport.txt"
$report | Out-File $outputFile
Write-Host "Report created at: $outputFile"

$servers = @("google.com", "github.com", "bing.com","udit.com")
foreach ($s in $servers) {
if (Test-Connection -ComputerName $s -Count 1 -Quiet) {
Write-Host "$s is Online!" -ForegroundColor Blue
} else {
Write-Host "$s is Offline!" -ForegroundColor Red
}
}