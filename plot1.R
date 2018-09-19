Table1 <- file("household_power_consumption.txt")
reNewTable <- read.table(text = grep("^[1,2]/2/2007",readLines(Table1),value=TRUE), 
                         sep = ';', col.names = c("Date", "Time", "Global_active_power", 
                                                  "Global_reactive_power", "Voltage", 
                                                  "Global_intensity", "Sub_metering_1", 
                                                  "Sub_metering_2", "Sub_metering_3"),
                         na.strings = '?')

# convert reNewTable and time to specific format
reNewTable$Date <- as.Date(reNewTable$Date, format = '%d/%m/%Y')
reNewTable$DateTime <- as.POSIXct(paste(reNewTable$Date, reNewTable$Time))


saveRDS(reNewTable,"reNewTable.rds")

#1
png(filename = 'plot1.png', width = 480, height = 480, units='px')
# plot figure
with(reNewTable, hist(Global_active_power, xlab = 'Global Active Power (kilowatt)', main = 'Global Active Power', col = 'red'))
# close device
dev.off()