#=====================================================================#
# This is code to create: pacman setup
# Authored by and feedback to mjfrigaard@gmail.com
# MIT License
# Version: 1.0
#=====================================================================#
# check out package webite here: https://github.com/trinker/pacman

# installation ------------------------------------------------------------
# install.packages("pacman")
## devtools is required
library(devtools)
devtools::install_github("trinker/pacman")

# load --------------------------------------------------------------------
library(pacman)

# installing and loading (p_load) -----------------------------------------
# p_load(...,
#        char,
#        install = TRUE,
#        update = getOption("pac_update"),
#        character.only = FALSE)

# ~~~~~~~~~~~~~~~ WHAT DOES p_load() DO ???? ~~~~~~~~~~~~~~~

# Before pacman this process took the following steps:
#       1) define packages
my_pckgs <- c("tidyverse", "janitor", "magrittr", "skimr", "mosaic",
              "rmdformats", "markdowntemplates", "hrbrthemes")
#       2) define success
# success <- suppressWarnings(expr = sapply(X = my_pckgs,
#                                           FUN = require,
#                                           character.only = TRUE))

#       3) install these packages

# install.packages(names(success)[!success])

#       4) use sapply to run through this set up pacakges
# sapply(X = names(success)[!success], FUN = require, character.only = TRUE)

# but now we can just use:

pacman::p_load(... = my_pckgs)


# loading from Github -----------------------------------------------------
# there are also versions for loading from github (instead of from CRAN)
my_gh_pckgs <- c("tidyverse/dplyr",
                 "tidyverse/tibble",
                 "tidyverse/readr",
                 "ropensci/skimr",
                 "sfirke/janitor")
# install
p_install_gh(my_gh_pckgs)
# load
p_load_gh(my_gh_pckgs)



# Load the current github version -----------------------------------------
# this will load the current github version.
pacman::p_load_current_gh(my_gh_pckgs)

required_packages <- c("tidyverse", # tidyverse packages
"ggplot2", # visualize data
"dplyr", # manipulate data
"tidyr", # tidy data sets
"readr", # import/export data
"purrr", # complete and consistent functional programming toolkit
"tibble", # modern take on data frames
"hms", # date/time
"stringr", # strings
"lubridate", # more date/time
"forcats", # factors
"haven", # import and export 'spss', 'stata' and 'sas' files
"httr", # useful tools for working with http
"jsonlite", # json parser and generator optimized for statistical data
"readxl", # import/export excel data
"rvest", # scrape information from web pages
"xml2", #  xml files using a simple, consistent interface
"modelr", # helper functions for modeling
"devtools", # developing R package tools
"magrittr", # pipes %>%, %T>% and equals(",, extract(",
"fs", # file management

# more data manipulation # ---------------------
"reshape",   # flexibly reshape data with melt and cast
"reshape2",  # again

# MODELING # ---------------------
"ISLR",      # introduction to statistical learning package
"e1071",     # misc functions from dept of stats, prob theory group
"memisc",    # tools for managing survey data presentation of analysis
"Hmisc",     # contains many functions useful for data analysis,
"LOGIT",     # functions, data and code for PGLR
"caret",     # model data
"broom",     # data frames for messy output of built-in functions in R
"faraway",   # linear models in R
"AppliedPredictiveModeling", # applied predicitive modeling book
"regtools",  # regression tools

# VIZUALIZE # ---------------------
# all the ggplot2 goodies
"GGally",
"gganimate",
"ggExtra",
"ggfittext",
"ggformula",
"ggridges",
"ggnetwork",
"ggvis",
"ggrepel",
"ggtern",
"ggthemes",
"ggmap",     # ggmap for maps
"gcookbook", # package contains data sets used in (r graphics cookbook",

# EDA packages ------------
"skimr",     # tiny histograms
"janitor",   # crosstabs and nice tables
"tableone",    # create tables

# other visualize packages ------------
"lattice",  # lattice package
"timevis",   # create rich and fully interactive timeline visualizations


# Import/scrape/write # --------------------------------------------
"urltools",  # A toolkit for all URL-handling needs
"csvy",      # import and export csv data with a yaml metadata header
"feather",   # access a feather store like a data frame
"fst",       # read and write data frames at high speed.
"datapasta", # easy copy and paste

# Text analysis # ---------------------------------------------------
"gutenbergr",  # download and process public domain works in project
"tidytext",    # text manipulation/modeling (tidy approach",
"scales",      # commas
"stringi",     # string manipulation

# Communicate # ---------------------------------------------------
"xtable",      # coerce data to latex and html tables
"rmdformats",  # formatting Rmd files
"rmdHelpers",  # helpers
"furniture",   # crosstabulations of variables
"styler",      # style code easily

# Data sets # ---------------------------------------------------
"nycflights13", # the infamous flights data
"Lahman",      # data tables from the 'Sean Lahman Baseball Database'
"Ecdat",       # data sets for econometrics
"HistData",    # data sets from the history of statistics and data viz
"fivethirtyeight", # data sets from http://fivethirtyeight.com/

# read/write data # ---------------------------------------------------
"readODS",   # Import ODS (OpenDocument Spreadsheet", into R as a data
"rmatio",    # Reading and writing Matlab MAT files from R
"readxl",    # reading excel sheets into R

# dealing with databases # ---------------------------------------------------
"DBI", # provides connection to DBMS with a “front-end” and a “back-end”
# devtools::install_github("rstats-db/DBI")
"RMySQL", # MySQL driver for DBI
"RMariaDB", # MariaDB driver for DBI
"RPostgreSQL" # PostgreSQL driver for DBI
)

pacman::p_load(required_packages)
