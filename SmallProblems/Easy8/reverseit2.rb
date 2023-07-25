def reverse_words(string)
  string.split.map { |word| word.size >= 5 ? word.reverse: word }.join(' ')
end

p reverse_words('Professional')          # => lanoisseforP
p reverse_words('Walk around the block') # => Walk dnuora the kcolb
p reverse_words('Launch School')         # => hcnuaL loohcS
