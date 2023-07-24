def multiply_list(arr1, arr2)
  idx = 0
  prod_arr = []
  loop do
    prod_arr << arr1[idx] * arr2[idx]
    idx += 1 
    break if arr1.size == idx
  end
  prod_arr
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]