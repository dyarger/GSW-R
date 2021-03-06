% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gsw.R
\name{gsw_Sstar_from_SA}
\alias{gsw_Sstar_from_SA}
\title{Convert from Absolute Salinity to Preformed Salinity}
\usage{
gsw_Sstar_from_SA(SA, p, longitude, latitude)
}
\arguments{
\item{SA}{Absolute Salinity [ g/kg ]}

\item{p}{sea pressure [dbar], i.e. absolute pressure [dbar] minus 10.1325 dbar}

\item{longitude}{longitude in decimal degrees, positive to the east of Greenwich. (This
is called \code{long} in the TEOS-10 Matlab code.)}

\item{latitude}{latitude in decimal degrees, positive to the north of the equator. (This
is called \code{lat} in the TEOS-10 Matlab code.)}
}
\value{
Preformed Salinity [ g/kg ]
}
\description{
Calculate Preformed Salinity from Absolute Salinity, pressure,
longitude, and latitude.
}
\details{
If SA is a matrix and if its dimensions correspond to the
lengths of longitude and latitude, then the latter are
converted to analogous matrices with \code{\link{expand.grid}}.

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
SA <-   c(34.7118, 34.8915, 35.0256, 34.8472, 34.7366, 34.7324)
p <-    c(     10,      50,     125,     250,     600,    1000)
lat <-  c(      4,       4,       4,       4,       4,       4)
long <- c(    188,     188,     188,     188,     188,     188)
Sstar <- gsw_Sstar_from_SA(SA,p,long,lat)
expect_equal(Sstar, c(34.711575335926490, 34.891138777337822, 35.024705401162166,
                      34.843564118358302, 34.729005527604883, 34.719712883389462))
}
\references{
\url{http://www.teos-10.org/pubs/gsw/html/gsw_Sstar_from_SA.html}
}
\seealso{
Other things related to salinity: \code{\link{gsw_C_from_SP}},
  \code{\link{gsw_SA_from_SP_Baltic}},
  \code{\link{gsw_SA_from_SP}},
  \code{\link{gsw_SA_from_Sstar}},
  \code{\link{gsw_SP_from_C}},
  \code{\link{gsw_SP_from_SA}},
  \code{\link{gsw_SP_from_SK}},
  \code{\link{gsw_SP_from_SR}},
  \code{\link{gsw_SP_from_Sstar}},
  \code{\link{gsw_SR_from_SP}},
  \code{\link{gsw_Sstar_from_SP}},
  \code{\link{gsw_deltaSA_from_SP}}
}
\concept{things related to salinity}
