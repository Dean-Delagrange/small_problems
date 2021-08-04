# Greeting a user
# Ask for name, greet user,
# If user writes "name!" have computer yell
def prompt(message)
  puts "=> #{message}"
end

prompt("What is your name?")
name = gets.chomp
name.include?("!") ? prompt("HELLO #{name.upcase}. WHY ARE WE SCREEMING?") : prompt("Hello #{name.capitalize}.")

# There solution
# Modiy to use .chomp! and .chop!
print 'What is your name? '
name = gets.chomp!

if name[-1] == '!'
  name = name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end