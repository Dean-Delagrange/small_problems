# prompt user for word or words and give back the number of characters
# do not include spaces
=begin
puts "Please write a word or multiple words:"
input = gets.chomp

letters = input.count "abcdefghijklmnopqrstuvwxyz"
characters = input.count "!@#$%^&*()-=,.'"
total = letters + characters

puts "There are #{total} characters in '#{input}' "
=end
# Better way

print 'Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."