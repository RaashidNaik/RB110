ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages.values.sum

# Another solution

sum = 0
ages.each_value do |num|
  sum += num
end

p sum