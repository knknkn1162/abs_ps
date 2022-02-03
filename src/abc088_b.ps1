[string[]]$input2 = $input |%{[string]$_}
#$n = [int]$input2[0]
[int[]]$arr = [int[]]$input2[1].split(" ")
$arr = $arr | sort -desc
$ret = (0..$arr.length) |`
    group {$_ % 2} |`
    %{($_.Group | %{$arr[$_]} | measure -sum).Sum}
$ret[0] - $ret[1]
