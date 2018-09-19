reNewTable <- readRDS("reNewtable.rds")

png(filename = 'plot2.png', width = 480, height = 480, units='px')
# plot figure
plot(reNewTable$DateTime, reNewTable$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
# close device
dev.off()