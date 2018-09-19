reNewTable <- readRDS("reNewtable.rds")

png(filename = 'plot3.png', width = 480, height = 480, units='px')
# plot figure
plot(reNewTable$DateTime, reNewTable$Sub_metering_1, xlab = '', ylab = 'Energy sub metering', type = 'l')
lines(reNewTable$DateTime, reNewTable$Sub_metering_2, col = 'red')
lines(reNewTable$DateTime, reNewTable$Sub_metering_3, col = 'blue')
legend('topright', col = c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd = 2)
# close device
dev.off()