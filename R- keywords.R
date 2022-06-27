# Keywords in R

#if statement

a <- 5
if(a>0)
{
  print("Positive number")
}

#R program to demonstrate the use of while loop 

val = 1

# using while loop 
while (val <= 5 ) 
{ 
  # statements 
  print(val) 
  val = val + 1
} 

# R program to demonstrate the use of repeat loop 

val = 1

# using repeat loop 
repeat 
{ 
  # statements 
  print(val) 
  val = val + 1
  
  # checking stop condition 
  if(val > 5) 
  { 
    # using break statement 
    # to terminate the loop 
    break
  } 
} 

# R program to demonstrate the use of for loop 

# using for loop 
for (val in 1:5) 
{ 
  # statement 
  print(val) 
} 

# simple R function to check whether x is even or odd
evenOdd = function(x){
  if(x %% 2 == 0)
    return("even")
    else
      return("odd")
}
print(evenOdd(4))
print(evenOdd(3))

#next 
# Illustrate next in for loop
val <- 6:11
for(i in val)
{
  if(i==8)
  {
    next
  }
  print(i)
}

#R statement break example
a <- 1
while (a <10) {
  print(a)
  if(a == 5)
    break
  a = a + 1
}

# A simple R program 
# to illustrate TRUE / FALSE  

# Sample values 
x = 4
y = 3

# Comparing two values 
z = x > y 
p = x < y

# print the logical value 
print(z) 
print(p)

#NULL - represents NULL object
v = as.null(c(1,2,3,4))
print(v)

#Inf and NaN
# A simple R program 
# to illustrate Inf and NaN

# To check Inf
x = c(Inf, 2, 3)
print(is.finite(x))

# To check NaN
y = c(1, NaN, 3)
print(is.nan(y))

# A simple R program 
# to illustrate  NA

# To check NA
x = c(1, NA, 2, 3)
print(is.na(x))