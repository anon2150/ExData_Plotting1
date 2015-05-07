#Plot 1 Code
source('load_data.r')

#### Plot 1   ##################################################################
################################################################################
png("plot1.png", width = 480, height = 480, units = "px")
hist(data$Global_active_power,
     xlab = "Global Active Power (kilowats)",
     ylab = "Frequency",
     main = "Global Active Power",
     col = 'red')
dev.off()
