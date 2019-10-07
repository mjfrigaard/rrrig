
# comma Function -----------------------------------------------------
# this is from R for data science
library(tidyverse)
commas <- function(...) stringr::str_c(..., collapse = ", ")
commas(headlines_var) %>% writeLines()