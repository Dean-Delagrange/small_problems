# Convert a Signed Number to a String
# Extend integer_to_string to apply a sign
# Method:
#   1. Takes integer
#   2. converts to a string
#   3. leads with '+' or '-' for positive/negative integers

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

# def signed_integer_to_string(number)
#   case number <=> 0
#   when -1 then "-#{integer_to_string(-number)}"
#   when 1 then "+#{integer_to_string(number)}"
#   else        integer_to_string(number)
#   end
# end

def signed_integer_to_string(number)
  return '0' if number == 0
  string = integer_to_string(number.abs)
  number < 0 ? '-' + string : '+' + string
end


p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'