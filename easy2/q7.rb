# Even Number
# print all even numbers (1..99)

number = 1
until number > 99
 puts number if number.even?
 number += 1
end

# Interger#upto
1.upto(99) {|num| puts num if num.even?}

#Array#select
(1..99).to_a.select {|num| puts num if num.even?}