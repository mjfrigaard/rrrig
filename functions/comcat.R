#=====================================================================#
# This is code to create: comcat
# Authored by and feedback to: Graham Williams
# Email: Graham.Williams@togaware.com
# GPL (>= 2)
# Version: rattle5.1.0
#=====================================================================#


# 20170129 Convenience combinine format with comma and cat("\n") to
# return a printed string rather than print().

comcat <- function(x, ...)
{
  cat(format(x, ..., big.mark = ",", scientific = FALSE, trim = TRUE), "\n")
}

