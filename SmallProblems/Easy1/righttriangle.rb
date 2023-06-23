def triangle(num)
  for i in 1..num
    puts ("*" * i).rjust(num)
  end
end

triangle(9)
triangle(5)
