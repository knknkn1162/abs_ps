[int[]]$inputs = $input |%{[int]$_}
$a = $inputs[0]; $b = $inputs[1]; $c = $inputs[2]
$max = $inputs[3]
Write-Verbose -v (@($a, $b, $c, $max) -join ",")
$arr = 0..$a |`
    %{$aa=$_;0..$b |`
        %{$bb=$_;0..$c |`
            ?{$aa * 500 + $bb * 100 + $_ * 50 -eq $max}
        }
    }
$arr.length
