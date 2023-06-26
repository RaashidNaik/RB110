def short_long_short(word1, word2)
  if word1.size > word2.size
    word2 + word1 + word2
  else
    word1 + word2 + word1
  end
end


p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"