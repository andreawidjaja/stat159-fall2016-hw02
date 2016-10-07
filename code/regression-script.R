#Read data  
advertising <- read.csv('../data/Advertising.csv')

#Sales and TV columns are extracted from the advertising table
Sales <- advertising$Sales
TV <- advertising$TV

#Computes regression object
regression <- lm(Sales ~ TV)

#Summary of regression
RegressionSummary <- summary(regression)


#Regression analysis saved in file regression.RData in the data directory
save(regression, RegressionSummary, file='../data/regression.RData')



#Produce scatter plot with regression line as PNG

png("../images/scatterplot-tv-sales.png")
plot(TV, Sales, abline(lm(Sales ~ TV), col='#AB82FF'), main="Linear Regression", col='#1E90FF', xlab="TV", ylab="Sales")
dev.off()

#Produce scatter plot with regression line as PDF

pdf("../images/scatterplot-tv-sales.pdf")
plot(TV, Sales, abline(lm(Sales ~ TV), col='#AB82FF'), main="Linear Regression", col='#1E90FF', xlab="TV", ylab="Sales")
dev.off()
