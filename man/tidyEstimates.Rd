% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/estimate.R
\name{tidyEstimates}
\alias{tidyEstimates}
\title{Extract estimate of group effect}
\usage{
tidyEstimates(fit, data)
}
\arguments{
\item{fit}{An \code{lm} model object.}

\item{data}{A data frame used to derive the model object \code{fit}.}
}
\value{
A data frame restoring the estimated model parameters.
}
\description{
\code{tidyEstimates} extracts the estimate of group effect from a fitted
linear model.
}
\examples{
x <- data.frame(
    group=rep(c("1", "2"), 3),
    log2inty=rep(c(10, 12), 3) + rnorm(6)
)
fit <- fitLinearModel(x)
tidyEstimates(fit, x)

}
