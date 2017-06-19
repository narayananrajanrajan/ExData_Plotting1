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
#merger data time############
#############################
datetime <- strptime(paste(data1$Date, data1$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
#head (globalactivepower)

#############################
#Plot the plot :-)###########
#############################
png("plot2.png",width=480,height=480)
plot(datetime,globalactivepower,type="l",xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
