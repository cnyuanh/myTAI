% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pTDI.R
\name{pTDI}
\alias{pTDI}
\title{Compute the Divergence Stratum Contribution to the Global Transcriptome Divergence Index}
\usage{
pTDI(ExpressionSet)
}
\arguments{
\item{ExpressionSet}{a standard DivergenceExpressionSet object.}
}
\description{
This function takes a standard \emph{ExpressionSet} object and computes the partial contribution of the different divergence strata (ds) to the global Transcriptome Divergence Index profile.
}
\details{
This function (\code{pTDI}) computes the partial TDI contribution for each phylostratum and each developmental stage and returns a data matrix storing the partial TDI contribution value for each divergence and each developmental stage.
}
\examples{

data(DivergenceExpressionSetExample)

# get the partial contribution of divergence strata to the global
# TDI pattern
pTAI(DivergenceExpressionSetExample)

}
\references{
Domazet-Loso T. and Tautz D. (2010). \emph{A phylogenetically based transcriptome age index mirrors ontogenetic divergence patterns}. Nature (468): 815-818.

Quint M et al. (2012). A transcriptomic hourglass in plant embryogenesis. Nature (490): 98-101.

Drost HG et al. (2015). Evidence for Active Maintenance of Phylotranscriptomic Hourglass Patterns in Animal and Plant Embryogenesis. Mol Biol Evol. 32 (5): 1221-1231 doi:10.1093/molbev/msv012.
}
\seealso{
\code{\link{pTAI}}, \code{\link{TAI}}, \code{\link{TDI}}, \code{\link{PlotPattern}}
}
\author{
Hajk-Georg Drost
}
