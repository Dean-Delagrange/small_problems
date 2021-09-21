# Convert a String to a Number!
# cant use .to_i or Integer() methods

DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] } # [4, 3, 2, 1]

  value = 0
  digits.each { |digit| value = 10 * value + digit}  
  value
end

# Write a hexadecimal_to_integer method:
# Converts string to its integer value

def hexadecimal_to_integer(string)
  string.hex
end


p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
p hexadecimal_to_integer('4D9f') == 19871
