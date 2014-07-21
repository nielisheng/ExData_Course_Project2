#plot6.R
setwd("E:/R/homework/exploratory")
getwd()

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

NEI0 <- merge(NEI, SCC)

NEI1 <- subset(NEI0, !is.na(NEI0$Emissions) & (NEI0$fips == "24510" | NEI0$fips == "06037"))

NEI1 <- subset(NEI0, !is.na(NEI0$Emissions) & (NEI0$fips == "24510" | NEI0$fips == "06037") & Data.Category == "Onroad")

##plot histgram
png(filename="plot6.png", width=480, height=480)

qplot(log10(Emissions), data=NEI1, facets=fips~year, geom="density")


##shut off png device
dev.off()
