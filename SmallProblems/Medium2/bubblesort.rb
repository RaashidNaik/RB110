def bubble_sort!(arr)
  idx1, idx2 = 0, 1
  switch_flag = []
  loop do 
    if (arr[idx1] <=> arr[idx2]) == 1
      arr[idx1], arr[idx2] = arr[idx2], arr[idx1]
      switch_flag[idx1] = true
    else
      switch_flag[idx1] = false
    end
    
    if (switch_flag.size + 1) == arr.size
      break if switch_flag.all?(false)
      idx1, idx2 = 0, 1
      switch_flag = []
    else
      idx1 += 1
      idx2 += 1
    end
  end
end


array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)