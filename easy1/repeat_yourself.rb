# repeat_yourself.rb
# Write a method that takes two arguments; a string and positive integer
# Print the string as many times as indicated.

def repeat(string, int)
  int.times {puts string}
end

repeat('Hi', 4)