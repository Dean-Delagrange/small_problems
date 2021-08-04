# q1.rb How old is Teddy?
# randomly generate and print Teddys age (20-200)
# Extra: ask for a name / use "Teddy" if no name entered

age = rand(20..200)
name = nil

def get_name(string = "Teddy")
  puts "Please enter your name:"
  string = gets.chomp
  string == "" ? "Teddy" : string
end

puts "#{get_name(name)} is #{age} years old!"
