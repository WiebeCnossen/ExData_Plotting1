# Get and clean data

library(plyr, warn.conflicts = FALSE, quietly = TRUE)
library(dplyr, warn.conflicts = FALSE, quietly = TRUE)
library(data.table, warn.conflicts = FALSE, quietly = TRUE)
library(lubridate, warn.conflicts = FALSE, quietly = TRUE)

# Check if datafile is present
datafile <- "exdata-data-household_power_consumption.zip"
if (!file.exists(datafile)) stop("Data file not present")

household_power_consumption =
        # Filename in zip
        "household_power_consumption.txt" %>%
        
        # Read from zip
        unz(description=datafile) %>%

        # Parse CSV
        read.csv(sep=";",na.strings = "?") %>%
        data.table %>%
        
        # Only data from the given dates
        subset(Date == "1/2/2007" | Date == "2/2/2007") %>%
        
        # Convert date and time
        mutate(datetime=parse_date_time(paste(Date,Time),"d/m/Y H/M/S")) %>%

        # Drop original date and time
        set(j=1:2, value=NULL)

# Only expose household_power_consumption
rm(datafile)