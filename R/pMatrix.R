#' @title Function to compute the partial TAI or TDI values for each single gene 
#' in a standard PhyloExpressionSet or DivergenceExpressionSet object.
#' @description This function computes the partial \code{\link{TAI}} or \code{\link{TDI}} 
#' values for each single gene in a PhyloExpressionSet or DivergenceExpressionSet object.
#'
#' In detail, each gene gets a 'TAI contribution profile' or 'TDI contribution profile'. 
#'
#' \deqn{TAI_is = f_is * ps_i}
#'
#' or
#'
#' \deqn{TDI_is = f_is * ps_i}
#'
#' where TAI_is or TDI_is is the partial TAI or TDI value of gene i, 
#' \eqn{f_is = e_is / \sum e_is} and \eqn{ps_i} is the phylostratum or divergence-stratum of gene i.
#' @param ExpressionSet a standard PhyloExpressionSet or DivergenceExpressionSet object.
#' @details The partial TAI or TDI matrix can be used to perform different cluster analyses
#' and also gives an overall impression of the contribution of each gene to the global \code{\link{TAI}} or \code{link{TDI}} pattern.
#' @return a numeric matrix storing the partial TAI or TDI values for each gene in the 
#' corresponding PhyloExpressionSet or DivergenceExpressionSet. 
#' @references 
#' Domazet-Loso T and Tautz D. 2010. "A phylogenetically based transcriptome age index mirrors ontogenetic divergence patterns". Nature (468): 815-818.
#' @author Hajk-Georg Drost
#' @examples \dontrun{
#' 
#' 
#' # read standard phylotranscriptomics data
#' data(PhyloExpressionSetExample)
#' data(DivergenceExpressionSetExample)
#'
#' # example PhyloExpressionSet
#' PTM_ps <- pMatrix(PhyloExpressionSetExample)
#'
#' # example DivergenceExpressionSet
#' PTM_ds <- pMatrix(DivergenceExpressionSetExample)
#'
#'
#' }
#' @export

pMatrix <- function(ExpressionSet)
{
        
        is.ExpressionSet(ExpressionSet)
        
        nCols <- dim(ExpressionSet)[2]
        nRows <- dim(ExpressionSet)[1]
        pTAIMatrix <- matrix(nrow = nRows,ncol = nCols-2)
        
        pTAIMatrix <- cpp_pMatrix(as.matrix(ExpressionSet[ , 3:nCols]),as.vector(ExpressionSet[ , 1]))
        
        colnames(pTAIMatrix) <- names(ExpressionSet)[3:nCols]
        rownames(pTAIMatrix) <- ExpressionSet[ , 2]
        
        return(pTAIMatrix)
        
}
