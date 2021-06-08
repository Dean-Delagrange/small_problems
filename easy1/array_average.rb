# array_average.rb
# Method takes an array of integers and returns the average of all the numbers

def average(numbers)
  sum = 0 

  numbers.each do |num|
    sum += num
  end

  sum / numbers.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40


# better method is to use enumerator#reduce which combines all the elements in an array

def average2(numbers)
  sum = numbers.reduce(:+) # numbers.reduce { |sum, num| sum + num}
  sum.to_f / numbers.count
end

puts average2([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average2([1, 5, 87, 45, 8, 8]) == 25 #false now as sun is a float
puts average2([9, 47, 23, 95, 16, 52]) == 40 #false now as sun is a float

