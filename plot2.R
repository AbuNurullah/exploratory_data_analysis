Eplot2 script 
#Abu Nurullah 11/8/2015
#-----------------------------------------


#load the source data via loadplotdata.R script that supplies the
# reequired data frame

source("load_data.R")
setwd("C:/temp")

plot2 <- paste(getwd(), "/graphs/plot2.png", sep = "")
if(!file.exists(plot2)){
	png("graphs/plot2.png", width = 480, height = 480)
	plot(df_sub$Time, df_sub$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
	dev.off()
} else {
	plot(df_sub$Time, df_sub$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
}
