# Load Data for Project 1 - Exploratory Data Analysis
#Load data
my.file <- "./data/household_power_consumption.txt"
my.data <- read.table(my.file, header = TRUE, sep = ";",
                      colClasses = c("character", "character", "numeric",
                                     "numeric", "numeric", "numeric",
                                     "numeric", "numeric", "numeric"),
                      na.strings = "?")
my.data <- within(my.data, Datetime <- as.POSIXlt(paste(Date, Time),
                                                  format = "%d/%m/%Y %H:%M:%S"))
data <- subset(my.data, Datetime >= "2007-02-01" & Datetime < "2007-02-03")
