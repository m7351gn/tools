ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg)) 
    install.packages(new.pkg, repos='http://cran.us.r-project.org')
}

packages <- c("terra",
              "pacman")

ipak(packages)
