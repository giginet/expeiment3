X11()
x <- 1:10
y <- 1:10                # plot(x 軸のデータ, y 軸のデータ, オプション)
plot(x, y)               # 範囲は自動で決まる(xlim=c(1,10)を指定した場合と同じ)
plot(x, y, xlim=c(10,1))
repeat{
  Sys.sleep(1)
}
