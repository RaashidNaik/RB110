def max_rotation(orig_integer)
  orig_array = orig_integer.digits.reverse
  index_length = orig_array.length - 1
  for i in 0..index_length
    # rem_digit = orig_array[i]
    orig_array << orig_array.delete_at(i)
    # orig_array << rem_digit
  end 
  orig_array.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845