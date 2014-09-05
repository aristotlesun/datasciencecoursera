addInData <- function() {
  data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
  data1 <- rbind(data[data$Date == "1/2/2007", ], data[data$Date == "2/2/2007", ])
  data2 <- paste(data1$Date, data1$Time)
  datatime <- strptime(data2, "%e/%m/%Y %H:%M:%S")
  data1 <- cbind(data1, datatime)
  } ## execute this function first to load data

## Open up PNG
png(file = "plot3.png")

## Plot Graph with specified parameters
with(data1, plot(datatime, Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = NA))
with(data1, points(datatime, Sub_metering_1, col = "black", type= "l"))
with(data1, points(datatime, Sub_metering_2, col = "red", type = "l"))
with(data1, points(datatime, Sub_metering_3, col = "blue", type = "l"))
legend("topright", lwd = TRUE, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


## Close up PNG
dev.off()