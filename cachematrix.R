## Put comments here that give an overall description of what your
## functions do
## This Progamming assignment is about creating and manipulating the cache of a matrix.
## It consists two functions which were makeCacheMatrix and cacheSolve.
## The makeCacheMatrix is a function to cache the matrix and the inverse. 
## Meannwhile, cacheSolve is a function that returns the inverse of the matrix object unless it already 
## obtained by the by the cache and the object is not modified.
## Otherwise, the equation will compute the inverse.
## Briefly, this assignment uses a pair of functions that cache the inverse of matrix.

## Write a short comment describing this function
## As mentioned before, makeCachematrix is a function that makes a special matrix object that can 
## cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
        inv<- NULL
        set<-function(y) {
                x <<- y
                inv <<- NULL
}
get <- function() {x}
setInverse <- function(inverse) {inv<<-inverse}
getInverse<-function() {inv}
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}
## Write a short comment describing this function
## Also, as mentioned before, cacheSolve is a function that solves the inverse of the special matrix by
## the function makeCacheMatrix. 
## If the inverse has been actually computed and the matrix has not been modified, this function can recover
## it from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv<-x$getInverse()
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
}
mat<-x$get()
inv<-solve(mat,...)
x$setInverse(inv)
inv
}
