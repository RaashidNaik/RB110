def sum(num)
  num.to_s.chars.inject(0) {|sum, n| sum + n.to_i}
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
