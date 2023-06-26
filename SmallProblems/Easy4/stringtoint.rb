def string_to_integer(string)
  integer_sum = 0
  
  string.chars.each_with_index do |chars, idx|
    integer_sum += number_hash()[chars] * 10**(string.size-idx-1)
  end
  
  integer_sum
end 

def number_hash
  number_hash = {}
  ("0".."9").each_with_index do |string_num, idx|
    number_hash[string_num] = idx 
  end
  number_hash
end 




p string_to_integer('4321') == 4321
p string_to_integer('570') == 570