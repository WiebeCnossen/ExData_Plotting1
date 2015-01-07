if (!exists("household_power_consumption")) source("household_power_consumption.R")

png("plot2.png", bg = "transparent")
with(household_power_consumption, {
        plot(Global_active_power ~ datetime,
             type = "l",
             xlab = "",
             ylab = "Global Active Power (kilowatts)")
})
dev.off()