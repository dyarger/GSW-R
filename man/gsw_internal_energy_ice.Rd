% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gsw.R
\name{gsw_internal_energy_ice}
\alias{gsw_internal_energy_ice}
\title{Specific Internal Energy of Ice (75-term equation)}
\usage{
gsw_internal_energy_ice(t, p)
}
\arguments{
\item{t}{in-situ temperature (ITS-90) [ degC ]}

\item{p}{sea pressure [dbar], i.e. absolute pressure [dbar] minus 10.1325 dbar}
}
\value{
specific internal energy [ J/kg ]
}
\description{
Specific Internal Energy of Ice (75-term equation)
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
t_Ih <- c(-10.7856, -13.4329, -12.8103, -12.2600,  -10.8863,  -8.4036)
p <-  c(     10,      50,     125,     250,     600,    1000)
e <- gsw_internal_energy_ice(t_Ih, p)
expect_equal(e/1e5, c(-3.556606992432442, -3.609926216929878, -3.597799043634774,
                    -3.587312078410920, -3.561207060376329, -3.512700418975375))
}
\references{
\url{http://www.teos-10.org/pubs/gsw/html/gsw_internal_energy_ice.html}
}
