def halvsies(arr)
  arr_med = arr.size.odd? ? ((arr.size + 1 ) / 2) : (arr.size / 2)
  arr_med_idx = arr_med - 1
  arr1 = arr[0..arr_med_idx]
  arr2 = arr[(arr_med_idx + 1)..-1]
  [arr1, arr2]
end


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]