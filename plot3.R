#plot3.R
setwd("E:/R/homework/exploratory")
getwd()
library(ggplot2)

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

NEI1 <- subset(NEI, !is.na(NEI$Emissions) & NEI$fips == 24510)

##plot histgram
png(filename="plot3.png", width=480, height=480)

#qplot(log10(Emissions), data=NEI1, facets=year~., geom="density")

qplot(log10(Emissions), data=NEI1, facets=year~type, geom="density")

##shut off png device
dev.off()
