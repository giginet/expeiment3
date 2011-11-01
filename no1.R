X11()
d<-matrix(c(0, 3, 5, 5, 5, 3, 0, 2, 4, 5, 5, 5, 2, 0, 1, 5, 4, 5, 1, 0), 4, 4)
loc<-cmdscale(d)
loc
x<-loc[,1]
y<-loc[,2]
plot(x, y, type="n")
text(x, y, 1:4)
repeat{}
