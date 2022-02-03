[int]$a, [int]$b = ([string]$input).split(" ")
Write-Verbose -v (@($a, $b) -join ",")

if(($a * $b) % 2 -eq 0) {"Odd"} else {"Even"}
