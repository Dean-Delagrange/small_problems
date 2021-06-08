# how_many.rb
# method that counts the number of occurences of each element in a given array
# print the count in a Hash format (ie create a hash)

def count_occurrences(array)
  hash = {}
  downcase = []
  array.each do |element|
    downcase << element.downcase
  end
  
  downcase.uniq.each do |key|
    hash[key] = downcase.count(key)
  end
  
  hash.each do |key, count|
    puts "#{key} => #{count}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'suv', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)