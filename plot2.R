data = read.csv("household_power_consumption.txt",sep=";");
dates = strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S');
plot(dates, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)");
dev.copy(png,file="plot2.png",width = 480, height = 480);
dev.off();