# Atcoder Beginner Selection(ABS) @ PowerShell

+ See [the article](https://qiita.com/drken/items/fd4e5e3630d0f5859067) for details.

+ (Note) Atcoder testcases are [here](https://www.dropbox.com/sh/nx3tnilzqz7df8a/AAAYlTq2tiEHl5hsESw6-yfLa?dl=0), but each ABS problem is so old that testcases are not prepared. So we create testcases by each problem by hand.

# problems

+ see also log in circleCI job.

|#|problem|
|---|---|
|01|[ABC086_A](https://atcoder.jp/contests/abc086/tasks/abc086_a)|
|02|[ABC081_A](https://atcoder.jp/contests/abs/tasks/abc081_a)|
|03|[ABC081_B](https://atcoder.jp/contests/abc081/tasks/abc081_b)|
|04|[ABC087_B](https://atcoder.jp/contests/abc087/tasks/abc087_b)|
|05|[ABC083_B](https://atcoder.jp/contests/abc083/tasks/abc083_b)|
|06|[ABC088_B](https://atcoder.jp/contests/abc088/tasks/abc088_b)|
|07|[ABC085_B](https://atcoder.jp/contests/abc085/tasks/abc085_b)|
|08|[ABC085_C](https://atcoder.jp/contests/abc085/tasks/abc085_c)|
|09|[ARC065_A](https://atcoder.jp/contests/abc049/tasks/arc065_a)|
|10|[ARC089_A](https://atcoder.jp/contests/abc086/tasks/arc089_a)|

# requirements

+ powershell >= 5.1
+ `make` command
  + type `choco install make` in admin

# how to test

```ps
make run Q=abc086_a
# or test all problems:
make run-all
```
