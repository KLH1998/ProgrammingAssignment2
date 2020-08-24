## These functions cache the inverse of a matrix

## This first function will create a matrix that is able to cache its inverse

makeCacheMatrix <- function(x = matrix()) {
a<-NULL
set<-function(y){
  x<<-y
  a<<-NULL
}
get<-function()x
setInverse<-function(inverse)a<<-inverse
getInverse<-function()a
list(set=set,get=get,
     setInverse=setInverse,
     getInverse=getInverse)
}


## This second function will calculate the inverse of the matrix given by the first function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
a<-x$getInverse()
if(is.null(a)){
  message("retrievingcacheddata")
  return(a)
}
mat<-x$get()
a<-solve(mat,...)
x$setInverse(a)
a
  }
