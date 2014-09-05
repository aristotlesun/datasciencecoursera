addInData <- function() {
  data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
  data1 <- rbind(data[data$Date == "1/2/2007", ], data[data$Date == "2/2/2007", ])
  } ## execute this function first to load data

## Open up PNG
png(file = "plot1.png")

## Plot Histogram with specified parameters
hist(data1$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")

## Close up PNG
dev.off()