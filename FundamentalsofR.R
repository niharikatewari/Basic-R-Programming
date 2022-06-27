#Basic syntax of R programming

#A program in R is made up of three things: Variables, Comments, and Keywords. 
#Variables are used to store the data, 
#Comments are used to improve code readability, 
#Keywords are reserved words that hold a specific meaning to the compiler.

#Variables in R

#In R, the assignment can be denoted in three ways:

#= (Simple Assignment)
#<- (Leftward Assignment)
#-> (Rightward Assignment)

x = "Simple Hello World"
y <- "Leftward Hello World"

"Rightward hello World" -> z

print(x)
print(y)
print(z)

#Keywords are the words reserved by a program because they have a special meaning.
#view these keywords by using either help(reserved) or ?reserved.


###########################################################
#############################################################
##############################################################
###############################################################

# R program to illustrate
# the use of Arithmetic operators
vec1 <- c(0, 2)
vec2 <- c(2, 3)

# Performing operations on Operands
cat ("Addition of vectors :", vec1 + vec2, "\n")
cat ("Subtraction of vectors :", vec1 - vec2, "\n")
cat ("Multiplication of vectors :", vec1 * vec2, "\n")
cat ("Division of vectors :", vec1 / vec2, "\n")
cat ("Modulo of vectors :", vec1 %% vec2, "\n")
cat ("Power operator :", vec1 ^ vec2)

####################################################
########################################################
###################################################

# R program to illustrate
# the use of Logical operators
vec1 <- c(0,2)
vec2 <- c(TRUE,FALSE)

# Performing operations on Operands
cat ("Element wise AND :", vec1 & vec2, "\n")
cat ("Element wise OR :", vec1 | vec2, "\n")
cat ("Logical AND :", vec1 && vec2, "\n")
cat ("Logical OR :", vec1 || vec2, "\n")
cat ("Negation :", !vec1)
####################################################
#######################################################
########################################################
# R program to illustrate
# the use of Relational operators
vec1 <- c(0, 2)
vec2 <- c(2, 3)

# Performing operations on Operands
cat ("Vector1 less than Vector2 :", vec1 < vec2, "\n")
cat ("Vector1 less than equal to Vector2 :", vec1 <= vec2, "\n")
cat ("Vector1 greater than Vector2 :", vec1 > vec2, "\n")
cat ("Vector1 greater than equal to Vector2 :", vec1 >= vec2, "\n")
cat ("Vector1 not equal to Vector2 :", vec1 != vec2, "\n")
########################################################
########################################################
# R program to illustrate
# the use of Assignment operators
vec1 <- c(2:5)
c(2:5) ->> vec2
vec3 <<- c(2:5)
vec4 = c(2:5)
c(2:5) -> vec5

# Performing operations on Operands
cat ("vector 1 :", vec1, "\n")
cat("vector 2 :", vec2, "\n")
cat ("vector 3 :", vec3, "\n")
cat("vector 4 :", vec4, "\n")
cat("vector 5 :", vec5)
###########################################
##############################################
###############################################
# R program to illustrate
# the use of Miscellaneous operators
mat <- matrix (1:4, nrow = 1, ncol = 4)
print("Matrix elements using : ")
print(mat)

product = mat %*% t(mat)
print("Product of matrices")
print(product,)
cat ("does 1 exist in prod matrix :", "1" %in% product)
##################################################
####################################################
###################################################