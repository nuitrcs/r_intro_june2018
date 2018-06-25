# Exercise E 

# read in the safi data, then do the tasks below
safi <- read.csv("data/SAFI_clean.csv", 
                 na = c("", "NULL", "NA"),
                 stringsAsFactors = FALSE)


# What are the names of the variables in the data (the columns)


# How many observations in the data?


# Open the data frame in the viewer
# hint: use the View() function or click on the data in the Environment pane


# What are the types of the variables?


# Make village a factor instead of character


# Make a table of respondent_wall_type to see how many observations for each;
# what do you notice?


# Select just village and no_membrs columns (the latter is number of family members)


# Print just the first row of data 


# Drop the instanceID column


# select the column respondent_wall_type for just the rows where the village is God


# select rows where no_membrs is > 2 and < 5



