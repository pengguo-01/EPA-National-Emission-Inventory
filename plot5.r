## check the motor vehicle source
names(NEI)
BaltimorMo <- subset(NEI, NEI$fips == "24510"& NEI$type =="ON-ROAD")
BaltimorAgg <- aggregate(Emissions ~ year, BaltimorMo, sum)
png("plot5.png",width = 480, height = 480)

ggplot(BaltimorAgg, aes(year, Emissions))+
 geom_line(col="blue") +
 geom_point(col="blue") +
 ggtitle(expression("Baltimore"~PM[2.5]~"motor vechile emission by year")) +
 xlab("year")+
 ylab(expression(~PM[2.5]~"motor vechile emissions"))
dev.off()