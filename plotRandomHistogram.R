#* plotRandomHistogram.R
#* 
#* Author: Rachel Stolly
#* 
#* Purpose:
#*     A function that will generate a sample of normal
#*     "observations" and plot the histogram of that data
#*     
#* Inputs:
#*     num_pts = the number of observations to randomly generate
#*     mu = the theoretical mean of the normal deviation that generates the data
#*     sigma = the theoretical standard deviation
#*     seed = an optional random number generator seed value, defaults to NULL
#*     meanColor = the color of the line corrresponding to the mean of the data
#* 
#* Output:
#*     A histogram of the generated data is drawn
#*     A list with the following elements:
#*          random_obs = a vector with the randomly generated data
#*          mean_random_obs = corresponding sample mean
#*          SD_random_obs = corresponding standard deviation
#* 


plotRandomHistogram <- function(num_pts = 30, mu=0, sigma=1, seed=NULL, meanColor="royalblue") {
  set.seed(seed)
  x <- rnorm(num_pts, mean=mu, sd=sigma)
  mean_x <- mean(x)
  hist(x)
  abline(v=mean_x, lwd = 5, col=meanColor)
  
  ## In R, in a function, the output from the last line is automatically returned
  list(random_obs = x, mean_random_obs = mean_x, SD_random_obs = sd(x))
}

plotRandomHistogram()
plotRandomHistogram(seed=19)
plotRandomHistogram(seed=19, num_pts = 1000000)
plotRandomHistogram(seed=19, num_pts = 1000000, meanColor = "forestgreen")

my_output <- plotRandomHistogram(seed = 5, num_pts = 200, mu = 70,
                    sigma = 2.5, meanColor = "goldenrod")

my_output$mean_random_obs
