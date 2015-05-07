#Plot 4 Code
source('load_data.r')

#### Plot 4   ##################################################################
################################################################################
png("plot4.png", width = 480, height = 480, units = "px")
par(mfcol = c(2,2))
#plot 1
plot(data$Datetime, data$Global_active_power,  
     type = "l",
     col = "black",
     ylab = "Global Active Power (kilowats)",
     xlab = "")
#plot 2
plot(data$Datetime,
     data$Sub_metering_1,
     type = "n",
     ylab = "Energy sub metering",
     xlab = "")
legend("topright", 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = 1,
       col = c('black', 'red', 'blue'),
       bty = "n")
lines(data$Datetime,
      data$Sub_metering_1,
      col = 'black')
lines(data$Datetime,
      data$Sub_metering_2,
      col = 'red')
lines(data$Datetime,
      data$Sub_metering_3,
      col = 'blue')
#plot 3
plot(data$Datetime, data$Voltage,  
     type = "l",
     col = "black",
     ylab = "Voltage",
     xlab = "datetime")
#plot 4
plot(data$Datetime, data$Global_reactive_power,  
     type = "l",
     col = "black",
     ylab = "Global_reactive_power",
     xlab = "datetime")
dev.off()