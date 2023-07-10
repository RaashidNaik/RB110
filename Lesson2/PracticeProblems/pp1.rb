arr = ['10', '11', '9', '7', '8']

new_array = arr.sort do |num1, num2|
  num2.to_i <=> num1.to_i
end

p new_array