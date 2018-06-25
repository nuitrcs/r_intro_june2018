## Knits all exercises, with and without answers

# project directory is one level above, so need to reference files with this directory in path

# restart R first

for (iknit in 1:6) {
  objs <- ls()
  rm(list = objs[objs != "iknit"])
  rmarkdown::render(paste0('coreexercises/part',iknit,'_exercises_with_answers.Rmd'),
                    output_file = paste0('part',iknit,'_exercises_with_answers.html'),
                    params = list(answers=TRUE))
  objs <- ls()
  rm(list = objs[objs != "iknit"])
  rmarkdown::render(paste0('coreexercises/part',iknit,'_exercises_with_answers.Rmd'),
                    output_file = paste0('part',iknit,'_exercises.html'),
                    params = list(answers=FALSE))
}
