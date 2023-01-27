library(knitr)
library(here)
library(formatR)

# knitr::opts_chunk$set(class.source = "small-source", 
#                       class.output = "small-output", 
#                       class.warning = "small-warning",
#                       class.error = "small-error",
#                       class.message = "small-message")
options(width = 70)
# 00 section ===================================================================
files_00 <- list.files(here("./content/html/00-start/"), "\\.rhtml")
for (f in files_00)
  knit(paste0(here("./content/html/00-start/"), f), 
       sub("\\.rhtml$", ".html", 
           paste0(here("./content/html/00-start/"), f)), envir = new.env())

# 01 section ===================================================================
files_01 <- list.files(here("./content/html/01-basicr/"), "\\.rhtml")
for (f in files_01)
  knit(paste0(here("./content/html/01-basicr/"), f), 
       sub("\\.rhtml$", ".html", 
           paste0(here("./content/html/01-basicr/"), f)), envir = new.env())

# 02 section ===================================================================
files_02 <- list.files(here("./content/html/02-data/"), "\\.rhtml")
for (f in files_02)
  knit(paste0(here("./content/html/02-data/"), f), 
       sub("\\.rhtml$", ".html", 
           paste0(here("./content/html/02-data/"), f)), envir = new.env())

# 03 section ===================================================================
files_03 <- list.files(here("./content/html/03-plot/"), "\\.rhtml")
for (f in files_03)
  knit(paste0(here("./content/html/03-plot/"), f), 
       sub("\\.rhtml$", ".html", 
           paste0(here("./content/html/03-plot/"), f)), envir = new.env())

# 04 section ===================================================================
files_04 <- list.files(here("./content/html/04-stats1/"), "\\.rhtml")
for (f in files_04)
  knit(paste0(here("./content/html/04-stats1/"), f), 
       sub("\\.rhtml$", ".html", 
           paste0(here("./content/html/04-stats1/"), f)))
