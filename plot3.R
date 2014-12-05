if (!exists("household_power_consumption")) source("household_power_consumption.R")

png("plot3.png")
plot(household_power_consumption$Sub_metering_1 ~ household_power_consumption$DateTime,
     type = "l",
     xlab = "",
     ylab = "Energy sub metering")
lines(household_power_consumption$Sub_metering_2 ~ household_power_consumption$DateTime,
     col = "red")
lines(household_power_consumption$Sub_metering_3 ~ household_power_consumption$DateTime,
      col = "blue")
legend("topright",
       c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = c("black", "red", "blue"),
       lwd = 1)
dev.off()