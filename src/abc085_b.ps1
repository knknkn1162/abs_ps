[int[]]$arr = $input |%{[int]$_}
($arr[1..($arr.length-1)] | sort | unique).Length
