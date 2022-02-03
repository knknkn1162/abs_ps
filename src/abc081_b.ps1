[string[]]$input2 = $input |%{[string]$_}
#$n = [int]$input2[0]
[int[]]$arr = [int[]]$input2[1].split(" ")

[bool[]]$arr = 0..31 |`
    %{[Math]::Pow(2, $_)} |`
    %{$num =$_; ($arr | ?{($_ % $num) -eq 0}).Count} |`
    %{$_ -eq $arr.Length}
$arr.indexOf($false) - 1
