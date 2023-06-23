puts ">> Please enter an integer greater than 0:"
number = gets.to_i

sum = 0
product = 1
sum_or_product = ''

loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  sum_or_product = gets.chomp
  if (sum_or_product == 's' || sum_or_product == 'p')
    break
  else
    puts "Please enter 's' or 'p'"
  end
end
  
number.downto(1) do |i| 
  sum += i
  product *= i
end

if sum_or_product == 's'
  puts "The sum of the integers between 1 and #{number} is #{sum}"
else
  puts "The product of the integers between 1 and #{number} is #{product}."
end 