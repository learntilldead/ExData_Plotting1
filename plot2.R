data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

subdata <- data[(data$Date == '1/2/2007' | data$Date == '2/2/2007'),]

subdata$DateTime <- strptime(paste(subdata$Date, subdata$Time), "%d/%m/%Y %H:%M:%S")

png('plot2.png', width=480, height=480)

plot(subdata$DateTime, subdata$Global_active_power, type='l', 
     xlab='', 
     ylab='Global Active Power (kilowatts)')

dev.off()