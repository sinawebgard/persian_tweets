if(!exists("mydata")){
        mydata <- read.csv("data/tweets_persian.csv", stringsAsFactors = FALSE)  
}
user.names <- unique(mydata$userid)
a <- length(user.names)
user.info <- data.frame()
for (i in 1:a){
        temp <- mydata[mydata$userid == 
                               user.names[i], 2:11]
        tweet_count <- length(mydata
                              [mydata$userid == user.names[i], 1])
        temp <- cbind(temp[1, ], tweet_count)
        user.info <- rbind(user.info, temp)

}
rm(list = c("a", "i", "tweet_count", "user.names", "temp"))