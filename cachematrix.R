## Put comments here that give an overall description of what your
## functions do
## A Matrix function is a computation that is risky that can hold some benefit
## which can have the inverse of a matrix than compute it repeteadly

## Write a short comment describing this function
## The function has 2 functions that are to create a special object to store a matrix and have its inverse

makeCacheMatrix <- function(x = matrix()) {
        
 inv <- NULL
 set <- function(y) {
    x <<- y
    inv <<- NULL
   }
   get <- function() x
   setinverse <- function(inverse) i <<- inverse
   getinverse <- function() inv
   list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
    }    


## Write a short comment describing this function
## This function computes the inverse of the speacial matrix created by makeCacheMatrix. If the inverse of a matrix have been calculated and the matrix itself has not been modified, then it retrieves the inverse from the cache.
cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
    if (!is.null(inv)) {
    message("getting cached data")
     return(inv)
     }   
    matrix <- x$get()
     inv <- solve(matrix, ...)
     x$setInverse(inv)
     inv   
