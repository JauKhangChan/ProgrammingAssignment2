## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

	## 1. set the value of the matrix
	## 2. get the value of the matrix
	## 3. set the value of the Inverse Matrix
	## 4. get the value of the Inverse Matrix

	inv <- NULL
    set <- function(y) {
		x <<- y
		inv <<- NULL
    }
    get <- function() x
    setInverse <- function(inverse) inv <<- inverse
    getInverse <- function() inv
    list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		inv <- x$getInverse()
        if(!is.null(inv)) {
			message("getting cached inverse matrix")
			return(inv)
        }
        data <- x$get()
		## use solve function to get the inverse of the matrix. When the 2nd parameter is absent, the function return the inverse of 1st param.
        inv <- solve(data, ...)
        x$setInverse(inv)
        inv
}
	