#Plot 2 Code
source('load_data.r')

#### Plot 2   ##################################################################
################################################################################
png("plot2.png", width = 480, height = 480, units = "px")
plot(data$Datetime, data$Global_active_power,  
     type = "l",
     col = "black",
     ylab = "Global Active Power (kilowats)",
     xlab = "")
dev.off()
