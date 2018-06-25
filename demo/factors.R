mycolors<-c("red", "blue", "green", "red", "red", "blue")
mycolors<-factor(mycolors) 
mycolors

levels(mycolors)

# what happens if we set levels?
mycolors
levels(mycolors) <- c("red", "blue", "green")
mycolors

# fix what we did above
mycolors<-c("red", "blue", "green", "red", "red", "blue")
mycolors<-factor(mycolors) 

mycolors[1]<-"pink"

mycolors

levels(mycolors)<-c(levels(mycolors), "pink")
mycolors[1]<-"pink"  
mycolors

mycolors<-factor(mycolors, levels=c(levels(mycolors), "pink")) 
mycolors[1]<-"pink"

typeof(mycolors[1])