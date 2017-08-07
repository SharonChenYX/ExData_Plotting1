#Coursera --- Exploratory Data Analysis
#plot1

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
#3 plot 1
hist(Data$Global_active_power,
     main = "Global Active Power",
     xlab = "Global Active Power(kilowatts)",
     ylab = "Frequency",
     col="red")

###########################################################################################################################
#4 export
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()

