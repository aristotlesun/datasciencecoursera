addInData <- function() {
  data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
  data1 <- rbind(data[data$Date == "1/2/2007", ], data[data$Date == "2/2/2007", ])
  data2 <- paste(data1$Date, data1$Time)
  data3 <- strptime(data2, "%e/%m/%Y %H:%M:%S")
  data1 <- cbind(data1, data3)
  } ## execute this function first to load data


## Open up PNG
png(file = "plot2.png")

## Plot Scatterplot with specified parameters
plot(data1$data3, data1$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab=NA)

## Close up PNG
dev.off()