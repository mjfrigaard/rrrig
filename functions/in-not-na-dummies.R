
# Author: Martin Frigaard
# Purpose: create dummy variables based on missing/non-missing values
# Version: 1.0



# this will create dummy variables using pattern matching.
# For more information, see this StackOverFlow question:
# https://tinyurl.com/y7ta7r52


# step 1 --------------------------------------------------------------
# create some date variables
dat <- tribble(
    ~pat_id, ~htn_icd9_date, ~cvd_icd9_date,
    1,         "2012-02-12",   "2011-02-19",
    2,         "2009-10-12",             NA,
    3,                   NA,   "2015-07-07",
    4,                   NA,             NA,
    5,                   NA,   "2014-03-05",
    6,         "2011-04-09",    "2011-01-19"
)
dat$htn_icd9_date <- as_date(dat$htn_icd9_date)
dat$cvd_icd9_date <- as_date(dat$cvd_icd9_date)
dat %>% glimpse()

# step 2 --------------------------------------------------------------
# create function
is_not_na_num <- function(...) as.numeric(Negate(is.na)(...))


# step 3 --------------------------------------------------------------
# use pattern matching to identify variables
dat %>%
    mutate_at(vars(matches("_date")), # find date variables
              funs(bin = is_not_na_num)) %>%  # this is my new function
    glimpse(50)
