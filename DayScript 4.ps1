# $a="Shivam Udit";
# [int] $var1=5;
# [int] $var2=8;

# Write-Host "This is my String and value of: $($var1+$var2).GetType()";

[String] $str1="Shivam";
[String] $str2="Kumar";

# Write-Host "The name is: $($str1+" "+$str2)"

# Write-Host ($str1 -eq $str2);
# Write-Host ($str1 -ne $str2);
# Write-Host ($str1 -like "S*")
# Write-Host ($str1 -notlike "Sh*")

# Write-Host ($str1 -match "vaam")
# Write-Host ($str1 -notmatch "vam")

# $arr=@(3,5,7,8,9);

# Write-Host $($arr -contains 9)
# Write-Host $($arr -notcontains 93)

# Write-Host $(3 -in $arr)
# Write-Host $(3 -notin $arr)

[int] $a=45;
# $b="78";

# Write-Host $($a -is [int])
# Write-Host $($b -is [String])

# $c=[int]$b

# Write-Host $c
# Write-Host "The sum is: $($($a+$b).GetType())";

# Bitwise Operators
$a=5
$b=3

Write-Host "Bitwise AND: " ($a -band $b)
Write-Host "Bitwise OR: " ($a -bor $b)
Write-Host "Bitwise XOR: " ($a -bxor $b)
Write-Host "Bitwise NOT of a: " (-bnot $a)
Write-Host "Left Shift: " ($a -shl 1)
Write-Host "Right Shift: " ($a -shr 1)