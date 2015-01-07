if (!exists("household_power_consumption")) source("household_power_consumption.R")

png("plot4.png", bg = "transparent")
par(mfrow = c(2, 2))

with(household_power_consumption, {
        plot(Global_active_power ~ datetime,
             type = "l",
             xlab = "",
             ylab = "Global Active Power (kilowatts)")
        
        plot(Voltage ~ datetime, type = "l")
        
        plot(Sub_metering_1 ~ datetime,
             type = "l",
             xlab = "",
             ylab = "Energy sub metering")
        lines(Sub_metering_2 ~ datetime, col = "red")
        lines(Sub_metering_3 ~ datetime, col = "blue")
        legend("topright",
               c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
               col = c("black", "red", "blue"),
               lwd = 1)
        
        plot(Global_reactive_power ~ datetime, type = "l")
})

# Reset parameters
par(mfrow = c(1, 1))
dev.off()