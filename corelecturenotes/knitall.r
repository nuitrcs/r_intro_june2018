## Knits all lecture notes for printing and regular

# project directory is one level above, so need to reference files with this directory in path

rm(list = ls())

for (iknit in list.files("./corelecturenotes", "\\.Rmd$")) {
  print(iknit)
  partname<-substr(iknit, 1, 5)
  rmarkdown::render(paste0("corelecturenotes/",iknit),
                    params = list(notes=FALSE))
  rmarkdown::render(paste0("corelecturenotes/",iknit),
                  output_options=list(toc=FALSE,toc_float=FALSE),
                  output_file = paste0('printable/',partname,'_wnotes.html'),
                  params = list(notes=TRUE))
  rm(list = ls())
}
