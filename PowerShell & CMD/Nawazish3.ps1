# [float] $var1=56
# Write-Host "The value is: $var1"

# [bool] $var1=$false
# Write-Host "The value is: $var1"

# $array1=@(4,5,7,8,"Hindi",6,8,9,8.4567)
$array1=@(4,5,7,8,6,8,9)
Write-Host "The value is: $array1"
Write-Host $array1.GetType()

$array1=@{Name="Rohan";Age=67}
Write-Host "The value is: $($array1.Keys)"
Write-Host "The value is: $($array1.Values)"
Write-Host "The value is: $($array1.Item("Name"))"
Write-Host "The value is: $($array1.Item("Age"))"
Write-Host $array1.GetType()

[datetime]$dateTime = Get-Date

Write-Host "The time is: $dateTime"
Write-Host $dateTime.GetType()