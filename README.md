# Intro to R Workshop Materials

[Research Computing Services](http://www.it.northwestern.edu/research/).  

# Software and Files

## R and RStudio

This workshop assumes you have recent versions of R and RStudio - R 3.4 or 3.5 and RStudio 1.1.  R and RStudio installation notes are in the [main R workshop repository](https://github.com/nuitrcs/rworkshops) or the [summer workshop page](https://sites.northwestern.edu/summerworkshops/resources/software-installation/).  

If you normally connect to the Northwestern wireless network, then that's all you need to do before the workshop.  This workshop downloads packages and data files from the internet as we work through the material.

If you do not have a NetID, you may have difficulty accessing the wireless network at Northwestern (the Guest network has some limits on it that can possibly cause issues).    

If you won't be able to connect to the Northwestern network on an independent wireless network during the workshop, OR if you don't have administrator privileges on your laptop, you might want to install some packages ahead of time.  

To do so, start R, then run the commands in `packagelist.r`.   If you need assistance, please contact the workshop instructor before the workshop.


### Option 1: On your laptop 

Download all of the materials to your laptop.  See [Downloading from GitHub reference](https://sites.northwestern.edu/summerworkshops/resources/downloading-from-github/).

### Option 2: RStudio Cloud

Go to https://rstudio.cloud and log in (or create an account if needed).  Click on Your Workspace in the left Menu.  Then make sure you are on the Projects tab, and click the blue button for New Project.  Choose the option of creating one from a GitHub repo.  The repo address is https://github.com/nuitrcs/r_intro_june2018.  This will take a few moments to copy files from this repository.  You'll then need to install packages.  Open `packagelist.r` and run the code.  The tidyverse package will take a while to install.  

You can use this space like you would your RStudio on own computer, except you can only access the files that are part of the project and save files within the project.

## Types of Files

The main materials are slides.  Keynote and Powerpoint versions are available:

* [Online version](https://nuitrcs.github.io/r_intro_june2018/slides/)
* [Keynote Slides](https://github.com/nuitrcs/r_intro_june2018/blob/master/slides.key?raw=true)
* [Powerpoint Slides](https://github.com/nuitrcs/r_intro_june2018/blob/master/slides.pptx?raw=true)


Exercises we do during the workshop are either in the slides or in .R files in the [exercises directory](/exercises).

Reference materials and independent practice exercises are written in RMarkdown (*.Rmd).  You can open these files directly in RStudio and run the code chunks.  The RMarkdown files have also been converted to html files for easy viewing.  Exercise files have one RMarkdown file (with answers) and two html files (one with and one without answers).  Links to the html files are in the [coreexercises directory](/coreexercises).

### Opening/Downloading Files

RMarkdown files can be previewed in GitHub, but they won't include the output of the code cells.  HTML files generated from the RMarkdown generally can't be previewed directly in the GitHub repository view, but they can be viewed online through GitHub Pages; links are provided for that below.  HTML files are self-contained; this means they are on the large side, but they can be downloaded and viewed locally as a single file.

REMEMBER: if downloading individual files from GitHub, you want to download the RAW version of a file.  Otherwise, it's often better to download everything together by using the green clone/download button for the entire repository.  [Downloading from GitHub reference](https://sites.northwestern.edu/summerworkshops/resources/downloading-from-github/).



# Other Resources

An extensive list of good R resources can be found in the [main R workshop repository](https://github.com/nuitrcs/rworkshops).

The handouts for this workshop are from:

[R Reference Card](https://cran.r-project.org/doc/contrib/Baggott-refcard-v2.pdf): lists many commonly used functions

[RStudio Base R Cheat Sheet](https://www.rstudio.com/wp-content/uploads/2016/05/base-r.pdf): syntax reference

Online reference for plotting for this workshop:

[Base R Examples](https://dcgerard.github.io/stat234/base_r_cheatsheet.html) by David Gerard

[R Base Graphics Cheat Sheet](http://publish.illinois.edu/johnrgallagher/files/2015/10/BaseGraphicsCheatsheet.pdf) by Joyce Robbins

