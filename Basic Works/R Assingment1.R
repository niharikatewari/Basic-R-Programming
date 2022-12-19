#Assingment No.-1

#Q1

x<-c(10,25,32)
y<-c(41,25,66)
z<-c(74,89,98)
a<-cbind(x,y,z)
print("Content of the said matrix:")
print(a)

#Q3

#Q3

akash = list(
  c(12, 23, 25, 35, 47, 42),  
  month.abb,
  matrix(c(3, -8, 1, -3), nrow = 2),
  asin
)
print("Content of the list:")
print(akash)

#Q4

Employees = data.frame(Name=c("Aps","Kamal kashyap","aamir khan", "Kunal mittal","Pradeep Nishad"),
                       Gender=c("M","M","M","M","M"),
                       Age=c(26,25,23,22,34),
                       Designation=c("Ds","aviation","pubg player","ceo","HR admin")
)
print("Details of the employees:")                      
print(Employees)

#Q5

m1 = matrix(c(1, 2, 3, 4, 5, 6), nrow = 2)
print("Matrix-1:")
print(m1)
m2 = matrix(c(7, 8, 9, 10, 11, 12), nrow = 2)
print("Matrix-2:")
print(m2)
#Addition of matrices
result1 = m1 + m2
print("Result of addition")
print(result1)
#Subtraction of matrices
result2 = m1 - m2
print("Result of subtraction")
print(result2)
#Multipication of matrices
result3 = m1 * m2
print("Result of multiplication")
print(result3)
#division of matrices
result4 = m1 / m2
print("Result of division:")
print(result4)