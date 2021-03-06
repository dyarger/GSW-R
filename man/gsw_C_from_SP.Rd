% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gsw.R
\name{gsw_C_from_SP}
\alias{gsw_C_from_SP}
\title{Electrical Conductivity from Practical Salinity}
\usage{
gsw_C_from_SP(SP, t, p)
}
\arguments{
\item{SP}{Practical Salinity (PSS-78) [ unitless ]}

\item{t}{in-situ temperature (ITS-90) [ degC ]}

\item{p}{sea pressure [dbar], i.e. absolute pressure [dbar] minus 10.1325 dbar}
}
\value{
electrical conductivity [ mS/cm ]
}
\description{
Electrical conductivity (in mS/cm) from Practical Salinity.
To convert the return value to conductivity ratio,
divide by 42.9140 (the value of conductivity at S=35, T68=15, and
p=0).
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
SP <- c(34.5487, 34.7275, 34.8605, 34.6810, 34.5680, 34.5600)
t <- c( 28.7856, 28.4329, 22.8103, 10.2600,  6.8863,  4.4036)
p <- c(      10,      50,     125,     250,     600,    1000)
C <- gsw_C_from_SP(SP, t, p)
expect_equal(C, c(56.412599581571186, 56.316185602699953, 50.670369333973944,
                  38.134518936104350, 35.056577637635257, 32.986550607990118))
}
\references{
\url{http://www.teos-10.org/pubs/gsw/html/gsw_C_from_SP.html}
}
\seealso{
Other things related to salinity: \code{\link{gsw_SA_from_SP_Baltic}},
  \code{\link{gsw_SA_from_SP}},
  \code{\link{gsw_SA_from_Sstar}},
  \code{\link{gsw_SP_from_C}},
  \code{\link{gsw_SP_from_SA}},
  \code{\link{gsw_SP_from_SK}},
  \code{\link{gsw_SP_from_SR}},
  \code{\link{gsw_SP_from_Sstar}},
  \code{\link{gsw_SR_from_SP}},
  \code{\link{gsw_Sstar_from_SA}},
  \code{\link{gsw_Sstar_from_SP}},
  \code{\link{gsw_deltaSA_from_SP}}

Other things related to conductivity: \code{\link{gsw_SP_from_C}}
}
\concept{things related to conductivity}
\concept{things related to salinity}
