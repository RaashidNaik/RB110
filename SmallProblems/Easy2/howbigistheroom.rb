puts "Enter the length of the room in meters:"
length = gets.to_f

puts "Enter the width of the room in meters:"
width = gets.to_f

area_m = length * width
area_f = area_m * 10.7639


puts "The area of the room is #{area_m.round(2)} square meters (#{area_f.round(2)} square feet)."