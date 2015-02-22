## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

###############################
# 1. set the value of matrix
# 2. get the value of matrix
# 3. set the inverse of matrix
# 4. get the inverse of matrix
makeCacheMatrix <- function(val = matrix()) {
  inv <- NULL
  set <- function(value) {
    val <<- value
    inv <<- NULL
  }
  get <- function(){
    val
  }
  
  setinverse <- function(inverse) {
    inv <<- inverse
  }
  
  getinverse <- function(){
    inv
  } 
  
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function

########################
# this method checks whether the matrix is present or not,
# This will first check if inverse of matrix is calculated or not.
# If it is calculated than it will get stored as by setinverse method.

cacheSolve <- function(val, ...) {
	inverse <- val$getinverse()
  if(!is.null(inverse)) {
    message("getting cached data.")
    return(inverse)
  }
  
  data <- val$get()
  inverse <- solve(data)
  val$setinverse(inverse)
  inverse
        ## Return a matrix that is the inverse of 'val'
}
