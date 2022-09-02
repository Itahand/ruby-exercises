dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(strings, dictionary)

  result = Hash.new(0)
  # Change everything to lowercase
  lowered_strings = strings.downcase

  dictionary.each do |word|
    # Iterate through the strings and compare each to the word from dictionary
    # The amount of times a string matches with the word is returned as a variable
    matches = lowered_strings.scan(word).length
    # If the amount is not 0 it is added to the result.
    result[word] = matches unless matches == 0
  end
  puts result
  return result
end


substrings("below low down", dictionary)