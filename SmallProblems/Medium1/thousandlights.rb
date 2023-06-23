def thousand_lights(n)
  lights_array = Array.new(n, false)
  for i in 1..n
    times = 1 
    loop do 
      multiple = times * i
      break if multiple > n
      lights_array[multiple-1] = !lights_array[multiple - 1]
      times += 1
    end
  end
  on_array = [] 
  lights_array.each_with_index do |val, idx|
    on_array << (idx+1) if val
  end
  on_array
end


p thousand_lights(5) == [1, 4]
p thousand_lights(10) == [1, 4, 9]
p thousand_lights(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]