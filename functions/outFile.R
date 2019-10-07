#=====================================================================#
# This is code to create: outFile
# Authored by and feedback to: Martin Frigaard
# Email: mjfrigaard@gmail.com
# GPL (>= 2)
# Version: 0.1
#=====================================================================#


# this function creates an outfile for an R object that has a date/time 
# stamp and the file extension.
outFile <- function(file_name, file_extension) {
    
    require(stringr)
    
    # turn to lowercase
    lower_file_name <- stringr::str_to_lower(file_name)
    
    # create date/time for file
    sysdate <- base::Sys.Date()
    # systime
    systime <- stringr::str_sub(string = base::Sys.time(), 
                            start = 12L, 
                            end = 19L) %>% 
        
           stringr::str_replace_all(string = .,
                                    pattern = ":",
                                    replacement = "")
    # combine date and time
    date_stmp <- base::paste(sysdate, systime, sep = "-")
    
    # file extension (plus dot)
    dot_file_extension <- base::paste0(".", file_extension)
    
    # combine all to outFile
    outFile <- base::paste0(date_stmp, "-", lower_file_name, dot_file_extension)
    
    # return the outFile
    return(outFile)
    
}