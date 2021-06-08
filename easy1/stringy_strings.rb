# stringy_strings.rb
# Write a method that takes one argument (positive int) and returns a string of
# alternating 1s and 0s, always starting with 1. Length matches given int

def stringy(number, empty = 1)
  numbers = []

  if empty == 1
    number.times do |idx|
      number = idx.even? ? 1 : 0 # changed to use ternary if
      numbers << number
    end
  else
    number.times do |idx|
      number = idx.odd? ? 1 : 0 # changed to use ternary if
      numbers << number
    end
  end
  p numbers
  numbers.join
end




puts stringy(6,0) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'


# saw this after I and thought it was interesting 

def stringy2(x, y=1)
  y == 1 ? string = "10" : string = "01"
  x % 2 == 0 ? string * (x / 2) : string * (x / 2) + string[0]
end

puts stringy2(6,0)
puts stringy2(7)