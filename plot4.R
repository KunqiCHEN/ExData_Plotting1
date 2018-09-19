reNewTable <- readRDS("reNewtable.rds")

png(filename = 'plot4.png', width = 480, height = 480, units='px')
# plot figure
par(mfrow = c(2, 2))
plot(reNewTable$DateTime, reNewTable$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
plot(reNewTable$DateTime, reNewTable$Voltage, xlab = 'datetime', ylab = 'Voltage', type = 'l')
plot(reNewTable$DateTime, reNewTable$Sub_metering_1, xlab = '', ylab = 'Energy sub metering', type = 'l')
lines(reNewTable$DateTime, reNewTable$Sub_metering_2, col = 'red')
lines(reNewTable$DateTime, reNewTable$Sub_metering_3, col = 'blue')
legend('topright', col = c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd = 1)
plot(reNewTable$DateTime, reNewTable$Global_reactive_power, xlab = 'datetime', ylab = 'Global_reactive_power', type = 'l')
# close device
dev.off()