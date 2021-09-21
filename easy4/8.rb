# Convert a String to a Signed Number!
# Extend string_to_integer to work with signed numbers
# Method:
# 1. takes a string of digits
# 2. returns the number as an integer
# 3. String may have a laeding '+' or '-'
#   a. if '+' return a positive number
#   b. if '-' return a negative number
#   c. No sign return positive number
# 4. Cannot use .to_i or Integer()

DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, 
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def string_to_integer(string, sign = 1)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = value * 10 + digit}
  value * sign
end

# def string_to_signed_integer(string)
#   case string[0]
#   when '-' then -string_to_integer(string[1..-1])
#   when '+' then string_to_integer(string[1..-1])
#   else          string_to_integer(string)
#   end
# end

# Refactor method to use string[1..-1] and string_to_intger only once each
def string_to_signed_integer(string)
  if string[0] == '-' || string[0] == '+'
    sign = string[0]
    string = string[1..-1]
  else
    string
  end
  string_to_integer(string, negative(sign))
end

def negative(string)
  if string == '-'
    sign = -1
  else 
    sign = 1
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100