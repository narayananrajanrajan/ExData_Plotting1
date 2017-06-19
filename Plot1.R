#######################Build  histogram###########################


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
globalactivepower <- as.numeric(data$Global_active_power)

#head (globalactivepower)

#############################
#Plot the Histogram##########
#############################
png("plot1.png",width=480,height=480)
hist(globalactivepower,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()
