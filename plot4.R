#plot4 script
#Abu Nurullah 11/08/2015
#---------------------------------------

source("loadplotdata.R")


plot4 <- paste0(getwd(), "/graphs/plot4.png")

if(!file.exists(plot4)){
	png("graphs/plot4.png", width = 480, height = 480)
	par(mfrow=c(2,2))	
	plot(df_sub$Time, df_sub$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
	plot(df_sub$Time, df_sub$Voltage, type = "l", xlab = "datetime", ylab = "Global Active Power")
	plot(df_sub$Time, df_sub$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
	lines(df_sub$Time, df_sub$Sub_metering_2, type="l", col="red")
	lines(df_sub$Time, df_sub$Sub_metering_3, type="l", col="blue")
	legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
	plot(df_sub$Time, df_sub$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global Active Power")
	dev.off()
} else {
	par(mfrow=c(2,2))	
	plot(df_sub$Time, df_sub$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
	plot(df_sub$Time, df_sub$Voltage, type = "l", xlab = "datetime", ylab = "Global Active Power")
	plot(df_sub$Time, df_sub$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
	lines(df_sub$Time, df_sub$Sub_metering_2, type="l", col="red")
	lines(df_sub$Time, df_sub$Sub_metering_3, type="l", col="blue")
	legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
	plot(df_sub$Time, df_sub$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global Active Power")
}
