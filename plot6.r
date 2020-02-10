## compare motor emission baltimore with Los Angeles
## the fips == 06037
BaltimoreLos <- subset(NEI, NEI$fips %in% c("24510","06037")& 
                        NEI$type == "ON-ROAD")
BaltimoreLosAGG <- aggregate(Emissions ~ year +fips, BaltimoreLos , sum)

png("plot6.png", width = 480, height = 480)
ggplot(BaltimoreLosAGG, aes(year, Emissions, col =fips)) +
 geom_line() +
 geom_point()+
 ggtitle(expression("Baltimore and Los Angeles"~PM[2.5]~"Motor Vehicale Emission"))+
 labs(x="Year", y = expression(~PM[2.5]~"Motor vehical emission"))+
 scale_color_discrete(name ="city", labels = c("Los Angeles", "Baltimore"))+
 theme(legend.title = element_text(face = "bold"))
dev.off()