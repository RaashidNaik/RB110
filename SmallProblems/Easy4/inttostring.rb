def integer_to_string(integer)
  num_string_array = ("0".."9").to_a
  integer.digits.reverse.each_with_object('') do |i, string_integer|
    string_integer << num_string_array[i]
  end
end 


p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'