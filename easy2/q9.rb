# String Assignment
# what does the following print, explain
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name # => Bob! /n Bob! they both will have an "!" as both name and save_name point to the same object id. 
                     # When .upcase! is used the ! means the original object is being mutated and both still point there