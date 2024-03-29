data <- read.csv("household_power_consumption.txt", sep=";")
> 
> subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
> 
> datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
> 
> globalActivePower <- as.numeric(subSetData$Global_active_power)