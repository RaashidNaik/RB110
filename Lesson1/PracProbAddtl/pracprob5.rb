flintstones = %w(Fred Barney Wilma Betty BemBam Pebbles)

index_value = nil
flintstones.each_with_index do |name, idx|
  if name[0,2] == 'Be'
    index_value = idx
    break
  end
end

p index_value 


# Another solution

index_value = nil
flintstones.each_with_index do |name, idx|
  if name.start_with?('Be')
    index_value = idx
    break
  end 
end

p index_value 

# Yet another solution
p flintstones.index{ |name| name[0, 2] == 'Be' }