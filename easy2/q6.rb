# Odd Numbers
# print all odd numbers from (1..99) Each number on a seperateline

number = 1
until number == 99
  puts number
  number += 2
end

# Integer#upto
1.upto(99) {|num| puts num if num.odd?}

# Array#select
(1..99).to_a.select {|num| puts num if num.odd?}