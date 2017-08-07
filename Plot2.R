#Coursera --- Exploratory Data Analysis
#plot2

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
#3 plot 2
#format data
Data$Date <- as.Date(Data$Date, format="%d/%m/%Y")
DateTime <- paste(Data$Date, Data$Time)
Data$DateTime <- as.POSIXct(DateTime)

plot(Data$Global_active_power ~ Data$DateTime,
     type="l",
     xlab = "",
     ylab = "Global Active Power(kilowatts)")

###########################################################################################################################
#4 export
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()

