puts "What is the bill?"
bill = gets.to_f
puts "What is the tip percentage?"
tip = (gets.to_f)/100

tip_amount = bill * tip
bill_amount = tip_amount + bill

puts "The tip is $#{sprintf("%.2f",tip_amount)}"
puts "The total is $#{sprintf("%.2f", bill_amount)}"