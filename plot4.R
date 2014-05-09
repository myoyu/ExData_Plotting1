data = read.csv("household_power_consumption.txt",sep=";");
dates = strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S');
par(mfrow=c(2,2));
plot(dates, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)");
plot(dates, data$Voltage, type="l", xlab="datetime", ylab="Voltage");
plot(dates, data$Sub_metering_1, type="l", xlab="", ylab="Energy Sub Metering");
legend('topright', c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c('black', 'red', 'blue'), bty='n', cex=.75)
lines(dates, data$Sub_metering_2, type="l", pch=22, lty=1, col="red");
lines(dates, data$Sub_metering_3, type="l", pch=22, lty=1, col="blue");
plot(dates, data$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power");
dev.copy(png,file="plot4.png",width = 480, height = 480);
dev.off();