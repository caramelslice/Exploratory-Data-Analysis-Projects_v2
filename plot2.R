# plot2.R
newdata <- subset(read.table("household_power_consumption.txt", header = TRUE, sep =";"), Date =="1/2/2007" | Date =="2/2/2007", select=Date:Sub_metering_3)
quartz()
plot(as.numeric(newdata$Global_active_power),  type = "l", ylab="Global Active Power (kilowatts)", xlab=" ", xaxt="n")
# axis(1, xaxp=c(0, 2500, 400))
dev.copy(png, file = "plot2.png", width = 480, height = 480, units = "px")
dev.off()