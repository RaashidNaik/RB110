statement = "The Flintstones Rock"

char_array = statement.chars

char_freq = {}

char_array.each do |letter|
    char_freq[letter] = statement.count(letter)
end

p char_freq