# Multiples of 3 and 5
# between 1 and number
# computer sum of those multiples
# ex 20: (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20) == 98

# def multisum(number)
#   sum = 0
#   (1..number).each do |multi|
#     if multi % 3 == 0 || multi % 5 == 0
#       sum += multi
#     end
#   end
#   sum
# end
# They did two method: 1. checks if multiple 2. Sums

def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(number)
  sum = 0
  (1..number).each do |num|
    if multiple?(num, 3) || multiple?(num, 5)
      sum += num
    end
  end
  sum
end

# using .inject

def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(number)
  arr = (1..number).to_a

  new_arr = arr.select do |num|
    multiple?(num, 3) || multiple?(num, 5)
  end
  
  new_arr.inject {|sum, num| sum + num}
  
end


p multisum(3) #== 3
p multisum(5) #== 8
p multisum(10) #== 33
p multisum(1000) #== 234168