# how we could manually create a data frame (very rarely will do this)
x <- data.frame(month=month.name,
                index=1:12,
                days=c(31,28,31,30,31,30,31,31,30,31,30,31))
x

# use a built-in data frame
data(iris)
iris

# view the first few rows
head(iris)

# What will the length of a data frame be?  # of columns
# This is because it's technically a list of vectors (we'll talk about lists soon)
# Don't use this.  Use ncol below instead
length(iris)

# Dimensions of the data frame: rows and columns
dim(iris)

# can also get these counts individually
ncol(iris)
nrow(iris)

# What are the variable names?  The columns
names(iris)

# What are the column types?
str(iris)

# Quick summary of every columns
summary(iris)

# Select first row
iris[1,]

# >>> Can you select rows 5-10?

# Select first column
iris[,1]
iris[1] # no, not good practice; don't do this

# select a range of rows and columns
iris[2:4, 3:5]

# set some values to be missing, look at result
iris[2:4, "Sepal.Length"] <- NA
head(iris)

# reference columns by $ notation (no quotes on names)
iris$Sepal.Length
iris$Species

# Can set values using $ notation too:
iris$Sepal.Length[5] <- NA
head(iris)

# Use names in []: put them in quotes
iris[,c("Sepal.Length", "Sepal.Width")]

# columns accessed with $ are vectors: you can use them as such
iris$Petal.Width/2

# renaming columns
oldnames <- names(iris) # save the old names (so we can reset later
names(iris)[1] <- "boo" # change the name of the first column
names(iris)
names(iris) <- c("sl","sw", "pl","pw","s") # change all names
names(iris)
head(iris)

# set them back to the old names
names(iris) <- oldnames
head(iris)

# does the dataframe have rownames?
rownames(iris)

# selecting with boolean expressions: all rows where one column meets a condition
iris[iris$Sepal.Length < 5] #error: why?
# multiple conditions
iris[iris$Sepal.Length < 5 & !is.na(iris$Sepal.Length),]
# another complex ondition
iris[iris$Sepal.Length < 5 & iris$Sepal.Width < 4,]

# selecting values of only one column, not all of the data frame
iris$Species[iris$Sepal.Length < 5 & iris$Sepal.Width < 3]

# another way to do this
iris[iris$Sepal.Length < 5 & iris$Sepal.Width < 3, "Species"]

# get information about columns
# Want to: select rows where one column is at it's maximum value
max(iris$Petal.Width)
iris[max(iris$Petal.Width),] # NO!
iris[iris$Petal.Width==max(iris$Petal.Width),]
iris[which.max(iris$Petal.Width),] # only first

# selecting with %in%
iris[iris$Species %in% c("setosa", "virginica"),] 

# add a column: this doesn't change iris because we didn't save it back to iris
cbind(iris, index=c(1:nrow(iris)))

# remove the last row
iris2 <- iris[-nrow(iris),]

# create a new column just by naming it
iris$index <- 1:nrow(iris)




