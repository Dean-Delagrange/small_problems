# q3.rb Tip Calculator
# prompt bill amount / tip rate
# display tip and total amount of the bill

def prompt(message)
  puts "=> #{message}"
end

prompt("What is the bill?")
bill = gets.to_f

prompt("What is the tip percentage?")
tip = gets.to_f

total_tip = bill * (tip / 100).round(2)
total_bill = (bill + total_tip).round(2)

prompt("The tip is $#{sprintf("%0.2f", total_tip)}")
prompt("The total is $#{sprintf("%0.2f", total_bill)}")
