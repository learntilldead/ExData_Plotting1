data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

subdata <- data[(data$Date == '1/2/2007' | data$Date == '2/2/2007'),]

subdata$DateTime <- strptime(paste(subdata$Date, subdata$Time), "%d/%m/%Y %H:%M:%S")

png('plot3.png', width=480, height=480)

plot(subdata$DateTime, subdata$Sub_metering_1, type='l', col='black',
     xlab='', 
     ylab='Energy sub metering')
lines(subdata$DateTime, subdata$Sub_metering_2, type='l', col='red')
lines(subdata$DateTime, subdata$Sub_metering_3, type='l', col='blue')
legend('topright', lty=1, col=c('black', 'red', 'blue'), 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))

dev.off()