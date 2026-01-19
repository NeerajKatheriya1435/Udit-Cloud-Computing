
# function ageCalculator($c1,$c2){    
#    Write-Host "I am age calculator"
#    Write-Host "The age is: $($c2-$c1)"
#    return $($c2-$c1)
# }

# ageCalculator -c1 2002 -c2 2025

# $arr=5,6,8,3,5

# $arr[2]=67

# Write-Host $arr
# $names = "Ram", "Shyam", "Mohan"
# $names+="Anushka"

#Write-Host $names.Length

# $names = "Ram", "Shyam", "Mohan"

# foreach($var1 in $names){
# Write-Host $var1
# }

$arr=@(
@{name="Sumit";Age=56;College="SRMS"},
@{name="Aman";Age=78;College="SRMS"},
@{name="Rohit";Age=23;College="SRMS"}
)

Write-Host $arr[1].name