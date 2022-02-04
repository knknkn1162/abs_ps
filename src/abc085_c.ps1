[int]$n, [int]$y = ([string]$input).split(" ")

# dummy
$arr = @(,@(-1,-1,-1))
$arr += @(0..$n |`
    %{$x=$_; 0..($n-$x) |`
        ?{$x * 10000 + $_ * 5000 + ($n - $x - $_) * 1000 -eq $y} |`
        %{,@($x, $_, [int]($n - $x - $_))}
    }
)
$arr[-1] -join " "
