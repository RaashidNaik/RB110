def triangle(x, y, z)
  tri_arr = [x, y, z].sort
  if (tri_arr[0] + tri_arr[1]) <= tri_arr[2]
    :invalid
  elsif tri_arr[0] == tri_arr[1] && tri_arr[1] == tri_arr[2]
    :equilateral
  elsif tri_arr[0] == tri_arr[1] || tri_arr[1] == tri_arr[2]
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid