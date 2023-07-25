def double_consonants(string)
  new_string = ''
  string.chars.each do |char|
    if char =~ /[aeiou]/i || char =~ /[^a-z]/i
      new_string << char
    else
      new_string << char * 2
    end
  end
  new_string
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""