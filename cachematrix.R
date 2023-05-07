# Usage: makeCacheMatrix.R
# Has two functions: makeCacheMatrix and cacheSolve
# The first makes a matrix and its inverse, the second retrieves the inverse from cache


makeCacheMatrix <- function(m = matrix()) {
  mInverse <- NULL
  set <- function(y) {
    m <<- y
    mInverse <<- NULL
  }
  get <- function() m
  setinverse <- function(inverse) mInverse <<- inverse
  getinverse <- function() mInverse
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}



cacheSolve <- function(m, ...) {
  mInverse <- m$getinverse()
  if (!is.null(mInverse)) {
    message("getting cached data")
    return(mInverse)
  }
  data <- m$get()
  mInverse <- solve(data, ...)
  m$setinverse(mInverse)
  mInverse
}
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

