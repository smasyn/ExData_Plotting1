plot2 <- function(dfrXs){
    #
    # plot 2
    #
    #
    # Creates the global active power in function of time across the two days
    #
    # step 1. source and run plot0.R script to get the data: dfrX <- plot0()
    # step 2. run this function plot1: plot2(dfrX)
    #
    with(dfrXs,plot(DateTime,Global_active_power,type="l",xlab="",ylab="Global Active Power(kilowatts)"))
    # to png file
    dev.copy(png, file = "./Coursera/Module 4/plot2.png") 
    dev.off()
}