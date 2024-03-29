% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/function.R
\name{AuxClustAFT}
\alias{AuxClustAFT}
\title{Leveraging external aggregated information for the marginal accelerated failure time model.}
\usage{
AuxClustAFT(data, boots.num, Weight, gamma.e)
}
\arguments{
\item{data}{a data.frame, the column names of the data.frame are id, delta(Censor indicator),
Z.1(Covariate), Z.2(Covariate), Z.3(Covariate), Y(Observation time).}

\item{boots.num}{numeric, the replication of the bootstrap procedure.}

\item{Weight}{character, the weight function. The following are permitted: logrank, gehan.}

\item{gamma.e}{2-variate vector, the auxiliary information}
}
\value{
AuxClustAFT returns a list containing the following components:

\item{est.AI}{the estimators of coefficients for the proposed GMM estimator.}

\item{se.AI}{the standard errors of the coefficients estimators for the proposed GMM estimator.}
}
\description{
This function is used to fit marginal AFT models with homogeneous auxiliary Information.
Besides, the uncertainty in the auxiliary information is negligible.
}
\examples{
## estimate parameters
# library(AuxClustAFT)
# data("Rdata")
# AuxClustAFT(data=Rdata,boots.num=200,Weight="logrank",gamma.e=c(1,0.5))
}
