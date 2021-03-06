% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gsw.R
\name{gsw_IPV_vs_fNsquared_ratio}
\alias{gsw_IPV_vs_fNsquared_ratio}
\title{Ratio of vert. gradient of pot. density to vert grad of locally-referenced pot density}
\usage{
gsw_IPV_vs_fNsquared_ratio(SA, CT, p, p_ref = 0)
}
\arguments{
\item{SA}{Absolute Salinity [ g/kg ]}

\item{CT}{Conservative Temperature [ degC ]}

\item{p}{sea pressure [dbar], i.e. absolute pressure [dbar] minus 10.1325 dbar}

\item{p_ref}{reference pressure [ dbar ]}
}
\value{
list containing IPV_vs_fNsquared_ratio [ unitless ] and mid-point pressure p_mid [ dbar ]
}
\description{
Note that the C library had to be patched to get this working; a new
version of the library will address the bug directly.
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
CT <- c(28.8099, 28.4392, 22.7862, 10.2262,  6.8272,  4.3236)
p <-  c(     10,      50,     125,     250,     600,    1000)
p_ref <- 0
r <- gsw_IPV_vs_fNsquared_ratio(SA, CT, p, p_ref)
expect_equal(r$IPV_vs_fNsquared_ratio, c(0.999742244888022, 0.996939883468178, 0.986141997098021,
                                         0.931595598713477, 0.861224354872028))
expect_equal(r$p_mid, c(30, 87.5, 187.5, 425, 800))
}
\references{
\url{http://www.teos-10.org/pubs/gsw/html/gsw_IPV_vs_fNsquared_ratio.html}
}
