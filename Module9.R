library(ggplot2)
library(lattice)
data(mtcars)

x <- mtcars$mpg
y <- mtcars$wt
z  <- mtcars$cyl

plot(x, y, main = "MPG by Weight in Base R",
     xlab = "MPG", ylab = "Weigh (Tons)")

ggplot(mtcars, 
       aes(x = mpg, 
           y = wt,
           color = cyl)) +
  geom_point() + 
  labs(title = "MPG by Weight")

x <- mtcars$mpg
y <- mtcars$wt
z  <- mtcars$cyl

xyplot(y ~ x, main = "MPG by Weight in Lattice"
       ,xlab = "MPG", ylab = "Weight (Tons)",
       col = z)