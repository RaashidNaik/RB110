def egyptian(rational)
  denom_arr = []
  sum = 0
  max_denom = min_denom = 1
  until Rational(1, min_denom) <= rational
    min_denom += 1
  end
  
  loop do
    denom_arr = []
    (min_denom..max_denom).each do  |n| 
      denom_arr << n
    end
    sum = denom_arr.inject(0) {|memo, n| memo + Rational(1,n) } 
    break if sum >= rational
    max_denom += 1
  end
  
  return denom_arr if sum == rational
  
  loop do
    if sum > rational
      denom_arr[-1] += 1
    elsif sum < rational
      denom_arr << denom_arr[-1] + 1
    else
      return denom_arr
    end
    sum = denom_arr.inject(0) {|memo, n| memo + Rational(1,n) }  
  end
end

def unegyptian(arr)
  arr.inject(0) {|memo, n| memo + Rational(1, n) }
end

p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)