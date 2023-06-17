ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# Solution 1:

p ages.values.min

# Solution 2:

min_age = nil

ages.each_value do |num|
  if min_age == nil
    min_age = num
  elsif min_age > num
    min_age = num
  end
end

p min_age