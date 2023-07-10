def random_hex
  hex_array = ('a'..'f').to_a + ('1'..'9').to_a
  hex_array.sample
end

def uuid_chunk(n)
  uuid_chunk = ''
  n.times do 
    uuid_chunk << random_hex
  end
  uuid_chunk
end

def uuid_gen
  uuid = ''
  uuid << uuid_chunk(8) + "-"
  uuid << uuid_chunk(4) + "-"
  uuid << uuid_chunk(4) + "-"
  uuid << uuid_chunk(4) + "-"
  uuid << uuid_chunk(12)
end

p uuid_gen