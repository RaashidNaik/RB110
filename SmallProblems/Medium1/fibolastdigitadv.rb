def sequence
  seq_arr = [1, 1]
  first, last = 1, 1
  3.upto(60) do
    seq_arr << (first + last).to_s[-1].to_i 
    first, last = last.to_s[-1].to_i, (first + last).to_s[-1].to_i
  end
  seq_arr
end

def fibonacci_last(num)
  idx = num % 60 - 1
  sequence[idx]
  # fib_arr = sequence
  # fib_arr[idx]
end

p fibonacci_last(123_456_789_987_745)