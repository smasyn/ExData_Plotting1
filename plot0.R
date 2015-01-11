plot0 <- function(){
    # file has headers
    # separator is ;
    # decimal symbol is .
    
    # x. clear the environment by removing all variables
    # rm(list=ls(all=TRUE)) 
    
    # x. get the library lubridate
    library(lubridate)
    
    
    # 0. get working directory with getwd()
    # 1. set working directory to home directory if necessary with setwd()
    # 2. dfrX <- plot0() to read the dataset
    dfrX <- read.csv("./Coursera/Module 4/household_power_consumption.txt", header = TRUE, sep = ";")
    
    # convert the Date and Time variable to Date/Time classess using as.Date() and strptime()
    ## read in date/time info in format 'm/d/y h:m:s'
    dfrX$DateTime <- strptime(paste(as.character(dfrX$Date), as.character(dfrX$Time)), "%d/%m/%Y %H:%M:%S")    
    
    # subset the dataframe to contain only 2007-02-01 and 2007-02-02
    dfrXs <- subset(dfrX,year(DateTime)==2007)
    dfrXs <- subset(dfrXs,month(DateTime)==2)
    dfrXs <- subset(dfrXs,day(DateTime)<3)
    
    # subset the dataframe to contain only values, omit "?"
    
    # convert factor levels into numeric variables
    dfrXs$Global_active_power <- as.numeric(as.character(dfrXs$Global_active_power))
    dfrXs$Global_reactive_power <- as.numeric(as.character(dfrXs$Global_reactive_power))
    dfrXs$Voltage <- as.numeric(as.character(dfrXs$Voltage))
    dfrXs$Sub_metering_1 <- as.numeric(as.character(dfrXs$Sub_metering_1))
    dfrXs$Sub_metering_2 <- as.numeric(as.character(dfrXs$Sub_metering_2))
    dfrXs$Sub_metering_3 <- as.numeric(as.character(dfrXs$Sub_metering_3))
    
    # return dfrXs
    return(dfrXs)
}

plotN <- function(){
    dfrXs <- plot0()
    plot1(dfrXs)
    plot2(dfrXs)
    plot3(dfrXs)
    plot4(dfrXs)
}