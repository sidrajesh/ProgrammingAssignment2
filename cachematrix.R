## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
##create new variable called inversion
  inversion <- NULL
  
  ##create a function called set
  set <- function(y) {
    x <<- y
    inversion <<- NULL
  }
  ##make a get function
  get <- function() x
  
  ##create names for these functions
  setTheInverse <- function(inverse) inversion <<- inverse
  getTheInverse <- function() inversion
  
  ##make a list
  list(set = set,get = get, setTheInverse = setTheInverse, getTheInverse = getTheInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
##temp is the inverse of x
  temp <- x$getTheInverse() 
  ##get the inversion if it exists
  if(!is.null(temp)) { 
    message("getting cached data")
    return(temp) 
  }
  ##if it doesn't exist we have to go to data
  data <- x$get() 
  ##solve for the data
  temp<- solve(data) 
  ##set it to x
  x$setTheInverse(temp) 
  ##return our variable
  temp
}
