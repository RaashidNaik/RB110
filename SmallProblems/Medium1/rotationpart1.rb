def rotate_array(orig_array)
  new_array = []
  orig_array.each_with_index do |val, idx|
    next if idx == 0 
    new_array << val
  end 
  new_array << orig_array[0]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']