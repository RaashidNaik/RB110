def swap(string)
  switch_array = string.split.map do |word|
    word[0], word[-1] = word[-1], word[0]
    # first_letter = word[0]
    # last_letter = word[-1]
    # word[0] = last_letter
    # word[-1] = first_letter
    word
  end
  switch_array.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'