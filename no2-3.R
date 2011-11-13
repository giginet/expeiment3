library(cluster)
characters<-c('Ami Hutami', 'Makoto Kikuchi', 'Iori Minase', 'Miki Hosii', 'Yukiho Ogiwara', 'Azusa Miura', 'Chihaya Kisaragi')
d<-matrix(c(0, 3, 5.5, 5, 3, 6, 8,
            3, 0, 2, 4.5, 5.6, 0.3, 3.1,
            5.5, 2, 0, 1, 3.3, 5.6, 4,
            5, 4.5, 1, 0, 4, 9, 5)
, 7, 7)
dd<-as.dist(d)
hc<-hclust(dd, method="single")
postscript("no2-3-single.eps", horizontal=FALSE, height=9, width=14, pointsize=15)
plclust(hc, labels=characters)
hc<-hclust(dd, method="complete")
postscript("no2-3-complete.eps", horizontal=FALSE, height=9, width=14, pointsize=15)
plclust(hc, labels=characters)
