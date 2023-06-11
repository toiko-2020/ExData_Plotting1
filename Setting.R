Electricity <- read.table("household_power_consumption.txt", sep = ";" , header = TRUE)
Electricity <- Electricity %>% 
  mutate(Date_New = paste(Date, Time, " ")) %>% 
  mutate(Date_New = as.POSIXct(Date_New, format = "%d/%m/%Y %H:%M:%S")) %>% 
  filter(Date_New >= "2007-02-01"&Date_New < "2007-02-03")
Electricity[,3:8] <- lapply(Electricity[, 3:8], function(x) {
  class(x) <- "double"
  return(x)
})