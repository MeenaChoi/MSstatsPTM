% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/estimate.R
\name{fitLinearModel}
\alias{fitLinearModel}
\title{Fit linear model}
\usage{
fitLinearModel(df, fctBatch = FALSE)
}
\arguments{
\item{df}{A data frame with columns \code{log2inty}, \code{group}, and
\code{batch} for one PTM site.}

\item{fctBatch}{A logical. \code{TRUE} considers batch effect, \code{FALSE}
otherwise. Default is \code{FALSE}.}
}
\value{
An \code{lm} model object.
}
\description{
\code{fitLinearModel} fits and returns a linear model with \code{log2inty}
as response, and \code{group} and possibly \code{batch} as fixed effects.
}
\examples{
x1 <- data.frame(
    batch=rep(c("1", "2"), each=4),
    group=rep(c("1", "2"), 4),
    log2inty=rep(c(10, 12), 4) + rnorm(8)
)
fitLinearModel(x1, fctBatch=TRUE)

x2 <- data.frame(
    group=rep(c("1", "2"), 3),
    log2inty=rep(c(10, 12), 3) + rnorm(6)
)
fitLinearModel(x2)

}
