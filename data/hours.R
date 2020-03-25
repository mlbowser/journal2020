## Calculate hours.

hrs <- read.csv("hours.csv", colClasses="character")
hrs$start <- as.POSIXlt(hrs$start)
hrs$stop <- as.POSIXlt(hrs$stop)
hrs$dif <- hrs$stop - hrs$start
hrs$date <- as.Date(hrs$start)

ag <- aggregate(hrs$dif, by=list(hrs$date), FUN=sum)
names(ag) <- c("date", "hours")
ag$hours <- ag$hours/60

## Save this.
write.csv(ag, "hours_agg.csv", row.names=FALSE)

ag
