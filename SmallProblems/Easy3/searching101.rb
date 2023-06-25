number_array =[]
number = 0

6.times do |i|
  position = case i
    when 0 then "1st"
    when 1 then "2nd"
    when 2 then "3rd"
    when 3 then "4th"
    when 4 then "5th"
    when 5 then "last"
  end
  puts "Enter the #{position} number:"
  number = gets.to_i
  number_array << number
end
number_array.pop

if number_array.include?(number)
  puts "The number #{number} appears in #{number_array}"
else
  puts "The number #{number} does not appear in #{number_array}"
end