def leading_substrings(string)
  arr = []
  1.upto(string.size) do |count|
    arr << string.slice(0, count)
  end
  arr
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']