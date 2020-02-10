Baltimore <- subset(NEI, NEI$fips =="24510")
TotlaBal <- aggregate(Emissions~year , Baltimore,sum)
png("plot2.png", width = 480, height = 480)
## plot the emission in baltimor city in 1998-2008
## the variable between year and emission 
plot(TotlaBal$year, TotlaBal$Emissions, type = "o", 
     main = expression("Total Baltimor"~PM[2.5]~"emssion by year"),
     xlab ="year", ylab = expression("Total Baltimore"~PM[2.5]~"Emission"),
     col ="blue")

dev.off()