head(mtcars, 6)
list(mtcars, 6)

#S3 Object
s3 <- list(name = "Honda", mpg = 30.4)
class(s3) <- "vehicle"
s3

vehicle <- function(n, m){
  value <- list(name = n, mpg = m)
  attr(value, "class") <- "vehicle"
  value
}

Ford <- vehicle("Ford", 20)
Ford

findmpg <- function(obj) {
  cat(obj$mpg)
}

findmpg(Ford)

#S4 Object
Mazda <- new("Car", name = "Mazda RX4", mpg = 21.0)
is(Mazda)
Mazda@name
Mazda@mpg

setGeneric("mpg", function(x) standardGeneric("mpg"))
setGeneric("mpg<-", function(x, value) standardGeneric("mpg<-"))
setMethod("mpg", "Car", function(x) x@mpg)
setMethod("mpg<-", "Car", function(x, value) {
  x@mpg <- value
  x
})

mpg(Mazda) <- 24
mpg(Mazda)