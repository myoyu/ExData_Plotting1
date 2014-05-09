data = read.csv("household_power_consumption.txt",sep=";");
hist(data$Global_active_power,col='red',xlab="Global Active Power (kilowatts)", main="Global Active Power");
dev.copy(png,file="plot1.png",width = 480, height = 480);
dev.off();