show_missings <- function(df) {
n <- sum(is.na(df))
cat("Missing values: ", n, "\n", sep = "")
invisible(df)
}