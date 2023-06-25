## PLOTTING DATA IN R
# 50 sampel dari distribusi normal

datanormX <- rnorm(50)
#HISTOGRAM
hist(datanormX)
hist(datanormX, main = "Distribusi Normal", col = "blue")

datanormY <- rnorm(50)
#SCATTERPLOT
plot(datanormX, datanormY, main = "Scatterplot of Random Samples", #datanormX: data sumbu-X, datanormY: data sumbu-Y
     ylab = "y values",
     xlab = "x values", col = "red")

#BOX PLOT
boxplot(datanormX, datanormY, main = "Box Plot")

#BAR PLOT
#Membuat data dengan vektor
data1 <- c(50, 70, 35, 25)
dataplot <- barplot(height = data1,
        names.arg = c("CpGi", "Exon", "CpGi", "Exon"),
        ylab = "Percentages", main = "imagine %s",
        col = c("red", "red", "blue", "blue")) +
  legend("topright", legend = c("test", "control"),
         fill = c("red", "blue"))

dataplot

par(mfrow = c(1, 2))

hist(datanormX, main = "Histogram Normal", col = "red")
plot(datanormX, datanormY, main = "Scatterplot",
     ylab = "Y Values", xlab = "X Values")
