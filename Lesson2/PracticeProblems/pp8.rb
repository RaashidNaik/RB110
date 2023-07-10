hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

all_vowels = ''

hsh.each do |key, value|
  value.each do |word|
    word.chars.each do |char|
      if 'aeiou'.include?(char)
        all_vowels << char
      end
    end
  end
end

p all_vowels 
    