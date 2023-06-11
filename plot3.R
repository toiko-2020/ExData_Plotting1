png(file = "plot3.png")
plot(Electricity$Date_New, Electricity$Sub_metering_1, type = "l", 
     xlab = "", ylab = "Energy sub metering")
lines(Electricity$Date_New, Electricity$Sub_metering_2, type = "l",col = "red")
lines(Electricity$Date_New, Electricity$Sub_metering_3, type = "l",col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty = 1)
dev.off()