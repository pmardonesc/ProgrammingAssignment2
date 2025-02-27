## Put comments here that give an overall description of what your
## functions do

# makeVector <- function(x = numeric()) {
#         m <- NULL
#         set <- function(y) {
#                 x <<- y
#                 m <<- NULL
#         }
#         get <- function() x
#         setmean <- function(mean) m <<- mean
#         getmean <- function() m
#         list(set = set, get = get,
#              setmean = setmean,
#              getmean = getmean)
# }

# cachemean <- function(x, ...) {
#         m <- x$getmean()
#         if(!is.null(m)) {
#                 message("getting cached data")
#                 return(m)
#         }
#         data <- x$get()
#         m <- mean(data, ...)
#         x$setmean(m)
#         m
# }

## Write a short comment describing this function
## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(z){
                x <<- z
                inv <<- NULL
        }
        get <- function() x
        setInverso <- function(solveMatrix) 
                inv <<- solveMatrix
        getInverso <- function() inv
        list(set = set, get = get, setInverso = setInverso, getInverso = getInverso)
} 



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverso()
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setInverso(inv)
        inv
}
