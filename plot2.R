setwd("E:/R/homework/exploratory")
getwd()
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

NEI1 <- subset(NEI, !is.na(NEI$Emissions) & NEI$fips == 24510)


##plot histgram
png(filename="plot2.png", width=480, height=480)

with(NEI1, boxplot(log10(Emissions) ~ year, range=1.5, outline=FALSE))

abline(h=-1)

##shut off png device
dev.off()
