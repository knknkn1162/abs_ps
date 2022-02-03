[int]$n, [int]$a, [int]$b = ([string]$input).split(" ")

$arr = 1..$n | ?{
    $tmp=([char[]][string]$_ | %{[int][string]$_} | measure -sum).Sum
    $tmp -ge $a -and $tmp -le $b
}
($arr | measure -sum).Sum
