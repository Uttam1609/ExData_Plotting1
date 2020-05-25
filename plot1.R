elec_data <- read.table("./data/household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
elec_data <- elec_data[which(as.character(elec_data$Date) == "1/2/2007" | as.character(elec_data$Date) == "2/2/2007"), ]
hist(elec_data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.copy(png, file = "plot1.png")
dev.off()