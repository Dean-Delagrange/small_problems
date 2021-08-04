# exclusive or
# returns true if exactly one argument is true and false otherwise

def xor?(arg1, arg2)
  (arg1 || arg2) == true && (arg1 && arg2) == false
end

puts xor?(5.even?, 4.even?)
puts xor?(5.odd?, 4.odd?)
puts xor?(5.odd?, 4.even?)
puts xor?(5.even?, 4.odd?)

# Their solution
def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false                           # not needed however method names then end in ? should return explict true and false values
end

# A shorter version is
def xor?(value1, value2)
  !!((value1 && !value2) || (value2 && !value1)) # !! forces the return to be a boolean
end
