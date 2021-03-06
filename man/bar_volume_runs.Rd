% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bars.R
\name{bar_volume_runs}
\alias{bar_volume_runs}
\title{Construct volume runs bars}
\usage{
bar_volume_runs(dat, w0 = 10, bkw_T = 5, bkw_Pb1 = 5)
}
\arguments{
\item{dat}{dat input with at least the following column: Price, Size}

\item{w0}{the time window length of the first bar}

\item{bkw_T}{backward window length when using pracma::movavg for exponentially weighted average T}

\item{bkw_Pb1}{backward window length when using pracma::movavg for exponentially weighted average P[b_t=1]}
}
\value{
a list of vectors for HLOCV of tick runs bars. Note that the remaining data after the latest ending time point detected will be formed as a bar.
}
\description{
Construct volume runs bars
}
\examples{

set.seed(1)
dat <- data.frame(Price = c(rep(0.5, 4), runif(50)), Size = floor(runif(54)*100))
bar_volume_runs(dat)

}
