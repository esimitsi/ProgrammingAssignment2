## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 ##Return a matrix that is the inverse of 'x'
  inverse <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setinverse <- function(inverseM) inverse <<- inverseM
  getinverse <- function() inverse
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ##Return a matrix that is the inverse of 'x'
  inverse <- x$getinverse()
  if(!is.null(inverse)) {
    message("getting cached data.")
    return(inverse)
  }
  inf <- x$get()
  inverse <- solve(inf)
  x$setinverse(inverse)
  inverse
}
