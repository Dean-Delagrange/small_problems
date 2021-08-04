# palindrome method for integer arguments
def palindrome?(string)
  string == string.reverse
end

def palindromic_number?(integer)
  palindrome?(integer.to_s)
end

puts("123210" == "012321")
puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true