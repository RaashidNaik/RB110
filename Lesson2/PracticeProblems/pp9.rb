arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

new_arr = arr.map do |arr|
  arr.sort do |val1, val2|
    val2 <=> val1
  end
end

p new_arr 