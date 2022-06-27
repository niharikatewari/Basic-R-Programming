# A simple R program
# to illustrate Numeric data type

# Assign a decimal value to x
x = 5.6

# print the class name of variable
print(class(x))

# print the type of variable
print(typeof(x))
#####################################
# A simple R program
# to illustrate Numeric data type

# Assign an integer value to y
y = 5

# print the class name of variable
print(class(y))

# print the type of variable
print(typeof(y))
#####################################
# A simple R program
# to illustrate integer data type

# Create an integer value
x = as.integer(5)

# print the class name of x
print(class(x))

# print the type of x
print(typeof(x))

# Declare an integer by appending an L suffix.
y = 5L

# print the class name of y
print(class(y))

# print the type of y
print(typeof(y))
##########################################

# A simple R program
# to illustrate logical data type

# Sample values
x = 4
y = 3

# Comparing two values
z = x > y

# print the logical value
print(z)

# print the class name of z
print(class(z))

# print the type of z
print(typeof())
#################################3
# A simple R program
# to illustrate complex data type

# Assign a complex value to x
x = 4 + 3i

# print the class name of x
print(class(x))

# print the type of x
print(typeof(x))
#################################3
# A simple R program
# to illustrate character data type

# Assign a character value to char
char = "HelloWorld"

# print the class name of char
print(class(char))

# print the type of char
print(typeof(char))
#######################################
# A simple R program
# to find data type of an object

# Logical
print(class(TRUE))

# Integer
print(class(3L))

# Numeric
print(class(10.5))

# Complex
print(class(1+2i))

# Character
print(class("12-04-2020"))

################################
# A simple R program
# Verify if an object is of a certain datatype

# Logical
print(is.logical(TRUE))

# Integer
print(is.integer(3L))

# Numeric
print(is.numeric(10.5))

# Complex
print(is.complex(1+2i))

# Character
print(is.character("12-04-2020"))

print(is.integer("a"))

print(is.numeric(2+3i))
###################################
# A simple R program
# convert data type of an object to another

# Logical
print(as.numeric(TRUE))

# Integer
print(as.complex(3L))

# Numeric
print(as.logical(10.5))

# Complex
print(as.character(1+2i))

# Can't possible
print(as.numeric("12-04-2020"))