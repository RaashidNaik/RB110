def crunch(string)
  new_string_array = [] 
  string.chars.each_with_index do |char, idx|
    new_string_array << char if char != string[idx+1]
  end
  new_string_array.join
end



p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''