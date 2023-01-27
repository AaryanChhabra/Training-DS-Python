# Some parallel between python and R

# given a vector:
# want to filter out the unoque elements - a parallel of set.

a <- c(1,2,3,2,1,2,3,1)
b<- unique(a)
b

# remove the last element from a vector: parallel of pop
b <- a[-length(a)]
b


# Lets try to replicate np.eye(n)

iidentity <- function(n){
  mat <- matrix(0, n, n)
  for(i in 1:n){
    mat[i,i] <- 1
  }
  mat
}

iidentity(4)


# to find the index of the max value in something:

v <- c(1,2,4,6,7,9,8,6,5,1)
v <- matrix(v, 5,2, byrow = T)
# I want to find th coordinates of the max entry on the matrix.

which(v == max(v), arr.ind = T)


position_to_coor <- function(p,r,c){
  x <- as.integer(p/c)
  y <- p %% c
  
  c(x,y)
}



setwd("E:/Training/Udemy/Python DataScience/PythonDataScience/Python DS")

tips <- read.csv('tips.csv')

head(tips)


