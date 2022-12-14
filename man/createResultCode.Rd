% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/createResultCode.R
\name{createResultCode}
\alias{createResultCode}
\title{Generates Result QR-Code}
\usage{
createResultCode(
  obj,
  url = "http://r.myasterisk.de/LSG/",
  suffix = ".html",
  site = "",
  debug = FALSE
)
}
\arguments{
\item{obj}{An Oject to be hashed.}

\item{url}{An URL.}

\item{suffix}{Suffix of the URL.}

\item{site}{Additional URL parameters.}

\item{debug}{The debug Output}
}
\value{
The QR-Code.
}
\description{
Generates Result QR-Code
}
\examples{
createResultCode(mtcars)
}
