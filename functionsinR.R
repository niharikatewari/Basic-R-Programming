## built in and user defined functions

# Find sum of numbers 4 to 6.
print(sum(4:6))

# Find max of numbers 4 and 6.
print(max(4:6))

# Find min of numbers 4 and 6.
print(min(4:6))

# A simple R function to check
# whether x is even or odd

evenOdd = function(x){
  if(x %% 2 == 0)
    return("even")
  else
    return("odd")
}

print(evenOdd(4))
print(evenOdd(3))

# area of a circle

areaOfCircle = function(radius){
  area = pi*radius^2
  return(area)
}

print(areaOfCircle(2))


# A simple R program to demonstrate
# Lazy evaluations of functions

Cylinder = function(diameter, length, radius ){
  volume = pi*diameter^2*length/4
  return(volume)
}

# This will execute because this
# radius is not used in the
# calculations inside the function.
print(Cylinder(5, 10))
# A simple R program to demonstrate
# Lazy evaluations of functions

Cylinder = function(diameter, length, radius ){
  volume = pi*diameter^2*length/4
  print(radius)
  return(volume)
}

# This'll throw an error
print(Cylinder(5, 10))