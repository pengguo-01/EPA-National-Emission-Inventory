##  plot the graph of type and year in emission 
library(ggplot2)
Baltimore <- subset(NEI, NEI$fips =="24510")
png("plot3.png", width = 480, height = 480)
Baltimoretype <- aggregate(Emissions~year + type, Baltimore, sum )

ggplot(Baltimoretype, aes(year,Emissions, col = type))+
 geom_line()+geom_point()+ 
 ggtitle(expression("Total Baltimore"~PM[2.5]~"emission by type and year"))+
 ylab(expression("Total Baltimore"~PM[2.5]~"Emission"))+
 xlab("year")+
 scale_colour_discrete(name ="Type of source") +
 theme (legend.title =element_text(face ="bold"))
dev.off()
