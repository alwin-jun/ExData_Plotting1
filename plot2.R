# 2nd Graph

# head(Raw2$Date2)
png("plot2.png", width=480, height=480)
with(Raw2, plot(Date2, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))
dev.off()