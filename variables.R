#R supports three ways of variable assignment:

#1. Using equal operator- data is copied from right to left.
#2. Using leftward operator- data is copied from right to left.
#3. Using rightward operator- data is copied from left to right.

#using equal to operator 

#variable_name = value

#using leftward operator 

#variable_name <- value

#using rightward operator 

#value -> variable_name


# R program to illustrate
# Initialization of variables

# using equal to operator
var1 = "hello"
print(var1)

# using leftward operator
var2 < - "hello"
print(var2)

# using rightward operator
"hello" -> var3
print(var3)

#class() - This built-in function is used to determine the data 
#type of the variable provided to it.

class(var1)

#ls() function - This built-in function is used to know all the 
#present variables in the workspace.

ls()

##############################################################
##############################################################
##############################################################

#Global variables
# R program to illustrate
# usage of global variables

# global variable
global = 5

# global variable accessed from
# within a function
display = function(){
  print(global)
}
display()

# changing value of global variable
global = 10
display()

###########################################################
# R program to illustrate
# usage of local variables

func = function(){
  # this variable is local to the
  # function func() and cannot be
  # accessed outside this function
  age = 18   
  print(age)
}

cat("Age is:\n")
func()