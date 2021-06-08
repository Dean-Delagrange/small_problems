#reverse_it1.rb
# Method takes one string argument and returns the string with the words in 
#reverse order. "hello world" => "world hello"
=begin
def reverse_sentence(string)
  reverse = ""

  words = string.split(" ")
  words.reverse!

  count = 0 

  while count < words.length
    reverse << words[count]
    count += 1
    break if count == words.length
    reverse << " "
  end
  p reverse
end
=end
# #join in the Array Class is a way better method. See bellow

def reverse_sentence(string)
  string.split.reverse.join(" ")
end


puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'


