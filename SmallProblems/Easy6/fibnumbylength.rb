def find_fibonacci_index_by_length(num_length)
  fib_array = [1, 1]
  loop do
    next_fib_num = fib_array[-1] + fib_array[-2]
    return fib_array.size + 1 if next_fib_num.to_s.size == num_length
    fib_array << next_fib_num
  end
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847