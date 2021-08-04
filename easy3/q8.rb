# method returns true if string is palindrome, otherwise false
# case, punctuation and spaces matters

def palindrome?(string)
  string == string.reverse
end

# palindrome method for arrays
def array_palindrome?(array)
  array == array.reverse
end

# Palindrome method that can take an array or string. NO if, unless or case statements
def palindrome?(array, string)
  object == object.reverse
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true