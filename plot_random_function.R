############################
## plot_random_function.R
##
## Chase Grauel
##
## Purpose:
##    A function that will generate a random
##    sample of normal values, plot a histogram
##    with an overlaid mean on the plot and 
##    and returns summary of statistics about
##    the generated data.
##
## Inputs:
##    numpts = the number of data points to generate, defaults to 50
##    bins   = the number of breakpoints in the hist() function,
##             defaults to 10
##    mu     = the mean
##    sigma  = the standard deviation
##    seed   = the seed for the random number generator, defaults
##             to NULL -- so random each time, but user can override  
##
## Outputs:
##    A list is returned with the following elements:
##      Random_Sample: the generated random sample
##      Mean: the mean of the random sample
##      Standard_Deviation: the standard deviation of the random sample

plotRandomNormals <- function(numpts=50, bins=10,
                              mu=0, sigma=1,
                              seed=NULL) {
  set.seed(seed)
  rand_sample <- rnorm(numpts, mean=mu, sd=sigma)
  hist(rnorm(numpts, mean=mu, sd=sigma), breaks=bins+1)
  abline(v = mean(rand_sample), col="blue")
  list(Random_Sample = rand_sample,
       Mean = mean(rand_sample),
       Standard_Deviation = sd(rand_sample) )
}

## Default Values
plotRandomNormals()

## User specified number of points
plotRandomNormals(numpts = 30)

plotRandomNormals(numpts=1000, bins=200)

plotRandomNormals(seed=1)
