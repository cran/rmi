% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compute_lnc_threshold.R
\name{optimize_mse}
\alias{optimize_mse}
\title{Optimize MSE of LNC Estimator}
\usage{
optimize_mse(rho, N, M, d, k, lower = -10, upper = -1e-10,
  num_iter = 10, init_size = 20, cluster = NULL, verbose = TRUE)
}
\arguments{
\item{rho}{Reference correlation.}

\item{N}{Sample size.}

\item{M}{Number of replications.}

\item{d}{Dimension.}

\item{k}{Neighborhood order.}

\item{lower}{Lower bound for optimization.}

\item{upper}{Upper bound for optimization.}

\item{num_iter}{Number of iterations of GP optimization.}

\item{init_size}{Number of initial evaluation to estimating GP.}

\item{cluster}{A \code{parallel} cluster object.}

\item{verbose}{If \code{TRUE} then print runtime diagnostic output.}
}
\description{
Gaussian process (GP) optimization is used to minimize the MSE of the LNC estimator with respect to the non-uniformity threshold parameter \code{alpha}. A normal distribution with compound-symmetric covariance is used as a reference distribution to optimize the MSE of LNC with respect to.
}
\details{
The package \code{tgp} is used to fit a treed-GP to the MSE estimates of LNC. A treed-GP is used because the MSE of LNC with respect to \code{alpha} exhibits clear non-stationarity. A treed-GP is able to identify the function's different correlation lengths which improves optimization.
}
