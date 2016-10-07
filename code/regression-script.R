advertising <- read.csv('../data/Advertising.csv')

Sales <- advertising$Sales
TV <- advertising$TV


regression <- lm(Sales ~ TV)

RegressionSummary <- summary(regression)
save(regression, RegressionSummary, file='../data/regression.RData')

png("../images/scatterplot-tv-sales.png")
plot(TV, Sales, abline(lm(Sales ~ TV)), main="Linear regression of TV ads on Sales",xlab="TV", ylab="Sales")
dev.off()

pdf("../images/scatterplot-tv-sales.pdf")
plot(TV, Sales, abline(lm(Sales ~ TV)), main="Linear regression of TV ads on Sales",xlab="TV", ylab="Sales")
dev.off()
