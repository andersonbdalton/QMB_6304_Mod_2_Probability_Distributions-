#Dalton Anderson

library(readxl)

#Import data
rdata <- read_excel("6304 Module 2 Assignment Data-1.xlsx")
#Split into Sample Sets
# Sample Set 1
sample (rdata)
set.seed(59657076)
data1 = sample (c(1:10000))
# Sample Set 2
sample (rdata)
set.seed(59657076)
data2 = sample (c(2:10000))
# Sample Set 3
sample (rdata)
set.seed(59657076)
data3 = sample (c(3:10000))
# Sample Set 4
sample (rdata)
set.seed(59657076)
data4 = sample (c(4:10000))

#1.)
#Normal Distribution Tests

# I think the easiest way to complete the task is to use a density plot 
#to see the data distribution.
# Filled Density Plot
# I read about different plots at this website.
# https://www.statmethods.net/graphs/density.html

# There is also a cool website for color plots from Columbia
#http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf

# Sample 1
d_data1 <- density(data1)
plot(d_data1, main="Data 1 Sample Set Distribution")
polygon(d_data1, col="chartreuse4", border="burlywood4")
# Data set 1 is a uniform data shape.

# Sample 2
d_data2 <- density(data2)
plot(d_data2, main="Data 2 Sample Set Distribution")
polygon(d_data2, col="Tan", border="Black")
# Data set 2 is a uniform data shape.

# Sample 3
d_data3 <- density(data3)
plot(d_data3, main="Data 3 Sample Set Distribution")
polygon(d_data3, col="slategrey", border="Black")
# Data set 3 is a uniform data shape.

# Sample 4
d_data4 <- density(data3)
plot(d_data4, main="Data 3 Sample Set Distribution")
polygon(d_data4, col="peru", border="Black")
# Data set 4 is a uniform data shape.

#2.)
#Data 3 Build a sampling distribution of the population mean by
#calculating the mean for each of 1000 samples of n=10.

# set sample size and number of samples

sample_mean <- rep(NA,1000)
for (i in 1:1000){
  sample_set <- sample(data3, size = 4)
  sample_mean[i] <- mean(sample_set)
}
print(sample_mean)
print(sample_set)

mean(sample_mean)
mean(data3)

# Sample 3
sam_mean <- density(sample_mean)
plot(sam_mean, main="Random Sample Set From Data 3 Distribution")
polygon(sam_mean, col="slategrey", border="Black")
# Normal data shape.
#Pretty cool!!




