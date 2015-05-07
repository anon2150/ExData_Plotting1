#Plot 3 Code
source('load_data.r')

#### Plot 3   ##################################################################
################################################################################
png("plot3.png", width = 480, height = 480, units = "px")
plot(data$Datetime,
     data$Sub_metering_1,
     type = "n",
     ylab = "Energy sub metering",
     xlab = "")
legend("topright", 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = 1,
       lwd = 1,
       col = c('black', 'red', 'blue'))
lines(data$Datetime,
      data$Sub_metering_1,
      col = 'black')
lines(data$Datetime,
      data$Sub_metering_2,
      col = 'red')
lines(data$Datetime,
      data$Sub_metering_3,
      col = 'blue')
dev.off()
