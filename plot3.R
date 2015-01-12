# plot3.R
newdata <- subset(read.table("household_power_consumption.txt", header = TRUE, sep =";"), Date =="1/2/2007" | Date =="2/2/2007", select=Date:Sub_metering_3)
quartz()
plot(as.numeric(newdata$Sub_metering_1), type="l",col="black")
points(as.numeric(newdata$Sub_metering_2),type="l",col="red")
points(as.numeric(newdata$Sub_metering_3),type="l",col="blue")
legend("topright", pch = 4, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png, file = "plot3.png", width = 480, height = 480, units = "px")
dev.off()