
# Set Working Directory
#setwd("~/projects/testR2/")

# Loading Data into R
d <- read.delim("data/example.bed", header=FALSE, col.names=c("chrom", "start", "end"))

cat("# Exploring and Transforming Dataframes\n")
dim(d)
head(d, n=3)
colnames(d)

cat("# Data Summary\n")
summary(d)

# Exploring Data Visually
pdf(file="analysis/plot.pdf")
par(mfrow=c(2,2))
hist(c(d$start, d$end))
plot(d$start, d$end)
boxplot(d$start ~ d$chrom, ylab = "start")
barplot(as.matrix(d[,2:3]))
dev.off()

# Exporting Data
write.csv(d[order(d$chrom),], file="analysis/table.csv")

# Print R version and packages
sessionInfo()
