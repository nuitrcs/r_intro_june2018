# difference between character vector and factor
mycolors<-c("red", "blue", "green", "red", "red", "blue")
mycolors
str(mycolors)
mycolors<-factor(mycolors) 
mycolors
str(mycolors)

# get levels
levels(mycolors)

# what happens if we set levels?
mycolors
levels(mycolors) <- c("red", "blue", "green")
mycolors
## Uh-oh!  we recoded our data!!! AHHHHHHH!!!!!

# fix what we did above
mycolors<-c("red", "blue", "green", "red", "red", "blue")
mycolors<-factor(mycolors) 

## ok to assign existing factor values
mycolors
mycolors[4] <- "green"
mycolors


# assigning a new value is problematic (not an existing level)
mycolors
mycolors[1]<-"pink"
mycolors

# how to do this properly
levels(mycolors)<-c(levels(mycolors), "pink") # add pink to levels
mycolors[1]<-"pink"  # then set value
mycolors

# alternative way to write this starting originally
mycolors<-c("red", "blue", "green", "red", "red", "blue")
mycolors<-factor(mycolors, levels=c(unique(mycolors), "pink")) 
mycolors
mycolors[1]<-"pink"
mycolors

# factoring numeric values
answers <- c(1,4,3,3,2,4,1,4)
answers<- factor(answers)
answers
levels(answers) <- c("never", "sometimes", "usually", "always") # recodes
answers
# with label instead
answers <- c(1,4,3,3,2,4,1,4)
answers<- factor(answers, levels=1:4, labels=c("never", "sometimes", "usually", "always"))
answers

# ordered factors
answers <- factor(c("satisfied", "very satisfied", "very unsatisfied", "unsatisfied", "satisfied"))
answers
table(answers)

answers <- factor(c("satisfied", "very satisfied", "very unsatisfied", "unsatisfied", "satisfied"),
                  levels=c("very unsatisfied", "unsatisfied", "satisfied", "very satisfied"),
                  ordered=TRUE)
answers
table(answers)
answers < "satisfied"


# factors are stored as integers (just an artefact of the system)
typeof(mycolors[1])