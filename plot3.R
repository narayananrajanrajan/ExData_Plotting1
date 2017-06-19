#######################Build  Plot###########################


#############################
#Read the file###############
#############################
data <- read.table(file="household_power_consumption.txt", sep=";", header=TRUE)
#head(data,1)
#str(data)
data1 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#############################
#Retrieve only numeric data##
#############################
globalactivepower <- as.numeric(data1$Global_active_power)

#############################
#Retrive sub meter###########
#############################
subMetering1 <- as.numeric(data1$Sub_metering_1)
subMetering2 <- as.numeric(data1$Sub_metering_2)
subMetering3 <- as.numeric(data1$Sub_metering_3)
#head (globalactivepower)

#############################
#Plot the plot :-)###########
#############################
png("plot3.png",width=480,height=480)
plot(datetime,subMetering1,type="l",xlab="", ylab="Energy Submetering")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
