## Creation of plot n.1 ##

## Reading Data ##

setwd("F:/COURSERA/Exploratory Data Analysis/1°week")
header<-read.table("household_power_consumption.txt",header=TRUE,sep=";",nrows = 1)
data_1<-read.table("household_power_consumption.txt",header=FALSE,sep=";",skip=66637,nrows = 1440)
data_2<-read.table("household_power_consumption.txt",header=FALSE,sep=";",skip=68077,nrows = 1440)

## Create DB ##
tot_data<-rbind(data_1,data_2)
names(tot_data)<-names(header)
tot_data$Date<-as.character(tot_data$Date)

## Graph ##
png(filename="plot2.png",width=480,height=480)
plot(xaxt="n",tot_data$Global_active_power,ylab="Global Active Power (kilowatts)",type="l",xlab = "")
axis(1,at=c(1,1440,2880), labels=c("Thu","Fri","Sat"))
#dev.copy(png,file="plot2.png")
dev.off()