% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/2DLTfunctions mixture.r
\name{ip2}
\alias{ip2}
\title{Four-parameter inverse power hazard detection function}
\usage{
ip2(y, x, b)
}
\arguments{
\item{y}{Forward distance}

\item{x}{perpendicular distance}

\item{b}{parameter vector, where \code{b[1]} is plogis(theta[1]) \code{b[2]} is
log(theta[2]), where \code{theta[2]} is the scale parameter for x, \code{b[3]} is log(theta[3])
and \code{b[2]} is log(theta[4]), where \code{theta[4]} is the scale parameter for y.}
}
\value{
probability of detection given that an animal is availabe at location x,y
#'@examples
b=c(-23.725809,-3.136638,2.122910,-3.136638)
ip2(0.5,0.5,b=b)
yy=seq(0,0.03,length=100);xx=rep(0,100)
hh=ip2(yy,xx,b=b)
plot(yy,hh,type="l")
}
\description{
Inverse power hazard function, as per Borchers and Langrock (in press):
Has form h(y,x)=theta[1]*(1/(1+(x/theta[2])^2+(y/theta[4])^2))^(theta[3]+1).
}
\references{
Borchers, D.L and Langrock, R."Double-observer line transect surveys with Markov-
modulated Poisson process models for animal availability" Biometrics (in press).
}
