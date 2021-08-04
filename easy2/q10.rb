# Mutation
# What will print and why
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2 # On their own lines: Moe Larry CURLEY SHEMP Harpo CHICO Groucho Zeppo
# Curley,Shemp, and Chico will be caps because the array object is being mutated and both
# array1 and array2's elements are the same objects. If one is mutated the other is