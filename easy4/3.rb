# Leap Years Part 1
# Method takes 1 argument: year
# return true if year is a leap-year or false otherwise

# Logic:
# 1. Year is divisible by 4 == leap_year
# 2. UNLESS divisible by 100 != leap_year
# 3. UNLESS UNLESS divisible by 400 == leap_year

# def leap_year?(year)
#   if year % 400 == 0
#     true
#   elsif year % 100 == 0
#     false
#   elsif year % 4 == 0
#     true
#   else
#     false
#   end
# end

def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end
# reverse order make it work: check 4, then 100, then 400

def leap_year?(year)
  (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true