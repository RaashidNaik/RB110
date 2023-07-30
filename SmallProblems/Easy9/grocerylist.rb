def buy_fruit(arr)
  groc_list = []
  arr.each { |sub_arr| sub_arr[1].times { groc_list << sub_arr[0] } }
  groc_list
end

p  buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]