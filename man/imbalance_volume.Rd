% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bars.R
\name{imbalance_volume}
\alias{imbalance_volume}
\title{The auxiliary function b_tv_t for constructing volume imbalance bars. The first b_tv_t is assigned the value 0 because no information is available}
\usage{
imbalance_volume(dat)
}
\arguments{
\item{dat}{dat input with at least the following columns: Price, Size}
}
\description{
The auxiliary function b_tv_t for constructing volume imbalance bars. The first b_tv_t is assigned the value 0 because no information is available
}
\examples{

set.seed(1)
dat <- data.frame(Price = c(rep(0.5, 4), runif(10)), Size = rep(10,14))

b_tv_t <- imbalance_volume(dat)

}
