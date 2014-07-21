#plot4.R
setwd("E:/R/homework/exploratory")
getwd()
library(ggplot2)

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

NEI0 <- merge(NEI, SCC)

NEI1 <- subset(NEI0, !is.na(NEI0$Emissions) & grepl("Coal", NEI0$Short.Name))

##plot histgram
png(filename="plot4.png", width=480, height=480)


with(NEI1, boxplot(log10(Emissions) ~ year, outline=FALSE))

abline(h=-1)


##shut off png device
dev.off()
