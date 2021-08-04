# q2.rb How Big is the room?
# get length and width in meters
# display square meters and square feet
def prompt(message)
  puts("=> #{message}")
end

SQMETERS_TO_SQFEET = 10.7639

prompt "Enter the length of the room in meters:"
length = gets.to_f

prompt "Enter the width of the room in meters:"
width = gets.to_f

square_meters = (length * width).round(2)
square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

prompt "The area of the room is #{square_meters} " + \
       "square meteres (#{square_feet} square feet)."