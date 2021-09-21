# What Century Is That?
# Method takes 1 argument: year
# Returns the century
#   - String
#   - Contains century number (2000) => 20
#   - Ends with (st, nd, rd, or th) 
# New century ends with 01 (1901 - 2000) => 20th Century

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + ordinal(century)
end

def ordinal(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10 

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end


p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'