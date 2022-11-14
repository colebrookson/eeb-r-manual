library(knitr)
library(here)

setwd(here("./content/html/04-stats1"))
dir <- "."

# knit R markdown to markdown
files_04 <- list.files(dir, "\\.rhtml")
for (f in files_04)
  knit(f)
