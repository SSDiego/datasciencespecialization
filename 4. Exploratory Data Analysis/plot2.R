#### Base Procedure ####

#I saved the base txt file as csv file to be able to read it as a csv2 file as bellow
GPbase <- read.csv2("household_power_consumption.csv")
GPbase$Date <- as.Date(GPbase$Date, format="%d/%m/%Y")
#I could only make the subset date work with dplyr
library(dplyr)
GPbase <- filter(GPbase, Date >= "2007-02-01" & Date < "2007-02-02")
#Binding
dtbind <- paste(as.Date(GPbase$Date), GPbase$Time)
GPbase$Datetime <- as.POSIXct(dtbind)
#numeric
options(scipen = 100) # no scientific notaion
GPbase$Global_active_power <- as.numeric(GPbase$Global_active_power)

#PLOT

plot(GPbase$Global_active_power~GPbase$Datetime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")


dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()