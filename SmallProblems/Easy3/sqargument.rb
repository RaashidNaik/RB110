def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

def power(num, power)
  value = 1
  (power/2).times do
    value *= multiply(num, num)
  end
  if power.odd? 
    value *= multiply(num,1)
  else
    value
  end
end

p power(5, 4)
p power(-8, 4)