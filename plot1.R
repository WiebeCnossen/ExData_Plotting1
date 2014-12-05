if (!exists("household_power_consumption")) source("household_power_consumption.R")

png("plot1.png")
with(household_power_consumption, {
        hist(Global_active_power,
             main = "Global Active Power",
             xlab = "Global Active Power (kilowatts)",
             col = "red")
})
dev.off()