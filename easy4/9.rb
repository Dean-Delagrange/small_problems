# Convert a number to a string!
# Method:
# takes psoitive integer or zero
# converts it to a string
# can't use .to_s, String() or Kernel#format

DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, 
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

DIGITS2 = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(integer)
  string = ''
  integer.digits.reverse.each { |num| string += DIGITS.key(num)} #[4, 3, 2, 1]
  string
end

# There way is interesting... uses math instead

def integer_to_string2(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS2[remainder])
    break if number == 0
  end
  result
end


p integer_to_string2(4321) == '4321'
p integer_to_string2(0) == '0'
p integer_to_string2(5000) == '5000'