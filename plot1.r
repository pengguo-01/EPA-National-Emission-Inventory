
setwd("C://Desktop//Download")

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

##head(NEI)
##head(SCC)
#summary(NEI)
##names(SCC)
str(NEI)
str(SCC)

## total emission from PM2.5
## creat the plot of emisson ans save it

TotalNei <- aggregate(Emissions ~year, NEI, sum)
png("plot1.png", width = 480, height = 480)

plot(TotalNei$year, TotalNei$Emissions, type = "o",
     col ="blue", main =expression("Total US" ~ PM[2.5]~"Emission"),
     ylab = expression("Total US"~ PM[2.5]~"emission"), xlab ="Year")
dev.off()
