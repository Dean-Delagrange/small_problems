# solicit 6 numbers and print message whether or not the 6th number appears amongst the first 5 numbers

numbers = []
input = 0
final = 0

def prompt(message)
  puts "=> #{message}"
end

prompt("Enter the 1st number:")
input = gets.chomp.to_i
numbers << input 
prompt("Enter the 2nd number:")
input = gets.chomp.to_i
numbers << input
prompt("Enter the 3rd number:")
input = gets.chomp.to_i
numbers << input
prompt("Enter the 4th number:")
input = gets.chomp.to_i
numbers << input
prompt("Enter the 5th number:")
input = gets.chomp.to_i
numbers << input
prompt("Enter the last number:")
final = gets.chomp.to_i

if numbers.include? final
  prompt("The number #{final} appears in #{numbers}")
else
  prompt("The number #{final} does not appear in #{numbers}")
end

