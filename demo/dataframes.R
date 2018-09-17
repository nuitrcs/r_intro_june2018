
x <- data.frame(month=month.name,
                index=1:12,
                days=c(31,28,31,30,31,30,31,31,30,31,30,31))
x

iris

head(iris)

length(iris)

dim(iris)

ncol(iris)
nrow(iris)

names(iris)

str(iris)

summary(iris)

iris[1,]

iris[,1]
iris[1] # no, not good practice

iris[2:4, 3:5]

iris[2:4, "Sepal.Length"] <- NA
head(iris)

iris$Sepal.Length
iris$Species

iris[,c("Sepal.Length", "Sepal.Width")]

iris$Petal.Width/2

oldnames <- names(iris)
names(iris)[1] <- "boo"
names(iris) <- c("sl","sw", "pl","pw","s")
head(iris)

names(iris) <- oldnames
head(iris)

rownames(iris)


iris[iris$Sepal.Length < 5]
iris[iris$Sepal.Length < 5 & !is.na(iris$Sepal.Length),]

iris[iris$Sepal.Length < 5 & iris$Sepal.Width < 3,]

iris$Species[iris$Sepal.Length < 5 & iris$Sepal.Width < 3]
iris[iris$Sepal.Length < 5 & iris$Sepal.Width < 3, "Species"]

max(iris$Petal.Width)
iris[max(iris$Petal.Width),] # NO!
iris[iris$Petal.Width==max(iris$Petal.Width),]
iris[which.max(iris$Petal.Width),] # only first

iris[iris$Species %in% c("setosa", "virginica"),] 


cbind(iris, index=c(1:nrow(iris)))

iris2 <- iris[-nrow(iris),]

iris$index <- 1:nrow(iris)




