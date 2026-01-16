

# Write-Host $((5 -gt 2) -and (10 -lt 20))
# Write-Host $((5 -gt 2) -and (10 -gt 20))

# Write-Host $((5 -gt 2) -or (10 -lt 20))
# Write-Host $((5 -gt 2) -or (10 -gt 20))

# Write-Host $(-not(5 -gt 2))
# Write-Host $(!(5 -gt 2))

# $a = 5
# $a = $a + 7
# $a += 6
# $a -= 2
# $a *= 3
# $a /= 9

# Write-Host $a

# $str1 = "Suraj"
# $str2 = "Kumar"
# Write-Host $($str1 + " " + $str2)

# $str1 = "Suraj"
# $str2 = "Kumar"
# $str3 = "Suraj"

# Write-Host $($str1 -eq $str2)

# Write-Host $($str1 -ne $str3)

# $str1 = "nawazish@gmail.com"
# Write-Host $($str1 -like "*gmailll*")
# Write-Host $($str1 -notlike "*gmail*")
# Write-Host $($str1 -match "gmail")

# $arr1 = @(3, 5, 8, 0, 8, 4, 5, 7, 2, 1, 5)

# $arr2 = 0..9
# Write-Host $arr2
# Write-Host $($arr1 -contains 5)
# Write-Host $($arr1 -notcontains 5)
# Write-Host $(5 -in $arr1)
# Write-Host $(5 -notin $arr1)

# $a = 56

# Write-Host $($a -is [int])
# $a = 56

# $b = [float] $a
# Write-Host $($b -is [float])