<#RandPass
Outputs a random password guaranteed to contain one char from each of the defined pools.
Created by: Erick Mcghee
            mcgheee@etsu.edu
#>
#Define character pools
$Upper=@("A","B","C","D","E","F","G","H","J","K","L","M","N","P","Q","R","S","T","U","V","W","X","Y","Z")
$Lower=@("a","b","c","d","e","f","g","h","j","k","m","n","o","p","q","r","s","t","u","v","w","x","y","z")
$Num=@("2","3","4","5","6","7","8","9")
$Sym=@("!","^","-","_","+",":","?",".","~")
#Define Password Length
$length = 12
#Initialize Password Array
$sequence =@()
#Initialize Password String
$pw=""
#Get one character from each character pool
$sequence += Get-Random $Upper
$sequence += Get-Random $Lower
$sequence += Get-Random $Num
$sequence += Get-Random $Sym
#Fill in the rest of the sequence at random
for ($i=4;$i -lt $length;$i++){$sequence += Get-Random -input ($Upper+$Lower+$Num+$Sym)}
#Randomize the sequence
$sequence = $sequence | Sort-Object {Get-Random}
#Convert the sequence to a string
foreach ($char in $sequence){$pw+=$char}
#Return the password as a string
return $pw
