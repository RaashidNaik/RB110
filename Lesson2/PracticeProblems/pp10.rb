new_array = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hash|
  hash.each do |key, value|
    hash[key] = value + 1
  end
end

p new_array

