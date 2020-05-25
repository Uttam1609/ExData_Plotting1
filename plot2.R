elec_data <- read.table("./data/household_power_consumption.txt", sep = ";", header = TRUE)
elec_data <- elec_data[which(as.character(elec_data$Date) == "1/2/2007" | as.character(elec_data$Date) == "2/2/2007"), ]
elec_data <- transform(elec_data, datetime = paste(Date, Time, sep = " "))
elec_data <- transform(elec_data, Global_active_power = as.numeric(as.character(Global_active_power)))
elec_data <- transform(elec_data, datetime = strptime(datetime, format = "%d/%m/%Y %H:%M:%S"))
with(elec_data, plot(datetime, as.numeric(Global_active_power), type = "l", ylab = "Global active power (kilowatts)"))
dev.copy(png, "plot2.png")
dev.off()