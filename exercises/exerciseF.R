# Exercise F 

# read in SAFI data again
safi <- read.csv("data/SAFI_clean.csv", 
                 na = c("", "NULL", "NA"),
                 stringsAsFactors = FALSE)

# Using subset, select the column respondent_wall_type (use select argument) 
# for just the rows where the village is God (use subset argument)
subset(safi, 
       subset=,
       select=)

# Select rows where no_membrs is > 2 and < 5 (all columns)


# Exclude rows from the data where years_liv < 5 (all columns)
# hint: how can you specify a negative?



# Find the 1 room houses made of burntbricks.  
# Select just these the columns for number of rooms, wall type,and the village.


