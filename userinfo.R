if(!exists("mydata")){
        mydata <- read.csv("data/tweets_persian.csv", stringsAsFactors = FALSE)  
}
unique.users <- unique(mydata[, 2:11])
tweet_count <- vector(mode = "numeric")
for (i in 1:nrow(unique.users)){
        user_tweet_count <- nrow(mydata
                                 [mydata$userid == unique.users$userid[i], ])
        tweet_count <- rbind(tweet_count, user_tweet_count)

}
user.info <- cbind(unique.users, tweet_count)