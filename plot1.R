## Getting Data
URL1 = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
setwd('C:\\Users\\CJ\\Documents\\CourseraJHK\\ExploratoryDataAnalysis\\');
download.file(URL1, "./HouseHold Power Consumption.zip")
unzip("./HouseHold Power Consumption.zip")
Raw1 = read.table("./household_power_consumption.txt", sep = ";", header = TRUE,
                  stringsAsFactors=FALSE, dec=".")
# str(Raw1)
# head(Raw1)
## Change Data Type
# class(Raw1$Date)
# Raw1$Date = as.Date(Raw1$Date)
library(lubridate)

# head(as.Date(Raw1$Date, format = "%d/%m/%Y"))
Raw1$Date2 <- strptime(paste(Raw1$Date, Raw1$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
Raw1$Date <- as.Date(Raw1$Date, format="%d/%m/%Y")
Raw1$Global_active_power <- as.numeric(Raw1$Global_active_power)
Raw1$Global_reactive_power <- as.numeric(Raw1$Global_reactive_power)
Raw1$Voltage <- as.numeric(Raw1$Voltage)
Raw1$Global_intensity <- as.numeric(Raw1$Global_intensity)
Raw1$Sub_metering_1 <- as.numeric(Raw1$Sub_metering_1)
Raw1$Sub_metering_2 <- as.numeric(Raw1$Sub_metering_2)
Raw1$Sub_metering_3 <- as.numeric(Raw1$Sub_metering_3)


## Narrow it down to time frame we want
# Raw2 = subset(Raw1, Date2 >= '2007-02-01' & Raw1$Date2 <= '2007-02-02')
Raw2 = Raw1[Raw1$Date >= "2007-02-01" & Raw1$Date <= "2007-02-02", ]
str(Raw2)
# 1st Graph
png("plot1.png", width=480, height=480)
hist(Raw2$Global_active_power, col = 'red', xlab = "Global Active Power (kilowatts)",
     main="Global Active Power")
dev.off()
