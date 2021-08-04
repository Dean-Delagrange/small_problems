# When will I retire?
# display when user will retire 
# display how many years of work till retirement

def prompt(message)
  puts "=> #{message}"
end

t = Time.now.year

prompt("What is your age?")
age = gets.chomp.to_i

prompt("At what age would you like to retire?")
retirmeent_age = gets.chomp.to_i

prompt("It's #{t}. You will retire in #{t + (retirmeent_age - age)}")
prompt("You only have #{retirmeent_age - age} years of work to go!")