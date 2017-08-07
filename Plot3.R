#Coursera --- Exploratory Data Analysis
#plot3

###########################################################################################################################
#1 set working directory
#dir1 <- paste("D:/PhD/Data Science/Course 4 Exploratory Analysis/Week 1/Course Project 1", 
#              sep="")

###########################################################################################################################
#2
#read in data
AllData <- read.table("household_power_consumption.txt",
                      header=TRUE, 
                      na.strings="?", 
                      sep=";")
Data <- AllData[(AllData$Date=="1/2/2007" | AllData$Date=="2/2/2007" ), ]

###########################################################################################################################
#3 plot 3
#format data
Data$Date <- as.Date(Data$Date, format="%d/%m/%Y")
DateTime <- paste(Data$Date, Data$Time)
Data$DateTime <- as.POSIXct(DateTime)

plot(Data$Sub_metering_1 ~ Data$DateTime,
     col="black",
     type="l",
     xlab = "",
     ylab = "Global Active Power(kilowatts)")
#add lines
lines(Data$Sub_metering_2 ~ Data$DateTime,
     col="red")
lines(Data$Sub_metering_3 ~ Data$DateTime,
     col = "blue")
#add legend
legend("topright",
       col=c("black","red","blue"),
       lty=1,lwd=1,
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

###########################################################################################################################
#4 export
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()

