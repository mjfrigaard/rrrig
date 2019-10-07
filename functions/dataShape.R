#=====================================================================#
# This is code to create: my personal function that returns the number
# of observations, variables, and class of a data frame.
# Authored by and feedback to mjfrigaard@gmail.com
# MIT License
# Version: 1.1
#=====================================================================#
dataShape <- function(df) {
    obs <- nrow(df)
    vars <- ncol(df)
    class <- paste0(class(df), collapse = "; ")
    first_var <- base::names(df) %>% head(1)
    last_var <- base::names(df) %>% tail(1)
    group <- is_grouped_df(df)
    heads_tails <- tibble::as_tibble(.env$ht(df))
    cat("Observations: ", obs, "\n", sep = "")
    cat("Variables: ", vars, "\n", sep = "")
    cat("Class(es): ", class, "\n", sep = " ")
    cat("First/last variable: ", first_var, "/", last_var, "\n", sep = "")
    cat("Grouped: ", group, "\n", sep = "")
    cat("Top 5 & bottom 5 observations:", "\n", sep = "")
    heads_tails
}

# test this and compare with glimpse() and dim()

    # load packages ----

# require(magrittr)
# require(tidyverse)

     # test on regular data frame ----

# mtcars %>% glimpse()
# mtcars %>% dataShape()

     # convert data frame to tibble ----

# mtcars_tibble <- as_tibble(mtcars)
# mtcars_tibble %>% glimpse()
# mtcars_tibble %>% dataShape()
