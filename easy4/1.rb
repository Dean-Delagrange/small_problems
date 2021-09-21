# Short Long Story
# Write method that takes two string arguments
# Determines the longer of the two strings
# returns concatention like (shortlongshort)

# def short_long_short(str1, str2)
#   concatention = ''
#   if str1.size < str2.size
#     concatention.concat(str1, str2, str1)
#   else
#     concatention.concat(str2, str1, str2)
#   end
#   concatention
# end

def short_long_short(str1, str2)
  if str1.size < str2.size
    str1 + str2 + str1
  else
    str2 + str1 + str2
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"