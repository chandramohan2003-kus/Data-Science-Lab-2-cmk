# 
#Basic arithmetic operations
2+3
7-5
2*8
27/4
8^3 # exponent operator
# Assignment operator
x <- 3
y <- 15/7
z <- x+y
z 
print(z) # you can write any of one either z or print(z). Both are same
# 
# declaration and initialization of the variables
x<-14
y<-3
# arithmetic operations
sum_ <- x+y # addition
substraction <- x-y # substraction
multiplication <- x*y # multiplication
division <- x/y # division
power_ <- x^y # exponent
# printing the statements
print(sum_)
print(substraction)
print(multiplication)
print(division)
print(power_)
# finding average
z<-39
print("Average is:")
print((x+y+z)/3)
# 
# R has six data type numeric,integer,character,logical,complex,row
a<-42 # numeric data type
b<-10L # integer data type
c<-"chandramohan" # character data type
d<- TRUE # logical data type
e<- 2+3i # complex data type
f<-charToRaw("Hi") # raw data type used to store binary data
class(a) # finding class i.e. higher lever data type of the variable
typeof(a) # finding type of the variable i.e. how data is stored in the memory
class(b)
typeof(b)
class(c)
typeof(c)
class(d)
typeof(d)
class(e)
typeof(e)
class(f)
typeof(f)
int_to_char<-as.character(a) # this sentence is used for type conversion.
log_to_int<-as.integer(d)
# 
# print() function is used to print something like value of a variable or string
# print() automatically adds a "" to a charactor type data.
# cat(..., sep=" ", fill=False) is also uses to print several variables and strings
# at a time as a single string. ..., says that you can pass any number of variables
# or strings to it. sep="" says that what should be printed among the variables
# fill= says that after how many words line should be changed.
# Now learn about Vector:
# R has five type of data structures
# vector - one dimensional same data type
# matrix - two dimensional same data type
# array -  multidimensional same data type
# list - one dimensional but can have different data types
# data frame - two dimensional column can have diffenrent data types.
# Now vector:
# vector is a sequence of elements of same data type. 
# Creation of vector: (indexing starts from 1 in vector not from 0)
# Using c(): vector_name<-c(list of elements seperated by ,) same as ODA 
# Using ':' : vector_name<- 1:10 it stores numbers from 1 to 10.
# Using seq(): vector_name<- seq(from=start_point,to=end_point,by=jump)
# Using rep(): vector_name<- rep(element,times=no. of repeatation)
# Accessing elements:
# vector_name[2] it will access second element
# vector_name[1:4] it will access first four elements
# vector_name[-2] it will access all elements except second
# Vector Operation:
# let a and b be two vectors then
# a+b addition of vectors
# a-b substraction of vectors
# a*b multiplication of vectors
# a>15 compare with each element and return True and False for each elements
# sum(a) it will add all the elements 
# functions:
# length(a) it will give length of vector
# max(a) it will give maximum element
# min(a) it will give minimum element
# mean(a) it will give average of all the elements
# sort(a) it will sort data
# type conversion can also be applied on vector. in mixed vector type conversion flexibility
# is followin:
# logical<integer<numeric<character
# we can also aply type conversion on vectors using functions like as.numeric() or as.integer()..
# 
# 
# Creting vectors
marks<- c( 45, 67, 88, 76)
student_names<- c( "Ram", "Shyam", "Geeta")
logical_vector<- c( TRUE, FALSE, TRUE, TRUE)
# Printing class and type of vectors
print(class(marks))
print(typeof(marks))
print(class(student_names))
print(typeof(student_names))
print(class(logical_vector))
print(typeof(logical_vector))
# Accessing Elements of vectors
cat("Second marks",marks[2],"\n")
cat("Fourth marks",marks[4],"\n")
cat("Fist two students names:", student_names[1:2],"\n")
cat("Marks except third position:", marks[-3],"\n")
# 
# 
marks<-c(48,72,90,33,65,51,87) # creation of vector
cat("Marks greater than 60: \n")
print(marks[marks>60]) # it will print the marks greater than 60
cat("Marks less than or equal to 50: \n")
print(marks[marks<=50])
cat("Marks between 50 to 80: ")
print(marks[marks>50 & marks<80])
cat("Marks that are not greater than 75: \n")
print(marks[marks<=75])
is_passed=marks>=50
cat("is_passed: ",is_passed,"\n")
cat("Marks of the students who are passed: \n")
print(marks[is_passed])
# 
# 
# List 
my_list<-list(name="Chandramohan",age=24,marks=c(70,80,90),passed=TRUE)
# don't think like that list is like dictionary here key is replace by variable
my_list$name # to access list element by variable name
my_list[[3]] # to access list element by index
# Matrix
mt<-matrix(1:9,nrow=3,ncol=3) # to create a matrix
mt[1,2] # to access second element of first row
mt[,3] # to access third column
mt[2,] # to access second row
print(mt)
result <- rbind(matrix1, matrix2) # to join two matrices row-wise
result <- cbind(matrix1, matrix2) # to join two matrices column-wise
# Data Frame
df=data.frame(name=c("Ram","Shyam","Geeta"),
              marks=c(78,55,92),
              passed=c(TRUE,TRUE,TRUE)) # this is called data frame
