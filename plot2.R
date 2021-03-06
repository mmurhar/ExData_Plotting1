setwd("C:\\Users\\murhar.family\\Desktop\\coursera\\Explore_data_analysis\\week1_project\\power_consump")
data<-read.table("household_power_consumption.txt", header=TRUE,sep=";",stringsAsFactors=FALSE)
req_data<-subset(data,Date %in% c("1/2/2007","2/2/2007") ,select=c(Global_active_power,Date,Time))
cmplt_date_time <- strptime(paste(req_data$Date, req_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
Global_act_power<-as.numeric(req_data$Global_active_power)
plot(cmplt_date_time,Global_act_power, type = "l",ylab = "Global Active Power (kilowatts)")
dev.copy(png, file = "plot2.png")
dev.off()