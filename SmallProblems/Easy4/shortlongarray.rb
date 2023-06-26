def short_long_short(word1, word2)
  array = []
  array << word1 << word2
  array.sort_by! {|el| el.length}
  array[0] + array[1] + array[0]
end




p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"