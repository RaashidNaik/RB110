flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flint_hash = {}
flintstones.each_with_index do |value, idx|
  flint_hash[value] = idx
end

p flint_hash


# Another solution


flint_hash = flintstones.each_with_object({}) do |value, hash|
  hash[value] = flintstones.index(value)
end

p flint_hash
