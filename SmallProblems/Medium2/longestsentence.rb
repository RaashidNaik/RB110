def longest(text)
  sentences = text.split(/\.|\?|!/)
  longest = sentences.inject do |memo, sentence|
    memo.split.size > sentence.split.size ? memo: sentence
  end
  puts "The longest sentence is: #{longest}"
  puts ""
  puts "This sentence hase #{longest.split.size} words"
end
    

text = File.read('pg84.txt')

longest(text)
