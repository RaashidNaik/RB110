replacements = {
  adjective: %w(quick lazy sleepy ugly),
  noun: %w(fox dog head leg),
  verb: %w(jumps lifts bites licks),
  adverb: %w(easily lazily noisily excitedly) 
}

text = File.read("madlib_sample.txt")

mad_lib = text.split.map do |word|
  if word.start_with?('%{')
    replacements[word.delete('^a-z').to_sym].sample
  else
    word
  end
end

puts mad_lib.join(' ')

