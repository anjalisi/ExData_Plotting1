
## Converting the txt file to a data frame
householdData <- read.delim(file = "E:/MLUsingR/Coursera/Peer graded Assignment Course Project 1/ExData_Plotting1/consumption.txt", header = TRUE, sep = ";")
#Change classes of Data's 3:8 columns
householdData[,3] <- as.numeric(householdData[,3])
householdData[,4] <- as.numeric(householdData[,4])
householdData[,5] <- as.numeric(householdData[,5])
householdData[,6] <- as.numeric(householdData[,6])
householdData[,7] <- as.numeric(householdData[,7])
householdData[,8] <- as.numeric(householdData[,8])

#Checking the type
typeof(householdData$Global_active_power)

#Construction the first plot
hist(householdData$Global_active_power, breaks = 12,col="red", main="Global Active Power", xlab = "Global Active Power (kilowatts)")

#Saving as png
png("plot1.png",width= 480, height= 480)
hist(householdData$Global_active_power, breaks = 12,col="red", main="Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
