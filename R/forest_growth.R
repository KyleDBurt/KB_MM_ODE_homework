
#' Model of forest growth with canopy closure threshold
#' @param t Time since start (years)
#' @param C Forest size (kg/C)
#' @param parms List with values: r (growth rate below threshold), 
#' g (growth rate at or above threshold in kg/year), 
#' K (carrying capacity in kg C), 
#' threshold (forest size at which growth behavior changes kg C)
#' @return A list with the rate of change in forest size.

dforestgrowth <- function(Time, C, parms) {
  if (C < parms$threshold) {
    dC <- parms$r * C
  } else {
    dC <- parms$g * (1 - C / parms$K)
  }
  return(list(dC))
}
