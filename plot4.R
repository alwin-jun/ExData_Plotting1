# 4th Graph

png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
with(Raw2, plot(Date2, Global_active_power, type="l", xlab="", ylab="global active power"))
with(Raw2, plot(Date2, Voltage, type = "l", xlab="datetime", ylab="voltage"))
with(Raw2, plot(Date2, Sub_metering_1, type="l", xlab="", ylab="energy sub metering"))
with(Raw2, lines(Date2, Sub_metering_2,type="l", col= "red"))
with(Raw2, lines(Date2, Sub_metering_3,type="l", col= "blue"))
legend(c("topright"), c("sub_metering_1", "sub_metering_2", "sub_metering_3"), lty= 1, lwd=2, col = c("black", "red", "blue"))
with(Raw2, plot(Date2, Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power"))
dev.off()
