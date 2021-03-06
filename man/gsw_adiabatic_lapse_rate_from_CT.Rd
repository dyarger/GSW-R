% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gsw.R
\name{gsw_adiabatic_lapse_rate_from_CT}
\alias{gsw_adiabatic_lapse_rate_from_CT}
\title{Adiabatic Lapse Rate}
\usage{
gsw_adiabatic_lapse_rate_from_CT(SA, CT, p)
}
\arguments{
\item{SA}{Absolute Salinity [ g/kg ]}

\item{CT}{Conservative Temperature [ degC ]}

\item{p}{sea pressure [dbar], i.e. absolute pressure [dbar] minus 10.1325 dbar}
}
\value{
adiabatic lapse rate (note unconventional unit) [ K/Pa ]
}
\description{
Note that the unit is K/Pa; multiply by 1e4 to get the more useful K/dbar.
}
\details{
The present R function works with a wrapper to a C function contained
within the GSW-C system (Version 3.05-4 dated 2017-08-07, available at
\url{https://github.com/TEOS-10/GSW-C},
as git commit '5b4d959e54031f9e972f3e863f63e67fa4f5bfec'), which
stems from the GSW-Fortran system (\url{https://github.com/TEOS-10/GSW-Fortran})
which in turn stems from the GSW-Matlab system
(\url{https://github.com/TEOS-10/GSW-Matlab}).
Consult \url{http://www.teos-10.org} to learn more about
these software systems, their authorships, and the science behind
it all.
}
\examples{
SA <- c(34.7118, 34.8915, 35.0256, 34.8472, 34.7366, 34.7324)
CT <- c(28.7856, 28.4329, 22.8103, 10.2600,  6.8863,  4.4036)
p <- c(      10,      50,     125,     250,     600,    1000)
lr <- gsw_adiabatic_lapse_rate_from_CT(SA, CT, p)
expect_equal(lr*1e7, c(0.240199646230069, 0.238457486976761, 0.203635157319712,
                     0.119829566859790, 0.100052760967308, 0.087773070307283))
}
\references{
\url{http://www.teos-10.org/pubs/gsw/html/gsw_adiabatic_lapse_rate_from_CT.html}
}
