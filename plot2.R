png(file = "plot2.png")
plot(Electricity$Date_New, Electricity$Global_active_power, type = "l", 
     xlab = "", ylab = "Global Activr Power (killowatts)")
dev.off()