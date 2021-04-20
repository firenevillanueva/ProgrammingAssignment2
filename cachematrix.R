makeCacheMatrix <- function(x = matrix()) {
        blue <- NULL
        set<-function(y) {
                x <<- y
                blue <<- NULL
}
get <- function() {x}
setInverse <- function(inverse) {blue<<-inverse}  
getInverse<-function() {blue}
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

cacheSolve <- function(x, ...) {
        blue <-x$getInverse()
        if(!is.null(blue)){
                message("getting cached data")
                return(blue)
}
mat<-x$get()
blue<-solve(mat,...)     
x$setInverse(blue)
blue
}
