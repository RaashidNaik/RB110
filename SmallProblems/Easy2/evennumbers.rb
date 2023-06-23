1.upto(99) {|i| puts i if i.even?}

puts (Array(1..99).select {|i| i.even?})