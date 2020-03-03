rsq_t <- function(tobj){
    t_val <- tobj$statistic
    dof <- tobj$parameter
    r_sq <- t_val^2 / (t_val^2 + dof)
    print(paste("The r-squared value of this t-test is", round(r_sq, digits = 4)))
    print(paste0(round(r_sq*100, digits = 2),"% of the variance in the outcome is explained by the predictor."))
    names(r_sq) <- "R-squared"
    return(r_sq)
}