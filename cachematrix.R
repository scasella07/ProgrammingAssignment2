## Put comments here that give an overall description of what your
## Write a short comment describing this function
##makeCacheMatrix is a function that was created to contain a list that produces a matrix and an inverse, does the following:
##1) sets the value of the matrix
##2) pulls the value of the matrix
##3) sets the value of the inverse matrix
##4) pulls the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <-NULL
  set <-function(y) {
    x<<-y
    inv <<-NULL
  }
  get <-function() x
  setinverse<-function(inverse) inv <<-inverse
  getinverse<-function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## This function returns the inverse of the function written above. Then it checks
## to see if the inverse has been computed (message displayed) or not. 

cacheSolve <- function(x, ...) {
            inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinverse(inv)
    inv
}
