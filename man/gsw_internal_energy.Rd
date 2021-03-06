% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gsw.R
\name{gsw_internal_energy}
\alias{gsw_internal_energy}
\title{Specific Internal Energy of Seawater (75-term equation)}
\usage{
gsw_internal_energy(SA, CT, p)
}
\arguments{
\item{SA}{Absolute Salinity [ g/kg ]}

\item{CT}{Conservative Temperature [ degC ]}

\item{p}{sea pressure [dbar], i.e. absolute pressure [dbar] minus 10.1325 dbar}
}
\value{
specific internal energy [ J/kg ]
}
\description{
Specific Internal Energy of Seawater (75-term equation)
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
p <-  c(     10,      50,     125,     250,     600,    1000)
e <- gsw_internal_energy(SA, CT, p)
expect_equal(e/1e5, c(1.148091576956162, 1.134013145527675, 0.909571141498779,
                    0.408593072177020, 0.273985276460357, 0.175019409258405))
}
\references{
\url{http://www.teos-10.org/pubs/gsw/html/gsw_internal_energy.html}
}
