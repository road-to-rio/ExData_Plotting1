# read the txt file into R using the read.table function
raw = read.table("household_power_consumption.txt",colClasses = "character", header = T, sep = ";")
# select the data for the project
selectdate = raw[raw$Date=="1/2/2007" | raw$Date=="2/2/2007",]
# plot the data and save the plot in the github folder
png(width = 480, height = 480, file = "~/ExData_Plotting1/plot1.png")
hist(as.numeric(as.character(selectdate$Global_active_power)), col="red", main="Global Active Power", xlab="Global Active Power(kilowatts)")
dev.off()