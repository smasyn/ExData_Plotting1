plot1 <- function(dfrXs){
    #
    # plot 1
    #
    # Creates the global active power histogram
    #
    # step 1. source and run plot0.R script to get the data: dfrX <- plot0()
    # step 2. run this function plot1: plot1(dfrX)
    #
    hist(as.numeric(dfrXs$Global_active_power),main = "Global Active Power", xlab="Global Active Power(kilowatts)",col="Red")
    dev.copy(png, file = "./Coursera/Module 4/plot1.png") 
    dev.off()
}