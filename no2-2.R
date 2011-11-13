library(cluster)
cluster_count<-read.table("stdin", nrows=1)$V1;
filename<-paste("no2_", cluster_count, ".eps", sep="")
postscript(filename, horizontal=FALSE, height=9, width=14, pointsize=15)
x<-rbind(matrix(rnorm(100, sd = 0.3), ncol = 2), matrix(rnorm(100, mean = 1, sd = 0.3), ncol = 2))
cl<-kmeans(x, cluster_count, 20)
plot(x, col = cl$cluster)
points(cl$centers, col = 1:2, pch = 8)
