# whats_my_bonus.rb
# calc the bonus for a given salary
# Method: two arguments; positive int and boolean
# boolean == true : bonus half salary else 0

def calculate_bonus(salary, boolean)
  bonus = boolean == true ? salary / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

# dont need bonus = as it is a boolean already!

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end