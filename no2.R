png()
points<-matrix(c(3, 4,
                 6, 3.3,
                 9, 2.2,
                 1.9, 0.7,
                 7.0, 0.4,
                 6.7, 1.4,
                 2.4, 5.6,
                 9.6, 6.7,
                 0.9, 6.4,
                 2.4, 1.3
), 10, 2)
points
x<-points[,1]
y<-points[,2]
plot(x, y, type='p')

d<-dist(points)
d

points2<-cmdscale(d)
points2
x2<-points2[,1]
y2<-points2[,2]
plot(x2, y2, type='p')
result<-dist(points2)
result
