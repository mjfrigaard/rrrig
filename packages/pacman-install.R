#=====================================================================#
# This is code to create: pacman-install.R
# Authored by and feedback to mjfrigaard@gmail.com
# MIT License
# R Version: 3.6
# last updated: 2019-05-16
#=====================================================================#



# shiny packages --------------------------------------------------------
install.packages("pacman")

require(pacman)


# Tidyverse packages ------------------------------------------------------

tidyverse_packages <- c("tidyverse",
                        "tidymodels", 
                        "tidypredict", 
                        "tidytext", 
                        "tidygraph", 
                        "tidycensus", 
                        "tidytidbits")

# Import packages ---------------------------------------------------------
import_packages <- c("readxl",
                     "haven",
                     "jsonlite",
                     "httr",
                     "rvest",
                     "DBI")

# ~~ more import pcakges # ---------------------------------------------------
import_packages2 <- c(
    "readODS",   # Import ODS (OpenDocument Spreadsheet", into R as a data
    "rmatio",    # Reading and writing Matlab MAT files from R
    "readxl")    # reading excel sheets into R

# Wrangle packages --------------------------------------------------------
wrangle_packages <- c("lubridate",
                      "hms",
                      "blob")

# ~~ More data manipulation # ---------------------
wrangle_packages2 <- c(
    "reshape",   # flexibly reshape data with melt and cast
    "reshape2")  # again

# Program packages -------------------------------------------------------
program_packages <- c("magrittr",
                      "glue")

# Visualization pacakges # ---------------------
visualize_packages <- c(
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
    "gcookbook",
    "hrbrthemes") # package contains data sets used in r graphics cookbook"

# ~~ other visualize packages ------------
visualize_packages2 <- c(
    "lattice",  # lattice package
    "timevis",
    "leaflet",
    "plotly")   # create rich and fully interactive timeline visualizations

# Model packages ----------------------------------------------------------
modeling_packages <- c("tidymodels")

# ~~ More modeling packages # ---------------------
modeling_packages2 <- c(
    "ISLR",      # introduction to statistical learning package
    "e1071",     # misc functions from dept of stats, prob theory group
    "memisc",    # tools for managing survey data presentation of analysis
    "Hmisc",     # contains many functions useful for data analysis,
    "caret",     # model data
    "broom",     # data frames for messy output of built-in functions in R
    "faraway",   # linear models in R
    "AppliedPredictiveModeling", # applied predicitive modeling book
    "regtools")  # regression tools



# EDA packages ------------
eda_packages <- c(
    "skimr",     # tiny histograms
    "janitor",   # crosstabs and nice tables
    "tableone")    # create tables




# Import/scrape/write packages # --------------------------------------------

web_scraping_packages <- c(
    "urltools",  # A toolkit for all URL-handling needs
    "csvy",      # import and export csv data with a yaml metadata header
    "feather",   # access a feather store like a data frame
    "fst",       # read and write data frames at high speed.
    "datapasta") # easy copy and paste

# Text analysis pacakges # ---------------------------------------------------
text_analysis_packages <- c(
    "gutenbergr",  # download and process public domain works in project
    "tidytext",    # text manipulation/modeling (tidy approach",
    "scales",      # commas
    "stringi")     # string manipulation

# Communicate packages # ---------------------------------------------------
communicate_packages <- c(
    "xtable",      # coerce data to latex and html tables
    "rmdformats",  # formatting Rmd files
    "rmdHelpers",  # helpers
    "furniture",   # crosstabulations of variables
    "styler")      # style code easily

# Data set packages # ---------------------------------------------------
data_packages <- c(
    "nycflights13", # the infamous flights data
    "Lahman",      # data tables from the 'Sean Lahman Baseball Database'
    "Ecdat",       # data sets for econometrics
    "HistData",    # data sets from the history of statistics and data viz
    "fivethirtyeight") # data sets from http://fivethirtyeight.com/


# shiny packages # ----------------------------------------------------------

shiny_packages <- c("shiny", 
                    "shinydashboard", 
                    "shinyHeatmaply", 
                    "shinydashboardPlus", 
                    "shinyhelper", 
                    "shinycssloaders",
                    "flexdashboard")


# markdown packages -------------------------------------------------------

markdown_packages <- c("ggpubr",
                       "hrbrthemes",
                       "hrbrmisc")

# Database packages # ---------------------------------------------------
database_pacakges <- c("DBI", # provides connection to DBMS with a “front-end”
                       # and a “back-end”
"RMySQL", # MySQL driver for DBI
"RMariaDB", # MariaDB driver for DBI
"RPostgreSQL" # PostgreSQL driver for DBI
)

my_packages <- unique(c(tidyverse_packages,
                        
                        import_packages, 
                        import_packages2,
                        
                        wrangle_packages, 
                        wrangle_packages2,
                        
                        modeling_packages, 
                        modeling_packages2,
                        
                        database_pacakges,
                        
                        data_packages,
                        
                        visualize_packages, 
                        visualize_packages2,
                        
                        eda_packages,
                        
                        web_scraping_packages,
                        
                        program_packages,
                        
                        text_analysis_packages,
                        
                        communicate_packages))
# my_packages
pacman::p_load(char = my_packages)