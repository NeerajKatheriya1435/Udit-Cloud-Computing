
# $value=1

# switch($value){
#    1 {Write-Host "Today is Monday"}
#    2 {Write-Host "Today is Monday"}
#    default {Write-Host "Please Enter between 1 to 2"}
# }

for($i=1; $i -lt 10; $i++){
    if($i -eq 5 -or $i -eq 8){
    continue
    }
    Write-Host $i
}

# $i=1

# while($i -lt 11){
#    Write-Host $i
#    $i++
#    }

# $i=341
# do{
# Write-Host $i
# $i++
# }while($i -lt 11)

$i=1
$sum=0
while($i -lt 11){
    $sum=$sum+$i
    $i++
}

Write-Host "The sum is $sum"

$arr=@("Aman","Suman","Rohan")

foreach ($item in $arr){
Write-Host $item
}

#$i=1
#do{
#    if($i -eq 5){
#        
#        continue
#        }
#    Write-Host $i
#    $i++
# }until($i -eq 11)




