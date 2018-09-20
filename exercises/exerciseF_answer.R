# Exercise F Answers

# read in SAFI data again
safi <- read.csv("data/SAFI_clean.csv", 
                 na = c("", "NULL", "NA"),
                 stringsAsFactors = FALSE)

# Using subset, select the column respondent_wall_type (use select argument) 
# for just the rows where the village is God (use subset argument)
subset(safi, 
       subset=village=='God',
       select=respondent_wall_type)

# Select rows where no_membrs is > 2 and < 5 (all columns)
subset(safi, 
       subset=no_membrs > 2 & no_membrs < 5)
# alternative (because there are no missing values):
safi[safi$no_membrs > 2 & safi$no_membrs < 5,]

# Exclude rows from the data where years_liv < 5 (all columns)
# hint: how can you specify a negative?
subset(safi, 
       subset=years_liv >= 5)
# there are other ways to specify

# Find the 1 room houses made of burntbricks.  
# Select just these the columns for number of rooms, wall type,and the village.
subset(safi,
       subset=respondent_wall_type == "burntbricks" & rooms == 1,
       select=c(village, respondent_wall_type, rooms))
# Note: technically, there's some dirty data and multiple burntbricks values:
subset(safi,
       subset=(respondent_wall_type == "burntbricks" | respondent_wall_type == " burntbricks") & 
         rooms == 1,
       select=c(village, respondent_wall_type, rooms))
