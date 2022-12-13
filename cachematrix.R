## Put comments here that give an overall description of what your
## functions do

### makeCacheMatrix creates a special matrix objects, which is able to cache its inverse
 

### this function first declares the inv variable, and next resets the cache if a new matrix is entered as a variable
### Next the get function gets the matrix, setInv is the method to set the inverse and getInv is the method to get the inversse
### finally, these methods are assigned to a list that is returned


makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) { 
    x <<- matrix
    inv <<- NULL
  }
  get <- function()x 
  setinv <- function(inverse) {
    inv <<- inverse
  } 
  getinv <- function () inv
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}



## Write a short comment describing this function

### cacheSolve solves for the inverse of a special matrix object made my bakeCacheMatrix, if the inverse of the same matrix object 
### is already calculated, this function reports the inverse matrix stored in the cache. If not, the function calculates the inverse matrix and stores it for future use


### first, the function checks if the inverse matrix already exists, if so the cached value is returned.
### Otherwise, the function solves for the inverse matrix, sets this as the future cache value, and returns the inverse matrix
cacheSolve <- function(x, ...) {
      inv <- x$getinv()
      if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
      }
      inv <- solve(x$get())
      x$setinv(inv)
      inv
}

