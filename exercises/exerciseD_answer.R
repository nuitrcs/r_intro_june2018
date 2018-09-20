# Exercise D answer

# run this, then do the tasks below
survey_responses <- sample(c("never", "sometimes", "often", "always"), replace=TRUE, 40)

table(survey_responses)

# note the order of the categories in the table above;
# now, turn survey responses into a factor with ordered levels - 
# hint: use argument ordered=TRUE to factor() and specify the levels explicitly;
# exerciseA.R has an example of this
survey_responses <- factor(survey_responses, levels=c("never", "sometimes", "often", "always"),
                           ordered=TRUE)


# now make a table again.  What order are the categories in?
table(survey_responses)


# Because the levels are ordered, you can sort and do comparisons:
sort(survey_responses)

survey_responses > "sometimes"
survey_responses[survey_responses > "sometimes"]


# set the first element of survey_responses to "nearly always"
# hint: you need to add a level; remake the factor instead of setting only setting levels(survey_responses)
survey_responses <- factor(survey_responses, 
                           levels=c("never", "sometimes", "often", "nearly always", "always"),
                           ordered=TRUE)
survey_responses[1] <- "nearly always"



