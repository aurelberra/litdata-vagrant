options("repos"="https://cran.rstudio.com/") # set the cran mirror

packages <- c("devtools",
              "tidyverse", # instead of separate pkgs
              "rstudio",
              "knitr",
              "rmarkdown",
              "XML",
              "rJava",
              "mallet",
              "igraph",
              "SnowballC",
              "NLP",
              "openNLP")
packages <- setdiff(packages, installed.packages()[, "Package"])
if (length(packages) != 0){
  (install.packages(packages))
}
devtools::install_github("agoldst/litdata") # original data from A. Goldstone
update.packages(ask=FALSE)
