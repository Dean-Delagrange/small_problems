# reverse_it2.rb
# Method takes in one argument (string) and returns the string with words
# that are 5 charachters or longer reversed.

def reverse_words(string)
  reverse = string.split

  reverse.each do |word|
   word.reverse! if word.length >= 5
  end


  reverse.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

# Launch School solution

def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end