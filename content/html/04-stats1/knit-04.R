library(knitr)
library(here)

setwd(here("./content/html/stats"))
dir <- "./"

# knit R markdown to markdown
files_04 <- list.files(dir, "\\.rhtml")
for (f in files_04){
  knit(f, envir = new.env())
}

