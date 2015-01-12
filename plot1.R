# plot1.R
newdata <- subset(read.table("household_power_consumption.txt", header = TRUE, sep =";"), Date =="1/2/2007" | Date =="2/2/2007", select=Date:Sub_metering_3)
quartz()
hist(as.numeric(newdata$Global_active_power), col = "red", main = "Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png, file = "plot1.png", width = 480, height = 480, units = "px")
dev.off()