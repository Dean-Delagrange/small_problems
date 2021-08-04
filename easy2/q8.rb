# Sum of Product of Consecutive Integers
# Ask for int greater then 0 
# Ask if the user wnats to dermine the sum or product of all numbers between 1 and the entered int

def prompt(message)
  puts ">> #{message}"
end

def compute_sum(number)
  total = 0
  1.upto(number) {|num| total += num}
  total
end  

def compute_product(number)
  total = 1
  1.upto(number) {|num| total *= num}
  total
end


prompt("Please enter an integer greater than 0:")
number = gets.chomp.to_i

prompt("Enter 's' to compute the sum or 'p' to compute the product.")
selection = gets.chomp
if selection == 's'
  total = compute_sum(number)
  prompt("The sum of the integers between 1 and #{number} is #{total}")
elsif selection == 'p'
  total = compute_product(number)
  prompt("The product of the integers between 1 and #{number} is #{total}")
else
  prompt("Please enter 's' or 'p'")
end

# Further Exploration: try using Enumberable#inject
def compute_sum(number)
  (1..number).reduce(:+)
end  

def compute_product(number)
  (1..number).reduce(1, :*)
end
