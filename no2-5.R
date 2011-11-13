library(twitteR)
tweets<-userTimeline("giginet", n=3200)
clients<-c()
for(i in 1:length(tweets)){
  src<-tweets[[i]]$toDataFrame()$statusSource
  src<-gsub("<.*?>", "", src)
  clients<-append(clients, src)
}
length(clients)
group<-factor(clients)
levels(group)
pie(table(group), labels=levels(group), col=rainbow(10))
table(group)
