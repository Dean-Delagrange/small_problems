# sum_of_digits.rb
# methood takes a positive integer. Return sum of digits 23 == 5

def sum(number)
  number.digits.sum
end


puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45