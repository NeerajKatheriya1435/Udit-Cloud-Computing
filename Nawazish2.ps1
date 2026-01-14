
# [int] $var1 = 78
# Write-Host "The value is : $var1"

# [int] $var2 = 708
# Write-Host "The value is : $var2"

# [float] $var1 = 78.56
# Write-Host "The value is : $var1"

# [double] $var2 = 708.56778
# Write-Host "The value is : $var2"

# [string] $str1 = "John The Avenger"
# Write-Host "My name is : $str1"

# [bool] $bool1 = $true
# Write-Host "My boolean value is : $bool1"

$arr = @(4,6,8,8,4,3)
Write-Host "My Array Value is : $arr"

$dict1 = @({Apple="Red Fruit";Guawa="Green Fruit";Age=67})
Write-Host $dict1.GetType()
Write-Host "My Array value is : $dict1)"
Write-Host "My Array type is : $($dict1.GetType())"
# foreach ($item in $dict1){
#    Write-Host "The value of item is: $item"
# }