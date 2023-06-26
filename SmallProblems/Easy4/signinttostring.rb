def integer_to_string(integer)
  num_string_array = ("0".."9").to_a
  integer.digits.reverse.each_with_object('') do |i, string_integer|
    string_integer << num_string_array[i]
  end
end 

def signed_integer_to_string(integer)
  if integer > 0
    string_integer = '+' + integer_to_string(integer)
  elsif integer < 0
    string_integer = '-' + integer_to_string(integer.abs)
  else
    string_integer = '0'
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'