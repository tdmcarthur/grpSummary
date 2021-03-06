% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grpSummary.r
\name{grpSummary}
\alias{grpSummary}
\title{Compares summary values of variables, split by defined groups}
\usage{
grpSummary(input.data, instructions.data, factors.as.numeric = TRUE,
  progress.bar = TRUE)
}
\arguments{
\item{input.data}{A data frame on which to perform the summary.}

\item{instructions.data}{A data frame. See 'Details'.}

\item{factors.as.numeric}{TODO}

\item{progress.bar}{logical. Whether to display a progress bar while calculations are being carried out.}
}
\value{
Returns a matrix containing the results of the summary operations
}
\description{
This is a riveting description that describes what your function does. This
is a link to \code{\link{hello}}.
}
\details{
instructions.data is a dataframe with the following column names in the proper order:
"column"       "category"     "consolidate"  "exclude"      "quantile"     "use.function"
Each row deals with a different variable on which to split the data and perform the summary statistics.
Typically, this dataframe would be created by reading in a csv file.
The information in each column must conform to these specifications:

* column: Must be the exact name of a column in the dataframe. This is the "target column"
category: Must be either "TRUE" or "FALSE". Indicates whether the target column in the
dataframe is a categorical variable or not.

* consolidate: A set of categories in the target column to consolidate. separated by colons,
pipes, and semicolons like in the following: WEST:California|Oregon|Nevada;EAST:New York|Virginia

* exclude: Must be exact name(s) of categories in the target column that will be excluded when
splitting the sample. Must be separated by semicolons, e.g. excluded.var.1;excluded.var.2;excluded.var.3

* quantile: For numeric target columns, specify the quantile cut points to split the sample by.
Quantiles must be separated by semicolons, e.g. .25;.5;.75

* use.function: The name(s) of the R function(s) that will be applied to the data, separated by
semicolons if more than one. Must be exactly as written in R. mean, sd, and median are known to
work. Other functions are not guaranteed to work and may simply produce
all NA's. na.rm=TRUE is automatically added as an argument to the
function. Input example: mean;sd;median

* cohen.d: Must be either "TRUE" or "FALSE". Indicates whether to calculate Cohen's d.
}
\examples{





}
\seealso{
\code{\link{hello}}
}

