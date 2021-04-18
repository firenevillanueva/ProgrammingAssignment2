makeCacheMatrix <- function(x = matrix()) {
        happy<- NULL
        set<-function(y) {
                x <<- y
                happy <<- NULL
}
get <- function() {x}
setInverse <- function(inverse) {happy<<-inverse}  
getInverse<-function() {happy}
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

cacheSolve <- function(x, ...) {
        happy <-x$getInverse()
        if(!is.null(happy)){
                message("getting cached data")
                return(happy)
}
mat<-x$get()
happy<-solve(mat,...)     
x$setInverse(happy)
happy
}
