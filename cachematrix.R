## Put comments here that give an overall description of what your
## functions do

## Function to invert a matrix with using closures
## X and inv_X are stored in enclosing environments

makeCacheMatrix <- function(X = matrix()) {
  X_inv <- NULL
  set <- function(Y) {
    X <<- Y
    X_inv <<- NULL
  }
  # Defines the Matrix to be inverted in the environment
  
  get <- function() X
  # Displays the matrix
  setInverse <- function() X_inv <<- solve(X)
  # Defines the inverting of the Matrix
  getInverse <- function() X_inv
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Outputs the Inverse of a Matrix with checking before whether
## inverse was stored before

cacheSolve <- function(X, ...) {
  X_inv <- X$getInverse()
  if(!is.null(X_inv)) {
    message("getting cached data")
    return(m)
  }
  data <- X$get()
  X_inv <- solve(data, ...)
  X$setInverse(m)
  X
}
