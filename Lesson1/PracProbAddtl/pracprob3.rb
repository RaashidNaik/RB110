ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

younger = ages.select do |name, age|
  age < 100
end

p younger