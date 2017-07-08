## Put comments here that give an overall description of what your
## functions do

## This function will store a matrix to the cache by using two defined variables

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function()x
  setsolve<-function(solve)m<<-solve
  getsolve<-function()m
  list(set=set,get=get,
       setsolve=setsolve,
       getsolve=getsolve)
}


##This function will calculate the inverse of the matrix created above
##If the inverse has already been calculated, it gets the inverse from the cache and
##skips the computation. Otherwise, it calculates the inverse of the data and sets the 
##value of the inverse in the cache.

 cacheSolve<-function(x,...){
   ##Return a matrix that is the inverse of 'x'
   m<-x$getsolve()
   if(!is.null(m)){
     message("getting cached data")
     return(m)
   }
   data<-x$get()
   m<-solve(data,...)...
   x$setsolve(m)
   m
   
 }




