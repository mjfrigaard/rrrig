

# mean_sd_mutatants function ------------------------------------------
# this creates two new variables (mean_, sd_,) when given a data frame
# or tibble and variable

mean_sd_mutatants <- function(df, expr) {
  expr <- enquo(expr) # convert expr to a quosure
  mean_name <- paste0("mean_", quo_name(expr)) # convert expr to a string
  sd_name <- paste0("sd_", quo_name(expr)) # convert expr to a string

  mutate(df,
    !!mean_name := mean(!!expr), # unquotes mean_name/:=/unquotes mean()
    !!sd_name := sd(!!expr) # unquotes sd_name/:=/unquotes sd()
  )
}