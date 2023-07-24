def count_occurrences(arr)
  arr.uniq.each_with_object({}) do |name, hash| 
    hash[name] = arr.count(name)
    puts "#{name} => #{hash[name]}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)