def cleanup(string)
  non_alpha_temp = ''
  char_array = string.chars
  char_array.each do |char|
    if ('a'..'z').include?(char)
      string.gsub!(non_alpha_temp, ' ') if !non_alpha_temp.empty?
      non_alpha_temp = ''
    else
      non_alpha_temp << char
    end
  end
  string.gsub!(non_alpha_temp, ' ') if !non_alpha_temp.empty?
  p string
end
  
p cleanup("---what's my +*& line?") == ' what s my line '