# read the txt file into R using the read.table function
raw = read.table("household_power_consumption.txt",colClasses = "character", header = T, sep = ";")
# select the data for the project
selectdate = raw[raw$Date=="1/2/2007" | raw$Date=="2/2/2007",]
# create the png file plot4
png(width = 480, height = 480, file = "~/ExData_Plotting1/plot4.png")
par(mfrow=c(2, 2))
# plot chart 1
plot(as.numeric(as.character(selectdate$Global_active_power)), type="l", ylab="Global Active Power", xaxt="n", xlab="")
axis(1, at=c(1,1441,2880), labels=c("Thu", "Fri", "Sat"))
# plot chart 2
plot(as.numeric(as.character(selectdate$Voltage)), type="l", ylab="Voltage", xaxt="n", xlab="datetime")
axis(1, at=c(1,1441,2880), labels=c("Thu", "Fri", "Sat"))
# plot chart 3
plot(as.numeric(as.character(selectdate$Sub_metering_1)), type="l", ylab="Energy Sub Metering", xaxt="n", xlab="", col="black")
lines(as.numeric(as.character(selectdate$Sub_metering_2)), col="red")
lines(as.numeric(as.character(selectdate$Sub_metering_3)), col="blue")
axis(1, at=c(1,1441,2880), labels=c("Thu", "Fri", "Sat"))
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty="n")
# plot chart 4
plot(as.numeric(as.character(selectdate$Global_reactive_power)), type="l", ylab="Global_reactive_power", xaxt="n", xlab="datetime")
axis(1, at=c(1,1441,2880), labels=c("Thu", "Fri", "Sat"))
dev.off()
