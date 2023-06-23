def diamond(n)
  diamond_array = []
  i = 1
  inflection = false
  
  loop do 
    diamond_array << i
    inflection ? (i -= 2): (i += 2)
    inflection = true if i == n
    break if diamond_array.size == n
  end
  
  diamond_array.each { |val| puts ("*" * val).center(n) }
end

diamond(1)
diamond(3)
diamond(9)
diamond(55)