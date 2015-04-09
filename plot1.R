data<-read.csv("household_power_consumption.txt", sep=";", header=TRUE, na = "?")
data$Global_active_power<-as.numeric(data$Global_active_power)
data$Date<-as.Date(data$Date, "%d/%m/%Y")

data<-subset(data, Date >=  as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))

png(filename = "plot1.png", width = 480, height = 480)

hist(data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)",
     breaks = 12, ylim = c(0, 1200))
dev.off()