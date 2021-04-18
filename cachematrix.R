
## This Progamming assignment is about creating and manipulating the cache of a matrix.
## It consists two functions which were makeCacheMatrix and cacheSolve.
## The makeCacheMatrix is a function to cache the matrix and the inverse. 
## Meannwhile, cacheSolve is a function that returns the inverse of the matrix object unless it already 
## obtained by the by the cache and the object is not modified.
## Otherwise, the equation will compute the inverse.
## Briefly, this assignment uses a pair of functions that cache the inverse of matrix.

## As mentioned before, makeCachematrix is a function that makes a special matrix object that can 
## cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
        ## This part of makeCacheMatrix code sets the inverse matrix.
        inv<- NULL
        ## This part of the code, moreover, interprets the set function for the matrix.
        set<-function(y) {
                x <<- y
                inv <<- NULL
}
## This part of the code, on the other hand, interprets the return matrix objet by using the code "get".
get <- function() {x} ## this functions as a return special matrix
## This part of the code furthermore sets the inverse of matrix.
setInverse <- function(inverse) {inv<<-inverse}
## This part of the code interprets the function for returnning the inverse matrix.        
getInverse<-function() {inv}
        ## Lastly, this code puts all known functions into a list.
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## Also, as mentioned before, cacheSolve is a function that solves the inverse of the special matrix by
## the function makeCacheMatrix. 
## If the inverse has been actually computed and the matrix has not been modified, this function can recover
## it from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv<-x$getInverse()
        ## This part of code verifies if the inverse has been computed already
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
}
## That any such inverse matrix has been modified, it computes for the inverse
mat<-x$get()
inv<-solve(mat,...)
## This, moreover, sets the value of the inverse in the cache through the "setInv" function.        
x$setInverse(inv)
inv
}
