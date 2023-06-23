def rotate_rightmost_digits(orig_integer, rotate_ref)
  orig_string = orig_integer.to_s
  new_string = orig_string[0...-rotate_ref] + orig_string[-rotate_ref..-1][1..-1] + orig_string[-rotate_ref..-1][0]
  new_string.to_i
end




p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917