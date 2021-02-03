# Useful commands for Homework 2

# R has a dedicated time series object, known as ts
help(ts)

# Vectors can also be treated as time series. The time points will be numbered consecutively,
# starting at 1
v <- c(10, 5, 8, 3, 7, 12, 9, 8, 7, 5, 4, 4, 2)
plot(v)

# We can create a time series object from this vector using the ts() command
vts <- ts(v)
(vts)

# Use the length() command to get the number of observations in the time series (or vector)
length(v)

# To plot a vector as a time series, use plot.ts()
plot.ts(v)

# If we are using a ts object, we can just use plot()
plot(vts,col='red')

# We often want to work with only a subset of the data. There are several ways to do this

# As an example, suppose each value in the time series v created above is associated with a
# color, red or blue. We create a vector of the colors
color <- c("red", "blue", "red" , "red", "red", "blue", "red", "blue", "blue", "red", 
           "blue", "blue", "blue")

# We next create a data frame with both the colors and the values
mydata <- data.frame(color, v)
head(mydata)

# To select a subset of the data, use the subset() command
bluev <- subset(mydata, color=="blue") # "==" for comparison, "=" for assignment, choosing only values for color that are blue
bluev

# Note that when plotting a time series from a data frame, we need to specify which
# column to plot
plot.ts(bluev$v)

# Probability distributions: R has many built in probability distributions. There are a group
# of commands for each probability distribution, starting with a letter for the type of
# command, followed by the name of the distribution
# For example, if the first letter is "r", the command generates random variables for the
# specified distribution
# Use rnorm() to generate a sample of normally distributed random variables
rnorm(n = 5, mean = 2, sd = 1)

# Use rt() to generate a sample of t distributed random variables
rt(n = 5, df=10)

# Comparing the normal distribution and the t distribution
x <- seq(from = -3, to = 3, by = .1) # seq() to create a sequence
plot(x, dnorm(x), ylab="Density", type="l") # dnorm() to find the density of a normal r.v.
lines(x, dt(x, df=5), lty=2) # lines() to add a curve to an existing graph
