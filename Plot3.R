#Getting the data
data <- read.delim(file = "E:/MLUsingR/Coursera/Peer graded Assignment Course Project 1/ExData_Plotting1/consumption.txt", header = TRUE, sep = ";")

#Getting the dates required
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

subMeter1 <- as.numeric(subSetData$Sub_metering_1)
subMeter2 <- as.numeric(subSetData$Sub_metering_2)

str(subSetData)
png("plot3.png", width=480, height=480)
plot(datetime, subMeter1, type="l", xlab = "", ylab = "Energy Submetering")
lines(datetime, subMeter2, type="l", col="red")
lines(datetime, subSetData$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd= 2, col=c("black","red", "blue"))
dev.off()
