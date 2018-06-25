# Exercise C answer

# run this, then do the tasks below
set.seed(2345)
animals <- sample(c("pig", "cow", "horse", "duck", NA), 30, replace=TRUE)

# what did the above do?  investigate animals by displaying the contents and 
# getting the length
animals
length(animals)

# make a table animals to show counts of each type
# hint: option for showing missing was useNA="ifany"
table(animals, useNA="ifany")

# how many missing elements in animals?
sum(is.na(animals))

# how many elements are not missing?
# hint: ! is not, and can go in front of is.na
sum(!is.na(animals))

# drop the missing values from animals
# hint: select from animals the not missing animals
animals[!is.na(animals)]
