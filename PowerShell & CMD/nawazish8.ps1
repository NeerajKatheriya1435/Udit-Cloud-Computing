
# $num1 = 7
# $num2 = 8

# Write-Host $($num1 + $num2)

# $num3 = 9
# $num4 = 3

# Write-Host $($num3 + $num4)

# function greet() {
#     Write-Host "Good Morning"
# }

# greet

# function addTwoNum($num1, $num2) {
#     Write-Host "Sum of two num is: $($num1+$num2)"
# }

# function mulTwoNum($num1, $num2) {
#     Write-Host "Multiplication of two num is: $($num1*$num2)"
# }

# addTwoNum -num1 5 -num2 9
# mulTwoNum -num1 9 -num2 3

# function mulTwoNum($num1, $num2) {




#     # Write-Host "Multiplication of two num is: $($num1*$num2)"
#     return $($num1 * $num2)
# }

# Write-Host $(mulTwoNum -num1 9 -num2 3)

# $number1 = @(4, 5, 6, 7, 8, 9, 6, 6, 6, 76)

# Write-Host $number1
# Write-Host $number1[3]
# Write-Host $number1.Length

# foreach ($item in $number1) {
#     Write-Host $item
# }

$num1 = Read-Host "Enter first number"
$num2 = Read-Host "Enter second number"
$op = Read-Host "Enter operator +,-,*,/"

$num1 = [double] $num1
$num2 = [double] $num2

switch ($op) {
    "+" { Write-Host "The sum is: $($num1+$num2)" }
    "-" { Write-Host "The sub is: $($num1-$num2)" }
    "*" { Write-Host "The mul is: $($num1*$num2)" }
    "/" { Write-Host "The div is: $($num1/$num2)" }
    Default { Write-Host "Please input correct values" }
}
