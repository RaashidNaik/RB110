def sum_square_difference(num)
  sum_sq = []
  sq_sum = []
  1.upto(num) do |val|
    sum_sq << val
    sq_sum << val**2
  end
  (sum_sq.sum)**2 - sq_sum.sum
end


p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150