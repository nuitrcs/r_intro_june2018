# load a libraries we'll use
library(lubridate)
library(qdapTools)

# import data
safi <- read.csv("data/SAFI_clean.csv", 
                 na = c("", "NULL", "NA"),
                 stringsAsFactors = FALSE)
View(safi)

# fix some variables
safi$village <- factor(safi$village)  # categorical
safi$respondent_wall_type <- factor(trimws(safi$respondent_wall_type))  # categorical
safi$affect_conflicts <- factor(safi$affect_conflicts, ordered=TRUE,
                                   levels=c("never","once","more_once","frequently"))
safi$interview_date <- ymd_hms(safi$interview_date)  # date
safi$memb_assoc <- ifelse(is.na(safi$memb_assoc), NA, 
                          ifelse(safi$memb_assoc == "yes", TRUE, FALSE)) # yes/no to T/F

# convert delimited text field to indicator variables
month_indicators <- mtabulate(strsplit(safi$months_lack_food, ";"))
month_indicators <- month_indicators[,-10]
names(month_indicators) <- substr(names(month_indicators), 0, 3) # shorten column names to 3 letter abbrev.
month_indicators <- month_indicators[,month.abb] # reorder columns
safi <- cbind(safi, month_indicators)

# count number of months lacking food
safi$months_lack_food_count <- apply(month_indicators, 1, sum)

# in which month are respondents most likely to lack food?
apply(month_indicators, 2, sum)
which.max(apply(month_indicators, 2, sum))

# how many people in each village?
table(safi$village)

# do respondents in Chirodzo lack food in more months on average than respondents in Ruaca?
tapply(safi$months_lack_food_count, safi$village, mean)

t.test(safi$months_lack_food_count[safi$village == "Chirodzo"],
       safi$months_lack_food_count[safi$village == "Ruaca"])

# generalize: anova of village effect on months without food
a1 <- aov(months_lack_food_count ~ -1+village, data = safi) # save anova results
a1 # print results
summary(a1) # summary gives you better formatted results
print(model.tables(a1)) # print the means
summary.lm(a1) # see the regression (lm) that was run for the anova


# plot distribution of family size
barplot(table(safi$no_membrs)) 
# gaps aren't shown, so...
barplot(table(factor(safi$no_membrs, levels=1:max(safi$no_membrs))),
        main="Family Size", xlab="Number of Members",
        ylab="Number of Families")

# distribution of years_liv
hist(safi$years_liv, col="gray")
# different number of bars:
hist(safi$years_liv, col="gray", breaks=20)

# boxplot for number of family members by village
boxplot(no_membrs~village, data=safi)

# scatter plot of number of family members and months of lack of food
plot(y=safi$months_lack_food_count, x=safi$no_membrs) 
# points are on top of each other, so jitter points
plot(y=jitter(safi$months_lack_food_count), x=jitter(safi$no_membrs),
     col=rgb(.1, 0, 1, alpha=.3), pch=16)
# or capture with transparency
plot(y=safi$months_lack_food_count, x=safi$no_membrs,
     col=rgb(.1, 0, 1, alpha=.3), pch=16, cex=3)
# or use a different plot type 
smoothScatter(y=safi$months_lack_food_count, x=safi$no_membrs)

