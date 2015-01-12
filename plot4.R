# plot4.R
newdata <- subset(read.table("household_power_consumption.txt", header = TRUE, sep =";"), Date =="1/2/2007" | Date =="2/2/2007", select=Date:Sub_metering_3)
quartz()
par(mfrow = c(2,2))
with(newdata, {
  plot(as.numeric(newdata$Global_active_power), type = "l", ylab="Global Active Power (kilowatts)")
  plot(as.numeric(newdata$Voltage), type = "l", ylab="Voltage",  xlab="datetime")
  #plot3 starts
  plot(as.numeric(newdata$Sub_metering_1), type="l",col="black")
  points(as.numeric(newdata$Sub_metering_2),type="l",col="red")
  points(as.numeric(newdata$Sub_metering_3),type="l",col="blue")
  legend("topright", pch = 4, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  #plot3 ends
  plot(as.numeric(newdata$Global_reactive_power), type = "l", ylab="Global_reactive_power", xlab="datetime")
})
dev.copy(png, file = "plot4.png", width = 480, height = 480, units = "px")
dev.off()