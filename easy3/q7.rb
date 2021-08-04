# method that returns an array with every other element of an array

def oddities(array)
  odd_elements = []
  idx = 0
  while idx < array.size
    odd_elements << array[idx]
    idx += 2
  end
  odd_elements
end
# 2nd 4th and 6th element
def evens(array)
  evens = []
  idx = 1
  while idx < array.size
    even << array(idx)
    idx += 2
  end
  evens
end
# Another method for evens
def evens2(array)
  evens = []
  array.each_index {|idx, ele| evens << ele if idx % 2 == 0 }
  evens
end
# Third method for evens
def evens3(array)
  evens = []
  array.each_with_index { |ele, idx| idx.even? ? evens.push(ele) : next }
  evens
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []