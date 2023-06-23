def stringy(num)
  return_string = ''
  num.times do |x|
    x.even? ? (return_string[x] = '1'): (return_string[x] = '0')
  end 
  return_string
end
  




puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
