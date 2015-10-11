# read the txt file into R using the read.table function
raw = read.table("household_power_consumption.txt",colClasses = "character", header = T, sep = ";")
# select the data for the project
selectdate = raw[raw$Date=="1/2/2007" | raw$Date=="2/2/2007",]
# create the png file plot2
png(width = 480, height = 480, file = "~/ExData_Plotting1/plot2.png")
# plot the data w/ no axis
plot(as.numeric(as.character(selectdate$Global_active_power)), type="l", ylab="Global Active Power(kilowatts)", xaxt="n", xlab="")
# manually add a new axis
axis(1, at = c(1,1441,2880), labels = c("Thu", "Fri", "Sat"))
dev.off()