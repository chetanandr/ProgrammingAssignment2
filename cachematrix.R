## Put comments here that give an overall description of what your
## functions do
## R Programming - Week 3 - Assignment
## Write a short comment describing this function
##Caching the inverse of a matrix


makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y){
x <<- y
inv <<- NULL
  }
get <- function() x
setInverse <- function(invMatrix) 
inv <<- invMatrix
getInverse <- function() inv
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
## Inverse of makeCacheMatrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getInverse()
if(!is.null(inv)){
    message("Cached data")
    return(inv)
  }
data <- x$get()
inv <- solve(data)
x$setInverse(inv)
inv      
}
}
