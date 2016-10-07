#Read data
advertising <- read.csv('../data/Advertising.csv')

#Produce text file containing summary statistics of TV and Sales
sink("../data/eda-output.txt")
'Summary of TV'
summary(advertising$TV)
'Summary of Sales'
summary(advertising$Sales)
sink()


#Histogram for TV in png
png("../images/histogram-tv.png")
hist(advertising$TV)
dev.off

#Histogram for TV as pdf
pdf("../images/histogram-tv.pdf")
hist(advertising$TV)
dev.off()


#Histogram for Sales in png
png("../images/histogram-sales.png")
hist(advertising$Sales)
dev.off()

#Histogram for Sales as pdf
pdf("../images/histogram-sales.pdf")
hist(advertising$Sales)
dev.off()
