# Exercise G Answers

# Set up data
safi <- read.csv("data/SAFI_clean.csv", 
                 na = c("", "NULL", "NA"),
                 stringsAsFactors = FALSE)
safi$respondent_wall_type <- factor(trimws(safi$respondent_wall_type))  

# Using aggregate, find: 
# 1) the average family size (no_membrs) per village
aggregate(safi$no_membrs, by=list(safi$village), FUN=mean, na.rm=TRUE)


# 2) average number of rooms in the dwelling per wall type (respondent_wall_type) and village (group on both)
# Hint: put both grouping vectors in the list: BY=list(var1, var2)
aggregate(safi$rooms, by=list(wall_type=safi$respondent_wall_type, village=safi$village), 
          FUN=mean, na.rm=TRUE)


# Bonus: sort the second result by village, then wall type
# hint: save the result above first, then sort it
avg_rooms <- aggregate(safi$rooms, by=list(wall_type=safi$respondent_wall_type, village=safi$village), 
          FUN=mean, na.rm=TRUE)
avg_rooms[order(avg_rooms$village, avg_rooms$wall_type),]

