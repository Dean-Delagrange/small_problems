# Running Totals
# Method takes array of numbers
# Return new array with same amount of elements
# Each element has the running total from the OG array

def running_total(array)
  total = 0
  array.map { |num| total += num} 
end

Using .each_with_object
def running_total(array)
  total = 0
  array.each_with_object([]) { |num, arr| arr << total += num }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []