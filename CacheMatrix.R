makeCacheMatrix <- function(x = matrix())
{
        m <- NULL
        set <- function(y)
	 {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmatrix <- function(solve) m <<- solve
        getmatrix <- function() m
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
}

cacheSolve <- function(x=matrix(), ...) 
{
        m <- x$getmatrix()
        if(!is.null(m)) 
	 {
                print("getting cached matrix inverse")
                return(m)
        }
        c <- x$get()
        x$setmatrix(m)
        m
}
