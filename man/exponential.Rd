\name{exponential}
\alias{exponential}
\alias{exponential.q}
\alias{exponential.Np}

\title{Arps exponential declines}

\description{
    Compute rates and cumulative production values for Arps exponential decline curves.
}

\usage{
exponential.q(qi, D, t)
exponential.Np(qi, D, t)
}

\arguments{
  \item{qi}{initial rate [volume / time], i.e. q(t = 0).}
  \item{D}{nominal Arps decline exponent [1 / time].}
  \item{t}{time at which to evaluate rate or cumulative [time].}
}

\value{
    \code{exponential.q} returns the rate for each element of \code{t},
    in the same units as \code{qi}.

    \code{exponential.Np} returns the cumulative production for each element of
    \code{t}, in the same units as \code{qi * t}.
}

\details{
    Assumes consistent units of time between \code{qi}, \code{D}, and \code{t}. To convert, see the decline-rate conversion functions referenced below.
}

\seealso{
  \code{\link{as.effective}}, \code{\link{as.nominal}}, \code{\link{rescale.by.time}}.
}

\examples{
## qi = 1000 Mscf/d, Di = 95% effective / year, t from 0 to 25 days
exponential.q(1000, as.nominal(0.95, from.period="year", to.period="day"), seq(0, 25))

## qi = 500 bopd, Di = 3.91 nominal / year, t = 5 years
exponential.Np(rescale.by.time(500, from.period="day", to.period="year"), 3.91, 5)
}
