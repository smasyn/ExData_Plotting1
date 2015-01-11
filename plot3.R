plot3 <- function(dfrXs){
    #
    # plot 3
    #
    # Creates the sub metring plots
    #
    # step 1. source and run plot0.R script to get the data: dfrX <- plot0()
    # step 2. run this function plot3: plot3(dfrX)
    #
    x <- c(dfrXs$DateTime,dfrXs$DateTime,dfrXs$DateTime)
    y <- c(dfrXs$Sub_metering_1,dfrXs$Sub_metering_2,dfrXs$Sub_metering_3)
    plot(x,y,main="",xlab="",ylab="Energy sub metering",type="n")
    points(dfrXs$DateTime,dfrXs$Sub_metering_1,type="l",col="black")
    points(dfrXs$DateTime,dfrXs$Sub_metering_2,type="l", col="red")
    points(dfrXs$DateTime,dfrXs$Sub_metering_3,type="l",col="blue")
    legend("topright", pch = "-", col = c("black","red", "blue"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
    dev.copy(png, file = "./Coursera/Module 4/plot3.png") 
    dev.off()
}