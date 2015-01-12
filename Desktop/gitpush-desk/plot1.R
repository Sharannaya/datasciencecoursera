png("plot1.png", width = 480, height = 480)
datafile <- "household_power_consumption.txt"
tab5rows <- read.table(datafile, header = TRUE, sep =";", nrow = 5)
tabclasses <- sapply(tab5rows,class)
alldata <- read.table(datafile, header = TRUE, sep =";", colClasses = tabclasses,na.strings = "?")
smalldata <- alldata[alldata$Date %in% c("1/2/2007","2/2/2007"),]
plotdata <- smalldata$Global_active_power
x <- paste(smalldata[,1],smalldata[,2])
datetimecol <- strptime(x, "%d/%m/%Y %H:%M:%S")
hist(plotdata, col = "red", xlab = "Global Active Power (Kilowatts)", main = "Global Active Power")
dev.off()