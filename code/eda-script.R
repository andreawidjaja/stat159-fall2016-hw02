library(ggplot2)
library(ggthemes)

advertising <- read.csv('../data/Advertising.csv')

head(advertising)
str(advertising)
summary(advertising)

sink("../data/eda-output.txt")
'Summary of TV'
summary(advertising$TV)
'Summary of Sales'
summary(advertising$Sales)
sink()

png("../images/histogram-tv.png")
hist(advertising$TV)
dev.off
pdf("../images/histogram-tv.pdf")
hist(advertising$TV)
dev.off()

png("../images/histogram-sales.png")
hist(advertising$Sales)
dev.off()
pdf("../images/histogram-sales.pdf")
hist(advertising$Sales)
dev.off()
