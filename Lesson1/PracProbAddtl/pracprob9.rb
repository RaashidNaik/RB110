words = "the flintstones rock"

word_array = words.split

word_array.map! do |word|
  word = word[0].upcase+word[1..(word.size-1)]
end

p word_array.join(' ')

# The better solution 

p words.split.map{|word| word.capitalize}.join(' ')