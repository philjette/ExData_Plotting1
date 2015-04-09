data<-read.csv("household_power_consumption.txt", sep=";", header=TRUE, na = "?")
data<-subset(data, Date ==  "1/2/2007" | Date == "2/2/2007")
data$Global_active_power<-as.numeric(data$Global_active_power)

#create a new var for both date and time
data$DT <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")


png(filename = "plot2.png", width = 480, height = 480)
plot(data$DT, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()