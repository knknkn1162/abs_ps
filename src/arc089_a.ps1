[string[]]$input2 = $input | %{[string]$_}
$n = $input2[0]
$arr = @(,@(0,0,0))
$arr += @( $input2[1..$n] | %{ ,([int[]]$_.split(" ")) } )

$diffs = @(1..($arr.length-1) |`
    # @(time_diff, dist)
    %{ ,@(($arr[$_][0] - $arr[$_ - 1][0]),
        ([Math]::abs($arr[$_][1] - $arr[$_ - 1][1]) + [Math]::abs($arr[$_][2] - $arr[$_ - 1][2])))
    } |`
    ?{ $_[0] -ge $_[1] } |`
    ?{ ($_[1] + $_[0] ) % 2 -eq 0}
)

if($diffs.length -eq $n){"Yes"} else {"No"}
