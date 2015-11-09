#This script downloads the zipped data from the site mentioned in the assignment
#unzip it to data directory. it reads the data and create a subset 
#based on timeline provided.

#code: Abu M. Nurullah  11/18/2015
----------------------------------------------------------

#Abu M. Nurullah
setwd("C:/temp/")

library(httr) 

data.url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

if(!file.exists(data)){
	dir.create(data)
} 
if(!file.exists(graphs)){
	dir.create(graphs)
}

zipfile <- paste0(getwd(), "/data/household_power_consumption.zip")

if(!file.exists(zipfile)){
	download.file(data.url, zipfile, method="curl", mode="wb")
}

datafile <- paste0(getwd(), "/data/household_power_consumption.txt")

if(!file.exists(datafile)){
	unzip(zipfile, list = FALSE, overwrite = FALSE, exdir = data)
}

# the unzipped file will reside under the data subdirectory

data <- paste0(getwd(), "/data/exdata_data_household_power_consumption/household_power_consumption.txt")


#read the data file -----------------------------

df <- read.table(data, header = TRUE, sep = ";", colClasses=c("character", "character", rep("numeric",7)), na = "?")
df$Time = strptime(paste(df$Date, df$Time), "%d/%m/%Y %H:%M:%S")
df$Date = as.Date(df$Date, "%d/%m/%Y")
tp = as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
df_sub = subset(df, df$Date %in% tp)

#remove the bigger dataset ---------------
rm(df)

