# read the txt file into R using the read.table function
raw = read.table("household_power_consumption.txt",colClasses = "character", header = T, sep = ";")
# select the data for the project
selectdate = raw[raw$Date=="1/2/2007" | raw$Date=="2/2/2007",]
# create the png file plot3
png(width = 480, height = 480, file = "~/ExData_Plotting1/plot3.png")
# plot Sub_metering_1 w/ no x axis and no label under x axis
plot(as.numeric(as.character(selectdate$Sub_metering_1)), type="l", ylab="Energy Sub Metering", xaxt="n", xlab="", col="black")
# add the lines for Sub_metering_2/Sub_metering_3
lines(as.numeric(as.character(selectdate$Sub_metering_2)), col="red")
lines(as.numeric(as.character(selectdate$Sub_metering_3)), col="blue")
# manually add the x axis
axis(1, at = c(1,1441,2880), labels = c("Thu", "Fri", "Sat"))
# add the legend for the chart
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()