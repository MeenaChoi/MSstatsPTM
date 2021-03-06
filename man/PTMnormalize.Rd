% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/preprocess.R
\name{PTMnormalize}
\alias{PTMnormalize}
\title{Normalization of log2-intensities across MS runs}
\usage{
PTMnormalize(data, method = "median", refs)
}
\arguments{
\item{data}{A list of two data frames named \code{PTM} and \code{PROTEIN}.
Both the \code{PTM} data frame and the \code{PROTEIN} data frame include
columns of \code{run}, \code{feature}, and \code{log2inty}.}

\item{method}{A string defining the normalization method. Default is
\code{"median"}, which equalizes the medians of log2-intensities across MS
runs. Other methods include to equalize log2 of intensity summation
(\code{"logsum"}), to equalize the means of log2-intensities
(\code{"mean"}), and to adjust the log2-intensities based on a reference
(\code{"ref"}) given by (\code{refs}).}

\item{refs}{A list of two data frames named \code{PTM} and \code{PROTEIN}.
Each defines the adjustment of log2-intensities for the MS runs in its
corresponding data.}
}
\value{
Normalized data stored as in \code{data}.
}
\description{
\code{PTMnormalize} normalizes log2-intensities of spectral features across
MS runs using a reference, or by equalizing a chosen summary (the log2
intensity summation, median, or mean of log2-intensities) from all features,
features of modified peptides or features of unmodified peptides.
}
\examples{
sim <- PTMsimulateExperiment(
    nGroup=2, nRep=2, nProtein=1, nSite=1, nFeature=5,
    logAbundance=list(
        PTM=list(mu=25, delta=c(0, 1), sRep=0.2, sPeak=0.05),
        PROTEIN=list(mu=25, delta=c(0, 1), sRep=0.2, sPeak=0.05)
    )
)
PTMnormalize(sim)

}
