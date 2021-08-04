# method that takes two arguments, multipltes them, and returns the result

def multiply(num1, num2)
  num1 * num2
end

puts multiply(5, 3) == 15

# What happens if first argument is an array
array = [5]
puts multiply(array, 3) # prints the array 3 times