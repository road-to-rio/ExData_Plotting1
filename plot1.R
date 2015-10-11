raw = read.table("household_power_consumption.txt",colClasses = "character", header = T)
png(width = 480, height = 480, file = "~/ExData_Plotting1/plot1.png")
hist(as.numeric(as.character(selectdate$Global_active_power)), col="red", main="Global Active Power", xlab="Global Active Power(kilowatts)")
dev.off()
