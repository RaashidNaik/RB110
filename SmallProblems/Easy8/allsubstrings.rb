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

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]