df$name # to access name column
df[1,2] # to access the element ot first row and second column just like matrix
df$marks[2] # to access second students marks
# Factor
gender<-factor(c("Male","Female","Male","Female"))  # it is used to store categorical data
print(gender)
levels(gender)
# 
# 
my_result<- list(name="Chandramohan" ,age="23", marks=c(97,92,95,92,98,99),  is_passed=TRUE)
cat("My marks: ",my_result$marks)
cat("My passed status: ",my_result$is_passed)
mt<-matrix(1:9,nrow=3,ncol=3)
cat("Element at 2nd row,3rd column: ",mt[2,3])
cat("Elements of 1st colums: ",mt[,1])
result<-data.frame(names=c("Chandramohan","Vikash","Aryan","Juhi"),
                   marks=c(99,89,23,33),
                   is_passed=c(TRUE,TRUE,FALSE,TRUE))
cat("Students who passed: ",result$name[result$is_passed==TRUE]) 
# you can't access whole dataframe along with a condition you need to access a column at a time 
# while using conditional access
levels=factor(c("A","B","O","AB"))
print(levels)
print(summary(levels)) # to get summary of the factors
# 
# Today we will learn about fuctions
#Basic syntax of the function: function_name <- function(argument){
#                                                                   bock of codes
#                                                                    }
#Now some built in functions: sum()- for sum mean() - for average length() - for length round() - for rounding up 
#paste() - for joining strings is.na() - check for missing values
#Now let's we do some practice on these functions: 
is_even<-function(x){
  if(x%%2==0){
    cat("Entered number",x,"is even")}
  else
  { cat("Entered number",x,"is odd")}
}
is_even(3)
calculate_grade <- function(marks){
  if(marks>90){
    cat("Your grade is 'A'")
  }
  else if(marks>75){
    cat("Your grade is 'B'")
  }
  else if(marks>50){
    cat("Your grade is 'C'")
  }
  else if(marks<50){
    cat("You are failed")
  }
}

calculate_grade(59)
summary_stats<-function(data){
  cat("Min: ",min(data),"\n")
  cat("Max: ",max(data),"\n")
  cat("Mean: ",mean(data),"\n")
  cat("Standard Deviation: ",sd(data,na.rm=TRUE),"\n") # sd() is used for standard deviation
}
summary_stats(data=c(4,2,6,1,0,5,6,3))
# Today we will learn about if,else if , else and for, while statement. We will also learn
# break and next statement.
# syntax of if,else if, else statement: 
# if(condition)
#    {block of codes}
# else if(condition)
#    {block of codes}
# else 
#    { block of codes}
# syntax of for loop:
# for(variable in sequence)
#    {block of codes}
#syntax of while loop:
# while(condition)
#     {block of codes}
# next: it is used to skip any specific iteration
# break: it is used to imeadiat exit from the loop
# syntax for repeat statement:
# repeat(condition)
#     {block of codes}
# Now we will do some practical excercises on these concepts
# printing numbers from 1 to 10 using for loop
print("Countings from 1 to 10:")
for(i in 1:10)
  print(i)
# calculating sum of all the numbers using while loop
i<-1
sum=0
while(i<=100){
  sum<-sum+i
  i<-i+1
}
cat("Sum of the numbers from 1 to 100 is: ",sum)
# printing even numbers from 2 to 10 using repeat statement
i=2
repeat{
  if(i%%2==0){
    cat(i,"is a even number \n")
  }
  if(i==10){
    break
  }
  i<-i+1
}
# printing table of 5
print("Table of 5:")
for(i in 1:10){
  cat(i,"*5=",i*5,"\n")
}
#  In this file we will learn about matrix 
# syntax for matrix: matrix_name<-matrix(data,nrow,ncol,byrow=TRUE OR FALSE) 
# byrows tells wether matrix should be filled row-wise instead of columnwise
# Let A and B be the two matrices then
# A+B addition of matrices
# A-B substraction of matrices
# A*B elementwise multiplication of matrices
# A%*%B multiplication of matrices
# t(A) transpose of matrix
# diag(A) diagonal elements of the matrix

# solve(A) inverse of the matrix
