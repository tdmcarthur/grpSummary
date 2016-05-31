
# depends script

# First, check that these work:
# install.packages(c("devtools", "roxygen2", "knitr", "testthat", "ggplot2"))
devtools::find_rtools()
devtools::has_devel()

# Then input this:

devtools::use_package("effsize")

devtools::document()

# Then in RSudio --> Build --> Clean and rebuild


