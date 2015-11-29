sessionInfo()

# Loading Data into R
cse <- read.delim("data/example.bed", header=FALSE, col.names=c("chrom", "start", "end"))

# Exploring Data Visually
pdf(file="analysis/plot.pdf")
par(mfrow=c(2,2))
barplot(as.matrix(cse[,2:3]))
hist(c(cse$start, cse$end))
plot(cse$start, cse$end)
val <- "start"; grp <- "chrom"; boxplot(cse[,val] ~ cse[,grp], xlab=grp, ylab=val)
dev.off()

# Exporting Data Summary
summary(cse$start)
write.csv(sapply(cse[,-1], summary), file="analysis/summary.csv")



