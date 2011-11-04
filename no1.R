#X11()
characters<-c('Ami Hutami', 'Makoto Kikuchi', 'Iori Minase', 'Miki Hosii', 'Yukiho Ogiwara', 'Azusa Miura', 'Chihaya Kisaragi')
d<-matrix(c(0, 3, 5.5, 5, 3, 6, 8,
            3, 0, 2, 4.5, 5.6, 0.3, 3.1,
            5.5, 2, 0, 1, 3.3, 5,6, 4,
            5, 4.5, 1, 0, 4, 9, 5)
, 7, 7)
loc<-cmdscale(d)
loc
x<-loc[,1]
y<-loc[,2]
plot(x, y, type="n")
text(x, y, characters)
#Sys.sleep(10)
