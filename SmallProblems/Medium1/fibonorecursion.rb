def fibonacci(n)
  first, second = 1, 1
  3.upto(n) do
    first, second = second, first + second
  end
  second
end

p fibonacci(1) == 1
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501