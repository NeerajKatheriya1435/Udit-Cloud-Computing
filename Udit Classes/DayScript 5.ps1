
# write a ptogram to check wheather number positive negative or zero

$a=0

if($a -gt 0){
Write-Host "Number is Positive"
}

elseif($a -lt 0){
Write-Host "Number is Negative"
}
else{
Write-Host "Number is 0"
}

$value=36

switch($value){
    1 {Write-Host "Sunday"}
    2 {Write-Host "Monday"}
    3 {Write-Host "Tuesday"}
    4 {Write-Host "Wednesday"}
    default {Write-Host "Please Choose number between 1 to 4"}
}

$a=6
$b=4

$c="+"

switch($c){
    "+" {Write-Host "The Sum is: $($a+$b) "}
    "-" {Write-Host "The Sub is: $($a-$b)"}
    "*" {Write-Host "The Mul is: $($a*$b)"}
    "/" {Write-Host "The Div is: $($a/$b)"}
    }

# $i=1
# sum of number 

# find factirial and prime number problem

$sum=0
for ($i=1;$i -lt 6;$i++){
    $sum+=$i;
}

Write-Host "The sum is: $sum"

$a=1

while($a -lt 6){
Write-Host "Number is: $a"
$a++
}

$b=13
do{
Write-Host $b
$b++
}while($b -lt 6)

