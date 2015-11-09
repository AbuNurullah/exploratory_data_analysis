#This script creates plot1 under the graphs subdirectory
# Abu Nurullah 11/8/2015
#-------------------------------------------------------------


#load the source data via loadplotdata.R script that supplies the
# reequired data frame

source("loadplotdata.R")

setwd("C:/temp")
plot1 = paste0(getwd(), "/graphs/plot1.png", sep = "")

if(!file.exists(plot1)){
	png("graphs/plot1.png", width = 480, height = 480)
	hist(df_sub$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
	dev.off()
} else {
	hist(df_sub$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
}
