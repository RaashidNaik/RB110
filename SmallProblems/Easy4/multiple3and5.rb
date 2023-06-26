def multisum(num)
  array =[]
  for i in (1..num/3)
    array << (i * 3)
  end
  for i in (1..num/5)
    array << (i * 5)
  end
  array.uniq.sum 
end




p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168