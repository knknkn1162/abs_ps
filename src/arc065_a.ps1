[string]$str = [string]$input
$rarr = @("dream", "dreamer", "erase", "eraser") | %{-join ($_[$_.length..0])}

$len = $str.length
$str = -join $str[$len..0]
$rarr * ($len / 5) | %{
    if((-join $str[0..($_.length-1)]) -eq $_) {
        $str = (-join $str[($_.length)..$len])
    }
}
If($str.length -eq 0) { "YES" } else {"NO"}
