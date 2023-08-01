def triangle(x, y, z)
  angle_arr =[x, y, z]
  if angle_arr.include?(0) || angle_arr.sum != 180
    :invalid
  elsif angle_arr.include?(90)
    :right
  elsif angle_arr.all? {|ang| ang < 90 }
    :acute
  else
    :obtuse
  end
end


p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
