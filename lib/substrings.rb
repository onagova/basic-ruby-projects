dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(text, dictionary)
  downcased_text_array = text.downcase.split(' ')

  dictionary.map(&:downcase).reduce(Hash.new(0)) do |tally, substring|
    downcased_text_array.each do |string|
      tally[substring] += 1 if string.include? substring
    end
    tally
  end
end

loop do
  print "Scanning Text: "
  scanning_text = gets.chomp

  puts "=> #{substrings(scanning_text, dictionary)}"

  print "Continue? [Y/n] "
  continue_response = gets.chomp
  break unless continue_response.downcase == 'y'
end
