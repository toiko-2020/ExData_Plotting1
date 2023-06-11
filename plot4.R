png(file = "plot4.png")
par(mfrow = c(2, 2))
plot(Electricity$Date_New, Electricity$Global_active_power, xlab = "", ylab = "Global Active Power"
     , type = "l")
plot(Electricity$Date_New, Electricity$Voltage, xlab = "datetime", ylab = "Voltage"
     , type = "l")
plot(Electricity$Date_New, Electricity$Sub_metering_1, type = "l", 
     xlab = "", ylab = "Energy sub metering")
lines(Electricity$Date_New, Electricity$Sub_metering_2, type = "l",col = "red")
lines(Electricity$Date_New, Electricity$Sub_metering_3, type = "l",col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty = 1)
plot(Electricity$Date_New, Electricity$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power"
     , type = "l")
dev.off()