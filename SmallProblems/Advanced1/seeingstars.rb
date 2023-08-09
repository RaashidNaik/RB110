def star(num)
  str = ' ' * 9
  middle = (num - 1)/2
  first, second, third = 0, middle, (num - 1)
  
  1.upto(middle) do
    str[first] = str[second] = str[third] = '*'
    puts str
    str = " " * 9
    first += 1
    third -= 1
  end
   puts '*' * 9
   
   str = ' ' * 9
  first, second, third = middle - 1, middle, middle + 1
  1.upto(middle) do 
    str[first] = str[second] = str[third] = '*'
    puts str
    str = " " * 9 
    first -= 1
    third += 1
  end
end

star(7)
star(9)