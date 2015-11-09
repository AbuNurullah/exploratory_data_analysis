#plot3 script
#abu Nurullah 11/8/2015


#load the source data via loadplotdata.R script that supplies the
# reequired data frame

source("loadplotdata.R")


plot3 <- paste0(getwd(), "/graphs/plot3.png")

if(!file.exists(plot3)){
	png("graphs/plot3.png", width = 480, height = 480)
	plot(df_sub$Time, df_sub$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
	lines(df_sub$Time, df_sub$Sub_metering_2, type="l", col="red")
	lines(df_sub$Time, df_sub$Sub_metering_3, type="l", col="blue")
	legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
	dev.off()
} else {
	plot(df_sub$Time, df_sub$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
	lines(df_sub$Time, df_sub$Sub_metering_2, type="l", col="red")
	lines(df_sub$Time, df_sub$Sub_metering_3, type="l", col="blue")
	legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
}
