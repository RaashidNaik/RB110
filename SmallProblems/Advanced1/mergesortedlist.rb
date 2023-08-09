require 'pry'

def merge(arr1, arr2)
  arr = arr1 + arr2
  sort_arr = []
  loop do
    min_idx = arr.index(arr.min)
    sort_arr << arr.delete_at(min_idx)
    break if arr.empty?
  end
  # binding.pry
  sort_arr 
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]