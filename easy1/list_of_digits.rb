# list_of_digits.rb 
# Method takes one argument, a positive integer and returns a list of the digits in the number

def digit_list(integer)
  digit_list = []
  list = Array.new(integer.to_s.split(""))
  list.each do |num|
    digit_list << num.to_i
  end
  return digit_list
end


p digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true


# Idiomatic Ruby

def digit_list(number)
  number.to_s.chars.map(&:to_i)  # (&:to_i means {|char| char.to_i}
end