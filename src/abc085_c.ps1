[int]$n, [int]$y = ([string]$input).split(" ")

# dummy
$arr = 0..$n |`
    %{$x=$_; 0..($n-$x) |`
        ?{$x * 10000 + $_ * 5000 + ($n - $x - $_) * 1000 -eq $y} |`
        %{@($x, $_, [int]($n - $x - $_))}
    }
$ret = if($arr.length -eq 0) {@(-1,-1,-1)} else {$arr[0..2]}
$ret -join " "
