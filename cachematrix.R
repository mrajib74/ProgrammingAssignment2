## Put comments here that give an overall description of what your
## functions do
## > source('cachematrix.R')
## > m <- makeCacheMatrix(matrix(c(4, 3, 3, 2), c(2, 2)))
## > cacheSolve(m)


## Write a short comment describing this function

##   set the value of the matrix
##    get the value of the matrix
##    set the value of the inverse matrix
##    get the value of the inverse matrix


makeCacheMatrix <- function(x = matrix()) {
        
        m<- NULL
        set <- function(y){
                x<<- y
                m<<-NULL
        }
        
        get <- function() x
        setinverse <- function(inv) m <<- inv
        getinverse <- function() m
        list(
                set = set,
                get = get,
                setinverse = setinverse,
                getinverse = getinverse
        )
}







## Write a short comment describing this function
## Calculate the inverse of the special "matrix" created with the above
## function, reusing cached result if it is available
        

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
        
}
