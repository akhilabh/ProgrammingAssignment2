 
 makeCacheMatrix <- function(x = matrix()) {
       
         set <- function(y) {
                 x <<- y
                 Inverses <<- NULL
         }
         get <- function() x
         createInverse <- function(inverse) Inverses <<- inverse
         pullInverse <- function()Inversesinv
         list(set = set,
              get = get,
              createInverse = createInverse,
              pullInverse = pullInverse)
 }


 cacheSolve <- function(x) {
        
         Inverses <- x$pullInverse()
        if (!is.null(Inverses)) {
                 message("getting cached data")
                 return(Inverses)
         }
         mat <- x$get()
         inv <- solve(mat, ...)
         x$createInverse(Inverses)
         Inverses
 }
 
