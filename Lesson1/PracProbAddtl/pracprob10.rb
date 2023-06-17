# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }


# munsters.each do |name, details|
#   if details["age"].between?(0, 17)
#     details["age_group"] = "kid"
#   elsif details["age"].between?(18, 64)
#     details["age_group"] = "adult"
#   else
#     details["age_group"] = "senior"
#   end
# end

# p munsters

# Another Solution
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
  details["age_group"] = case details["age"]
  when (0..17)
    "kid"
  when (18..64)
    "adult"
  else
    "senior"
  end
end      

p munsters