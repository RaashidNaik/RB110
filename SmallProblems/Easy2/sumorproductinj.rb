puts ">> Please enter an integer greater than 0:"
number = gets.to_i


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
 

if sum_or_product == 's' 
  operator = :+ 
  word = 'sum'
else
  operator = :*
  word = 'product'
end 

value = (1..number).inject(operator)

puts "The #{word} of the integers between 1 and #{number} is #{value}"
