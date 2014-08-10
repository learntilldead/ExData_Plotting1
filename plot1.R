data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

subdata <- data[(data$Date == '1/2/2007' | data$Date == '2/2/2007'),]

png('plot1.png', width=480, height=480)

hist(subdata$Global_active_power, breaks=12, col='red', 
     xlab='Global Active Power (kilowatts)', 
     ylab='Frequency', 
     main='Global Active Power')

dev.off()