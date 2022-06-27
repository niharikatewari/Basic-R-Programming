#Taking input from the user


#Using readline() method
#In R language readline() method takes input in string format.

###################################################################
###################################################################
###################################################################

#To convert the inputted value to the desired data type, 
#there are some functions in R, 


#as.integer(n); -> convert to integer
#as.numeric(n); -> convert to numeric type (float, double etc)
#as.complex(n); -> convert to complex number (i.e 3+2i)
#as.Date(n) -> convert to date ., etc


# R program to illustrate
# taking input from the user

# taking input with showing the message
var = readline(prompt = "Enter any number : ");

# convert the inputted value to an integer
var = as.integer(var);

# print the value
print(var)

##############################################################

# R program to illustrate
# taking input from the user

# taking multiple inputs
# using braces

  var1 = readline("Enter 1st number : ");
  var2 = readline("Enter 2nd number : ");
  var3 = readline("Enter 3rd number : ");
  var4 = readline("Enter 4th number : ");


# converting each value
var1 = as.integer(var1);
var2 = as.integer(var2);
var3 = as.integer(var3);
var4 = as.integer(var4);

# print the sum of the 4 number
print(var1 + var2 + var3 + var4)

###########################################################
  # R program to illustrate
  # taking input from the user
  
  # string file input using scan()
  s = scan("my_data1.txt", what = " ")
  
  # double file input using scan()
  ##d = scan("my_data2.txt", what = double())
  
  # character file input using scan()
  ##c = scan("fileChar.txt", what = character())
  
  # print the inputted values
  print(s) # string
  #print(d) # double
  #print(c) # character
  
  
##########################################################
  ########################################################
##############OUTPUT#######################
  #######################################################
##########################################################
#paste() converts its arguments to character strings.
  x <- "I am the"
  
  # using paste inside print()
  print(paste(x,"best")) 
  
  
#############################################
  #############################################
  ############################################
###############################################
  # R program to illustrate
  # printing output of an R program
  
  x = "MSC/PG batch is the best" # string
  x1 = 255            # integer
  x2 = 23.14          # float 
  
  # string print
  sprintf("%s is best", x)
  
  # integer print
  sprintf("%d is integer", x1)
  
  # float print
  sprintf("%f is float", x2)
  #sprintf() is basically a C library function. This function is use to print string as C language
  
###########################################################
###########################################################
  x = "DATASCIENCE"
  # write variable 
  write.table(x, file = "my_data1.txt")
  
  # write normal string
  write.table("Datascience is best", file = "my_data2.txt")
  