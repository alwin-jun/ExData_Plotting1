# 3rd Graph

png("plot3.png", width=480, height=480)
with(Raw2, plot(Date2, Sub_metering_1, type="l", xlab="Day", ylab="Energy sub metering"))
with(Raw2, lines(Date2, Sub_metering_2,type="l", col= "red"))
with(Raw2, lines(Date2, Sub_metering_3,type="l", col= "blue"))
legend(c("topright"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty= 1, lwd=2, col = c("black", "red", "blue"))
dev.off()