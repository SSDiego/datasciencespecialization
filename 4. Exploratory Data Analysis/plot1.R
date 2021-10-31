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

#Histogram

hist(GPbase$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

#PNG 
#To make it work, you must generate the histogram, then run the code below
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()