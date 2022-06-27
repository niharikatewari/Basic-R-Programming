########################
#if statement


# R program to illustrate
# if statement
a <- 76
b <- 67

# TRUE condition
if(a > b)
{
  c <- a - b
  print("condition a > b is TRUE")
  print(paste("Difference between a, b is : ", c))
}

# FALSE condition
if(a < b)
{
  c <- a - b
  print("condition a < b is TRUE")
  print(paste("Difference between a, b is : ", c))
}

################################################flip
a <- 67
b <- 76


# This example will execute else block
if(a > b)
{
  c <- a - b
  print("condition a > b is TRUE")
  print(paste("Difference between a, b is : ", c))
} else
{
  c <- a - b
  print("condition a > b is FALSE")
  print(paste("Difference between a, b is : ", c))
}
#############if-else-if ladder
a <- 67
b <- 76
c <- 99


if(a > b && b > c)
{
  print("condition a > b > c is TRUE")
} else if(a < b && b > c)
{
  print("condition a < b > c is TRUE")
} else if(a < b && b < c)
{
  print("condition a < b < c  is TRUE")
}


# R Nested if else statement Example
a <- 10
b <- 11


if(a == 10)
{
  if(b == 10)
  {
    print("a:10 b:10")   
  } else
  {
    print("a:10 b:11")    
  }
} else
{
  if(a == 11)
  {
    print("a:11 b:10")
  } else
  {
    print("a:11 b:11")
  }
}

# R switch statement example

# Expression in terms of the index value
x <- switch(
  2,           # Expression
  "Data",    # case 1
  "Science",       # case 2
  "students"     # case 3
)
print(x)

# Expression in terms of the string value
y <- switch(
  "DS3",              # Expression
  "DS1"="Data",     # case 1
  "DS2"="Science",        # case 2
  "DS3"="students"      # case 3
)
print(y)

z <- switch(
  "DS",               # Expression
  "DS0"="Data",     # case 1
  "DS1"="Science",        # case 2
  "DS3"="Students"      # case 3
)
print(z)
print(z)
# to demonstrate syntax of switch.

# Mathematical calculation
val1 = 6  
val2 = 7
val3 = "s"  
result = switch(  
  val3,  
  "a"= cat("Addition =", val1 + val2),  
  "d"= cat("Subtraction =", val1 - val2),  
  "r"= cat("Division = ", val1 / val2),  
  "s"= cat("Multiplication =", val1 * val2),
  "m"= cat("Modulus =", val1 %% val2),
  "p"= cat("Power =", val1 ^ val2)
)  

print(result)

# the use of for loop
for (i in 1: 4)
{
  print(i ^ 2)
}
# for loop along with concatenate
for (i in c(-8, 9, 11, 45))
{
  print(i)
}
# for loop with vector
x <- c(-8, 9, 11, 45)
for (i in x)
{
  print(i)
}
# nested for loop
for (i in 1:3)
{
  for (j in 1:i)
  {
    print(i * j)
  }
}
# break in for loop
for (i in c(3, 6, 23, 19, 0, 21))
{
  if (i == 0)
  {
    break
  }
  print(i)
}
print("Outside Loop")
# next in for loop
for (i in c(3, 6, 23, 19, 0, 21))
{
  if (i == 0)
  {
    next
  }
  print(i)
}
print('Outside Loop')
# R program to illustrate while loop

result <- c("Hello World")
i <- 1

# test expression
while (i < 6) {
  
  print(result)
  
  # update expression
  i = i + 1
}

# R program to illustrate repeat loop

result <- c("Hello World")
i <- 1

# test expression 
repeat {
  
  print(result)
  
  # update expression 
  i <- i + 1
  
  # Breaking condition
  if(i >5) {
    break
  }
}
#--------------------------------------------------------
#Since R doesn't have the concept of the goto statement.
#-----------------------------------------------------
# R program for break statement in For-loop

no <- 1:10

for (val in no)
{
  if (val == 5) 
  {
    print(paste("Coming out from for loop Where i = ", val))
    break
  }
  print(paste("Values are: ", val))
}