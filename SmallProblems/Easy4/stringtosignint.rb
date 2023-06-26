def string_to_signed_integer(string)
  integer_sum = 0
  sign_value = 1
  
  string.chars.each_with_index do |chars, idx|
    if chars == '-'
      sign_value = -1
    elsif chars == '+'
      sign_value == 1
    else
      integer_sum += number_hash()[chars] * 10**(string.size-idx-1)
    end
  end
  
  integer_sum * sign_value
end 

def number_hash
  number_hash = {}
  ("0".."9").each_with_index do |string_num, idx|
    number_hash[string_num] = idx 
  end
  number_hash
end 

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100