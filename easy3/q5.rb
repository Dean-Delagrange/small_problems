# write a method that computes its square

def multiply(num1, num2)
  num1 * num2
end

def square(n)
  multiply(n, n)
end

puts square(5) == 25
puts square(-8) == 64

# power to the n using multiply method

def power(base, power)
  base ** multiply(power, 1)
end

puts power(5, 3)