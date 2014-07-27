## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##input matrix as x

makeCacheMatrix <- function(x = matrix()) {

  #store matrix into cache
  m_1 <<- as.matrix(x)
  
  #creates inverse matrix variable thats empty
  m_i <<- NULL
 
  #creates the set function for changing the original matrix
  set <- function(y) {
  
  #stores matrix into cache
  m_1 <<- as.matrix(y)
    
  }
  
  #gets non-inverse matrix
  get_matrix <- function() m_1
  
  #sets inverse matrix
  set_inverse <<- function(solve_inverse) m_i <<- solve_inverse
  
  #gets inverse matrix
  get_inverse <<- function() m_i
  
  #list all the functions created and passed
  list(set=set, get_matrix=get_matrix, set_inverse=set_inverse, get_inverse=get_inverse)
  
}


## Write a short comment describing this function
##computes, inverses and stores matrix

cacheSolve <- function(x, ...) {
        
  
  

  if(is.null(m_i)){
    
  
  #new_data <- (x)
 
  ## Inverses original matrix and stores into non-cached variable
  m_i <- solve(m_1, ...)
  
  ## Runs the set_inverse function
  set_inverse(m_i)
  
  ## Return a matrix that is the inverse of 'x'
  return(m_i)
  
  }
  
  message("Yo...Pulling it Down. For Shizzle!")
  
  return(m_i) 

  }
  
  
