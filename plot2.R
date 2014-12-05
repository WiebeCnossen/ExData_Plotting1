if (!exists("household_power_consumption")) source("household_power_consumption.R")

png("plot2.png")
plot(household_power_consumption$Global_active_power ~ household_power_consumption$DateTime,
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()