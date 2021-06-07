# how_many.rb
# method that counts the number of occurences of each element in a given array
# my solution to the problem
=begin
def count_occurrences(array)
  uniq = array.uniq
  uniq.each do |ele|
    puts "#{ele} => #{array.count(ele)}"
  end
end
=end


#There was was with a Hash and is as follows:

def count_occurrences(array)
  occurence = {}

  array.uniq.each do |element|
    word = element.downcase
    occurence[word] = array.count(word)
  end
  
  occurence.each do |element, count|
    puts "#{element} => #{count}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'suv', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)