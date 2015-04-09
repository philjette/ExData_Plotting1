data<-read.csv("household_power_consumption.txt", sep=";", header=TRUE, na = "?")
data<-subset(data, Date ==  "1/2/2007" | Date == "2/2/2007")
data$Global_active_power<-as.numeric(data$Global_active_power)

#create a new var for both date and time
data$DT <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")


png(filename = "plot3.png", width = 480, height = 480)

plot(data$DT, data$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(data$DT, data$Sub_metering_2, col = "red")
lines(data$DT, data$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)

dev.off()