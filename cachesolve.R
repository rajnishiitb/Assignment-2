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
}`