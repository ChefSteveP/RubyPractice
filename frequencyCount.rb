#Prompts user for text
puts "Text Please:"
text = gets.chomp

#Split by Whitespace
words = text.split(" ")

frequencies = Hash.new(0)
#count up each word and update hash
words.each do |word|
  frequencies[word] += 1
end

#Sort hash and make it descending order
frequencies = frequencies.sort_by do |key, value|
  value
end
frequencies.reverse!

#print value pairs
frequencies.each do |key,value|
  puts "#{key}: #{value}"
end
