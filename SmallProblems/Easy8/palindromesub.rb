def substrings(string)
  arr = []
  idx = 0 
  loop do
    1.upto(string.size - idx) do |count|
      arr << string.slice(idx, count)
    end
    idx += 1
    break if idx == string.size
  end
  arr
end

def palindromes(string)
  palin_arr = []
  substrings(string).each do |word|
    palin_arr << word if word.size > 1 && word == word.reverse
  end
  palin_arr
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]