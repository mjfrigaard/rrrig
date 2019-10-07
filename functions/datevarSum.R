

# datevarSum function ---------------------------------------------
# this summarizes a date variable (min, median, max, and n) when given
# a data frame or tibble and variable:
# datevarSum(df, var)

datevarSum <- function(df, expr) {
  expr <- enquo(expr) # turns expr into a quosure
  summarise(df,
          min = min(!!expr), # unquotes min()
          median = median(!!expr), # unquotes median()
          max = max(!!expr), # unquotes max()
          n = sum((!is.na(!!expr))), # non-missing
          na = sum((is.na(!!expr)))) # missing
}
