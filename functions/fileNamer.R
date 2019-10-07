#=====================================================================#
# This is code to create: personal function that creates a file name,
# version number, and extension with simple inputs
# Authored by and feedback to mjfrigaard@gmail.com
# MIT License
# Version: 1.1
#=====================================================================#

fileNamer <- function(..., version = "0.0", extension = ".R") {
    title <- str_replace_all(string = ..., pattern = "\\W", replacement = "_")
    title <- str_to_lower(title)
    pad <- "-"
    file_name <- paste0(version, pad, title, extension, sep = "")
    if (!file.exists(file_name)) {
        file.create(file_name)
    }
    return(file_name)
}
# fileNamer("My File", version = "1.0", extension = ".R")
