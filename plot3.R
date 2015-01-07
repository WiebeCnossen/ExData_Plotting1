if (!exists("household_power_consumption")) source("household_power_consumption.R")

png("plot3.png", bg = "transparent")
with(household_power_consumption, {
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
})
dev.off()