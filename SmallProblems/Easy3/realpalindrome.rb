def real_palindrome?(string)
  new_string = strip_non_alph_num(string)
  new_string == new_string.reverse ? true: false
end

def strip_non_alph_num(string)
   string_array = string.downcase.chars
  alpha_num_array = []
  string_array.each do |char|
    if (char.between?('a','z') || char.between?('0','9'))
      alpha_num_array << char
    end
  end 
  alpha_num_array.join
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false