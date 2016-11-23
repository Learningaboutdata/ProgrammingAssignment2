## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This caches the inverse of the matrix that is passed to it as an argument 
## and stores the result in the variable m which is defined within the function.
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function()x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)

}


## Write a short comment describing this function
## This function retrieves the cached value from the getinverse function which was defined 
## within the makeCacheMatrix function. The getinverse function contains the variable m where
## the inverse of the matrix may be stored.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if (!is.null(m)){ 
    message("getting cached data")
    return(m)
  }
  d <- x$get()
  m <- solve(d,...)
  x$setinverse(m)
  m
}
