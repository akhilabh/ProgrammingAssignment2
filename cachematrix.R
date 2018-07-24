
rm(list = ls())

#This function creates the inverse of whatever matrix that is passed in, after which it caches it


makeCacheMatrix <- function(x = matrix()) {
  matrix <<- solve(x) 
  matrix
}

#this verson checks for the validity of the matrix, and then it does the inverse of the function


cacheSolve <- function(x,... ) {
 #checking to see if the matrix exists
  if(exists('matrix')) {
    message("Congratulations! the inverse object exists")
    return(matrix)
  } 
 #if it does not exist then the program sends a message to the user that it does not work and then it sends it to the matrix
 else { 
    message("this object does not exist :( ")
    makeCacheMatrix(x)
}
}

#I tested the function with the tester function

Tester <- matrix(1:7,3,3)
cacheSolve(Tester)
