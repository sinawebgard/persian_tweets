if(!exists("mydata")){
        mydata <- read.csv("data/tweets_persian.csv", stringsAsFactors = FALSE)  
}
user.names <- unique(mydata$user_display_name)
a <- length(user.names)
user.info <- data.frame()
for (i in 1:a){
        temp <- mydata[mydata$user_display_name == 
                               user.names[i], c(2,3,4, 5, 6, 7, 8, 9, 10, 11)]
        user.info <- rbind(user.info, temp[1, ])

}
rm(list = c("temp", "a", "i", "user.names", "mydata"))