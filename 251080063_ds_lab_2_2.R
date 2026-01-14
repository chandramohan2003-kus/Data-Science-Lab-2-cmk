##################### Task 1 #####################
# Given Function
f <- function(x){
  exp(-2*x^2)
}

f1 <- function(x){
  -(4*x)*exp(-2*x^2)
}

f2 <- function(x){
  (14*x^2 - 4)*exp(-2*x^2)
}

f3 <- function(x){
  (-64*x^3 - 384*x^2 +48)*exp(-2*x^2)
}

f4 <- function(x){
   254*x^4 - 384*x^2
}

################# Task 2
A <- matrix(1:12, nrow = 4, ncol = 3)
View(A)

s <- svd(A) # singular value decomposition of A
d <- diag(s$d)
u <- s$u
v <- s$v
View(d)

A_hat <- u%*%d%*%t(v)
View(A_hat)
AAt <- A%*%t(A)
flag <- 0
c <- AAt%*%u[,1])

for(i in c(1:3)){
  if((AAt%*%u[,i]) != (d[i,i]^2)*u[,i]){
    flag <- 1
    break
  }
}
if(flag == 0){
  print("Colums of u are left singular")
}else{
  print("Colums of u are not left singular")
}
AtA <- t(A)%*%A
flag <- 0
for(i in c(1:3)){
  if(c(AtA%*%v[,i]) != c((d[i,i]^2)*v[,i])){
    flag <- 1
    break
  }
}
if(flag == 0){
  print("Colums of u are left singular")
}else{
  print("Colums of u are not left singular")
}




