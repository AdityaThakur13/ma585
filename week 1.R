# Introduction to R

getwd()
suppressPackageStartupMessages(library(tidyverse))

# Vectors
# Use the c() function to create a new vector with the specified values
v <- c(2, 3, 5, 8)
x <- c(1,2,3,4)
w <- c("apple", "orange", "pear")

# Type the name of a object to see the contents of the object
v

# Use square brackets to select particular elements of a vector
v[2]

# array
d <- array(0,c(1000,1000))
d

# Functions or mathematical expressions are applied to each element of a vector
logv <- log(v)

# Type the name of an object to see the contents of the object
logv

# Lists are the basis of most R objects
mylist <- list(numbers = v, fruits = w)

mylist
# To view the components of a list, use names()
names(mylist)

# Use $ notation to access components of a list
mylist$numbers
mylist$fruits

# In general, read data using the read.table() command (or related) or use 
# the Import Dataset menu command

# For this introduction, we will use the "faithful" dataset
# Use head() to see the first several rows of data
head(faithful)

# A data frame is a type of list. Use names() to get all the column names
names(faithful)

# Use $ notation to work with individual columns
logeruptions <- log(faithful$eruptions)

# Use summary() to get a basic summary of a data frame
summary(faithful)

# Use plot() to plot a data frame
plot(faithful)
plot(faithful$eruptions, faithful$waiting,col='pink')

# plot() has many arguments. Use help() to check these
help(plot)

# For plotting data frames specifically, use help(plot.data.frame)
help(plot.data.frame)

# To fit a linear model to a data set, use the lm() command
faithlm <- lm(waiting ~ eruptions, data = faithful)

# To get the arguments of a function, use args()
args(lm)

# For more info, use help() or ?
help(lm)
?lm

# View the model
faithlm

# The model has much more information. Use names() to view the components of the model
names(faithlm)

# Use summary to get the detailed model description
summary(faithlm)

# Use par(mfrow = c(2, 2)) to change the plotting layout
par(mfrow = c(1, 3))

# Use plot() to get diagnostic plots of the model
plot(faithlm)

# Return to normal plotting
par(mfrow = c(1, 1))

# To find available functions that can be used on a lm object, use methods()
methods(class = lm)

# Some useful functions
faithfitted <- fitted(faithlm)
faithresiduals <- residuals(faithlm)
faithcoefs <- coef(faithlm)

# Note that these can also be accessed using $ notation
faithfitted2 <- faithlm$fitted.values

# The summary() command creates a summary.lm object. Use names() to get the
# components of the summary.lm object
faithsumm <- summary(faithlm)
names(faithsumm)
coef(faithsumm)
faithsumm$coefficients

# Use step() to perform variable selection
step(faithlm)
