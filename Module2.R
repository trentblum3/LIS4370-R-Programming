#We create a vector using "c()" and assign it the name "assignment2"
assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)

#We create a function named "myMean" which takes an argument, we feed the function "assignment2"
myMean <- function(assignment2) 
{ 
  #Our function divides the sum of the numbers within the vector, and divides it by the amount of numbers in the vector to find the average and returns the value.
  return(sum(assignment2)/length(assignment2)) 
}

#Here we call our function with the argument of "assignment2" to calculate the average of the original vector.
myMean(assignment2)