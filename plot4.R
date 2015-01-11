plot4 <- function(dfrXs){
    #
    # plot 4
    #
    # Creates four tiled plots
    #
    # step 1. source and run plot0.R script to get the data: dfrX <- plot0()
    # step 1a. source and load plot2.R and plot3.R
    # step 2. run this function plot4: plot4(dfrX)
    #
    par(mfrow=c(2,2))
    # 4a
    plot2(dfrXs)
    # 4b
    with(dfrXs,plot(DateTime,Voltage,type="l",xlab="datetime",ylab="Voltage"))
    # 4c
    plot3(dfrXs)
    # 4d
    with(dfrXs,plot(DateTime,Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power"))
    dev.copy(png, file = "./Coursera/Module 4/plot4.png") 
    dev.off()
    
}