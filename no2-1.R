library(cluster)
d<-matrix(c(0.0, 3.0, 5.5, 5.0, 3.0, 0.0, 2.0, 4.5, 5.5, 2.0, 0.0, 1.0, 5.0, 4.5, 1.0, 0.0), 4, 4)
for(method in c("average", "ward", "centroid", "median")){
  filename<-paste("no2-1-", method, ".eps", sep="")
  postscript(filename, horizontal=FALSE, height=9, width=14, pointsize=15)
  dd<-as.dist(d)
  hc<-hclust(dd, method=method)
  plclust(hc)
}
