## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  
  list(
    set = function(newX) {
      x <<- newX
      i <<- NULL
    },
    get = function()
      x,
    setinverse = function(newI)
      i <<- newI,
    getinverse = function()
      i
  )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if (!is.null(i)) {
    return(i)
  }
  i <- solve(x$get())
  x$setinverse(i)
  i
}
