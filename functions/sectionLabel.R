# This code creates function for label .R file sections. It very handy for
# working in scripts and .Rmd files.
# Authored by and feedback to mjfrigaard@gmail.com
# MIT License
# Version: 1.3
#=====================================================================#


sectionLabel <- function(..., pad = "-") {
    title <- paste0(...)
    width <- getOption("width") - nchar(title) - 10
    cat("# > ", title, " ", stringr::str_dup(pad, width), "\n", sep = "")
}
sectionLabel("load functions")
